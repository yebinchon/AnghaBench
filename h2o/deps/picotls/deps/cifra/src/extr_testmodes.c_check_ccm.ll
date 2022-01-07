; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ccm.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @check_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ccm(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i64 %9, i8* %10, i64 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca [32 x i32], align 16
  %26 = alloca [16 x i32], align 16
  %27 = alloca [32 x i32], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i8* %6, i8** %19, align 8
  store i64 %7, i64* %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i8* %10, i8** %23, align 8
  store i64 %11, i64* %24, align 8
  %30 = load i64, i64* %22, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @cf_aes_init(i32* %28, i8* %35, i64 %36)
  %38 = load i8*, i8** %17, align 8
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %20, align 8
  %41 = sub i64 15, %40
  %42 = trunc i64 %41 to i32
  %43 = load i8*, i8** %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load i64, i64* %20, align 8
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 0
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %49 = load i64, i64* %24, align 8
  %50 = call i32 @cf_ccm_encrypt(i32* @cf_aes, i32* %28, i8* %38, i64 %39, i32 %42, i8* %43, i64 %44, i8* %45, i64 %46, i32* %47, i32* %48, i64 %49)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %52 = load i8*, i8** %23, align 8
  %53 = load i64, i64* %24, align 8
  %54 = call i64 @memcmp(i32* %51, i8* %52, i64 %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST_CHECK(i32 %56)
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %25, i64 0, i64 0
  %59 = load i8*, i8** %21, align 8
  %60 = load i64, i64* %22, align 8
  %61 = call i64 @memcmp(i32* %58, i8* %59, i64 %60)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_CHECK(i32 %63)
  %65 = load i8*, i8** %21, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* %20, align 8
  %68 = sub i64 15, %67
  %69 = trunc i64 %68 to i32
  %70 = load i8*, i8** %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %75 = load i64, i64* %24, align 8
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 0
  %77 = call i32 @cf_ccm_decrypt(i32* @cf_aes, i32* %28, i8* %65, i64 %66, i32 %69, i8* %70, i64 %71, i8* %72, i64 %73, i32* %74, i64 %75, i32* %76)
  store i32 %77, i32* %29, align 4
  %78 = load i32, i32* %29, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST_CHECK(i32 %80)
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 0
  %83 = load i8*, i8** %17, align 8
  %84 = load i64, i64* %18, align 8
  %85 = call i64 @memcmp(i32* %82, i8* %83, i64 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @TEST_CHECK(i32 %87)
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = xor i32 %90, 255
  store i32 %91, i32* %89, align 16
  %92 = load i8*, i8** %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %20, align 8
  %95 = sub i64 15, %94
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load i64, i64* %20, align 8
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %102 = load i64, i64* %24, align 8
  %103 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 0
  %104 = call i32 @cf_ccm_decrypt(i32* @cf_aes, i32* %28, i8* %92, i64 %93, i32 %96, i8* %97, i64 %98, i8* %99, i64 %100, i32* %101, i64 %102, i32* %103)
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %29, align 4
  %106 = icmp eq i32 %105, 1
  %107 = zext i1 %106 to i32
  %108 = call i32 @TEST_CHECK(i32 %107)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

declare dso_local i32 @cf_ccm_encrypt(i32*, i32*, i8*, i64, i32, i8*, i64, i8*, i64, i32*, i32*, i64) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @cf_ccm_decrypt(i32*, i32*, i8*, i64, i32, i8*, i64, i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
