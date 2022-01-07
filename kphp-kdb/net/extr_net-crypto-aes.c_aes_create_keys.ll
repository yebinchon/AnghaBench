; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_create_keys.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_create_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_key_data = type { i64, i64, i64, i64 }

@MAX_PWD_LEN = common dso_local global i32 0, align 4
@pwd_len = common dso_local global i32 0, align 4
@MIN_PWD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Client\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@pwd_buf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_create_keys(%struct.aes_key_data* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i16 zeroext %6, i8* %7, i32 %8, i16 zeroext %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.aes_key_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.aes_key_data* %0, %struct.aes_key_data** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i16 %6, i16* %19, align 2
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i16 %9, i16* %22, align 2
  store i8* %10, i8** %23, align 8
  %28 = load i32, i32* @MAX_PWD_LEN, align 4
  %29 = add nsw i32 54, %28
  %30 = add nsw i32 %29, 16
  %31 = add nsw i32 %30, 16
  %32 = add nsw i32 %31, 4
  %33 = add nsw i32 %32, 32
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = load i32, i32* @pwd_len, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %11
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %27, align 4
  br label %171

40:                                               ; preds = %11
  %41 = load i32, i32* @pwd_len, align 4
  %42 = load i32, i32* @MIN_PWD_LEN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @pwd_len, align 4
  %46 = load i32, i32* @MAX_PWD_LEN, align 4
  %47 = icmp sle i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 (i8*, ...) @memcpy(i8* %36, i8* %52, i32 16)
  %54 = getelementptr inbounds i8, i8* %36, i64 16
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 (i8*, ...) @memcpy(i8* %54, i8* %55, i32 16)
  %57 = load i32, i32* %17, align 4
  %58 = getelementptr inbounds i8, i8* %36, i64 32
  %59 = bitcast i8* %58 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %18, align 4
  %61 = getelementptr inbounds i8, i8* %36, i64 36
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  %63 = load i16, i16* %22, align 2
  %64 = getelementptr inbounds i8, i8* %36, i64 40
  %65 = bitcast i8* %64 to i16*
  store i16 %63, i16* %65, align 2
  %66 = getelementptr inbounds i8, i8* %36, i64 42
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %71 = call i32 (i8*, ...) @memcpy(i8* %66, i8* %70, i32 6)
  %72 = load i32, i32* %21, align 4
  %73 = getelementptr inbounds i8, i8* %36, i64 48
  %74 = bitcast i8* %73 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i16, i16* %19, align 2
  %76 = getelementptr inbounds i8, i8* %36, i64 52
  %77 = bitcast i8* %76 to i16*
  store i16 %75, i16* %77, align 2
  %78 = getelementptr inbounds i8, i8* %36, i64 54
  %79 = load i8*, i8** @pwd_buf, align 8
  %80 = load i32, i32* @pwd_len, align 4
  %81 = call i32 (i8*, ...) @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = getelementptr inbounds i8, i8* %36, i64 54
  %83 = load i32, i32* @pwd_len, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 (i8*, ...) @memcpy(i8* %85, i8* %86, i32 16)
  %88 = load i32, i32* @pwd_len, align 4
  %89 = add nsw i32 70, %88
  store i32 %89, i32* %26, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %48
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %26, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %36, i64 %99
  %101 = load i8*, i8** %23, align 8
  %102 = call i32 (i8*, ...) @memcpy(i8* %100, i8* %101, i32 16)
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %36, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 16
  %107 = load i8*, i8** %20, align 8
  %108 = call i32 (i8*, ...) @memcpy(i8* %106, i8* %107, i32 16)
  %109 = load i32, i32* %26, align 4
  %110 = add nsw i32 %109, 32
  store i32 %110, i32* %26, align 4
  br label %114

111:                                              ; preds = %48
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %111, %92
  %115 = load i32, i32* %26, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %36, i64 %116
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 (i8*, ...) @memcpy(i8* %117, i8* %118, i32 16)
  %120 = load i32, i32* %26, align 4
  %121 = add nsw i32 %120, 16
  store i32 %121, i32* %26, align 4
  %122 = getelementptr inbounds i8, i8* %36, i64 4
  %123 = load i32, i32* %26, align 4
  %124 = sub nsw i32 %123, 4
  %125 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %126 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @md5(i8* %122, i32 %124, i64 %127)
  %129 = load i32, i32* %26, align 4
  %130 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %131 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 12
  %134 = call i32 @SHA1(i8* %36, i32 %129, i64 %133)
  %135 = getelementptr inbounds i8, i8* %36, i64 2
  %136 = load i32, i32* %26, align 4
  %137 = sub nsw i32 %136, 2
  %138 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %139 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @md5(i8* %135, i32 %137, i64 %140)
  %142 = getelementptr inbounds i8, i8* %36, i64 42
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %148 = call i32 (i8*, ...) @memcpy(i8* %142, i8* %147, i32 6)
  %149 = getelementptr inbounds i8, i8* %36, i64 4
  %150 = load i32, i32* %26, align 4
  %151 = sub nsw i32 %150, 4
  %152 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %153 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @md5(i8* %149, i32 %151, i64 %154)
  %156 = load i32, i32* %26, align 4
  %157 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %158 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 12
  %161 = call i32 @SHA1(i8* %36, i32 %156, i64 %160)
  %162 = getelementptr inbounds i8, i8* %36, i64 2
  %163 = load i32, i32* %26, align 4
  %164 = sub nsw i32 %163, 2
  %165 = load %struct.aes_key_data*, %struct.aes_key_data** %13, align 8
  %166 = getelementptr inbounds %struct.aes_key_data, %struct.aes_key_data* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @md5(i8* %162, i32 %164, i64 %167)
  %169 = load i32, i32* %26, align 4
  %170 = call i32 @memset(i8* %36, i32 0, i32 %169)
  store i32 1, i32* %12, align 4
  store i32 1, i32* %27, align 4
  br label %171

171:                                              ; preds = %114, %39
  %172 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %12, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, ...) #2

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
