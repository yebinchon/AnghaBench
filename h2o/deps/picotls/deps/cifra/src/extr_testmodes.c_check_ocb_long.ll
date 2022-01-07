; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ocb_long.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ocb_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @check_ocb_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ocb_long(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [22400 x i64], align 16
  %8 = alloca [32 x i64], align 16
  %9 = alloca [128 x i64], align 16
  %10 = alloca [12 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [16 x i64], align 16
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = bitcast [128 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  %16 = bitcast [12 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 96, i1 false)
  store i64 0, i64* %11, align 8
  %17 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %18 = call i32 @memset(i64* %17, i32 0, i32 256)
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, 8
  %21 = load i64, i64* %4, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 %22
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @cf_aes_init(i32* %12, i64* %24, i64 %25)
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %103, %3
  %28 = load i64, i64* %13, align 8
  %29 = icmp ult i64 %28, 128
  br i1 %29, label %30, label %106

30:                                               ; preds = %27
  %31 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %32 = call i32 @memset(i64* %31, i32 0, i32 96)
  %33 = load i64, i64* %13, align 8
  %34 = mul i64 3, %33
  %35 = add i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %38 = getelementptr inbounds i64, i64* %37, i64 8
  %39 = call i32 @write32_be(i32 %36, i64* %38)
  %40 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @cf_ocb_encrypt(i32* @cf_aes, i32* %12, i64* %40, i64 %41, i64* %42, i64 %43, i64* %44, i32 96, i64* %47, i64* %52, i64 %53)
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = mul i64 3, %60
  %62 = add i64 %61, 2
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %65 = getelementptr inbounds i64, i64* %64, i64 8
  %66 = call i32 @write32_be(i32 %63, i64* %65)
  %67 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @cf_ocb_encrypt(i32* @cf_aes, i32* %12, i64* %67, i64 %68, i64* null, i64 0, i64* %69, i32 96, i64* %72, i64* %77, i64 %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %80, %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %13, align 8
  %86 = mul i64 3, %85
  %87 = add i64 %86, 3
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %90 = getelementptr inbounds i64, i64* %89, i64 8
  %91 = call i32 @write32_be(i32 %88, i64* %90)
  %92 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @cf_ocb_encrypt(i32* @cf_aes, i32* %12, i64* null, i64 0, i64* %92, i64 %93, i64* %94, i32 96, i64* null, i64* %97, i64 %98)
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %11, align 8
  br label %103

103:                                              ; preds = %30
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  br label %27

106:                                              ; preds = %27
  %107 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %108 = getelementptr inbounds i64, i64* %107, i64 8
  %109 = call i32 @write32_be(i32 385, i64* %108)
  %110 = getelementptr inbounds [22400 x i64], [22400 x i64]* %7, i64 0, i64 0
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds [12 x i64], [12 x i64]* %10, i64 0, i64 0
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @cf_ocb_encrypt(i32* @cf_aes, i32* %12, i64* null, i64 0, i64* %110, i64 %111, i64* %112, i32 96, i64* null, i64* %113, i64 %114)
  %116 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @memcmp(i64* %116, i8* %117, i64 %118)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @TEST_CHECK(i32 %121)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @cf_aes_init(i32*, i64*, i64) #2

declare dso_local i32 @write32_be(i32, i64*) #2

declare dso_local i32 @cf_ocb_encrypt(i32*, i32*, i64*, i64, i64*, i64, i64*, i32, i64*, i64*, i64) #2

declare dso_local i32 @TEST_CHECK(i32) #2

declare dso_local i64 @memcmp(i64*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
