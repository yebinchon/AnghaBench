; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_create_udp_keys.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_create_udp_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_key_data = type { i64, i64, i64, i64 }
%struct.process_id = type opaque

@MAX_PWD_LEN = common dso_local global i32 0, align 4
@pwd_len = common dso_local global i32 0, align 4
@MIN_PWD_LEN = common dso_local global i32 0, align 4
@pwd_buf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_create_udp_keys(%struct.aes_key_data* %0, %struct.process_id* %1, %struct.process_id* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aes_key_data*, align 8
  %7 = alloca %struct.process_id*, align 8
  %8 = alloca %struct.process_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aes_key_data* %0, %struct.aes_key_data** %6, align 8
  store %struct.process_id* %1, %struct.process_id** %7, align 8
  store %struct.process_id* %2, %struct.process_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @MAX_PWD_LEN, align 4
  %15 = add nsw i32 54, %14
  %16 = add nsw i32 %15, 16
  %17 = add nsw i32 %16, 16
  %18 = add nsw i32 %17, 4
  %19 = add nsw i32 %18, 32
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @pwd_len, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

26:                                               ; preds = %4
  %27 = load i32, i32* @pwd_len, align 4
  %28 = load i32, i32* @MIN_PWD_LEN, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @pwd_len, align 4
  %32 = load i32, i32* @MAX_PWD_LEN, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.process_id*, %struct.process_id** %7, align 8
  %39 = bitcast %struct.process_id* %38 to i32*
  %40 = call i32 @memcpy(i8* %22, i32* %39, i32 12)
  %41 = getelementptr inbounds i8, i8* %22, i64 12
  %42 = load i32*, i32** @pwd_buf, align 8
  %43 = load i32, i32* @pwd_len, align 4
  %44 = call i32 @memcpy(i8* %41, i32* %42, i32 %43)
  %45 = getelementptr inbounds i8, i8* %22, i64 12
  %46 = load i32, i32* @pwd_len, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load %struct.process_id*, %struct.process_id** %8, align 8
  %50 = bitcast %struct.process_id* %49 to i32*
  %51 = call i32 @memcpy(i8* %48, i32* %50, i32 12)
  %52 = getelementptr inbounds i8, i8* %22, i64 24
  %53 = load i32, i32* @pwd_len, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @memcpy(i8* %55, i32* %9, i32 4)
  %57 = load i32, i32* @pwd_len, align 4
  %58 = add nsw i32 28, %57
  store i32 %58, i32* %12, align 4
  %59 = getelementptr inbounds i8, i8* %22, i64 3
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 3
  %62 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %63 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @md5(i8* %59, i32 %61, i64 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %68 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 12
  %71 = call i32 @SHA1(i8* %22, i32 %66, i64 %70)
  %72 = getelementptr inbounds i8, i8* %22, i64 5
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 5
  %75 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %76 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @md5(i8* %72, i32 %74, i64 %77)
  %79 = load %struct.process_id*, %struct.process_id** %8, align 8
  %80 = bitcast %struct.process_id* %79 to i32*
  %81 = call i32 @memcpy(i8* %22, i32* %80, i32 12)
  %82 = getelementptr inbounds i8, i8* %22, i64 12
  %83 = load i32, i32* @pwd_len, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load %struct.process_id*, %struct.process_id** %7, align 8
  %87 = bitcast %struct.process_id* %86 to i32*
  %88 = call i32 @memcpy(i8* %85, i32* %87, i32 12)
  %89 = getelementptr inbounds i8, i8* %22, i64 3
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 3
  %92 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %93 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @md5(i8* %89, i32 %91, i64 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %98 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 12
  %101 = call i32 @SHA1(i8* %22, i32 %96, i64 %100)
  %102 = getelementptr inbounds i8, i8* %22, i64 5
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %103, 5
  %105 = load %struct.aes_key_data*, %struct.aes_key_data** %6, align 8
  %106 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @md5(i8* %102, i32 %104, i64 %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @memset(i8* %22, i32 0, i32 %109)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %34, %25
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @md5(i8*, i32, i64) #2

declare dso_local i32 @SHA1(i8*, i32, i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
