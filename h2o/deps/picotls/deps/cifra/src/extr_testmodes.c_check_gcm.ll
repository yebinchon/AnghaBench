; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_gcm.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @check_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_gcm(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i64 %9, i8* %10, i64 %11) #0 {
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
  %25 = alloca [64 x i32], align 16
  %26 = alloca [64 x i32], align 16
  %27 = alloca [16 x i32], align 16
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
  %31 = load i64, i64* %16, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @cf_aes_init(i32* %28, i8* %35, i64 %36)
  %38 = load i8*, i8** %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i64, i64* %18, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = load i64, i64* %20, align 8
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 0
  %46 = load i64, i64* %24, align 8
  %47 = call i32 @cf_gcm_encrypt(i32* @cf_aes, i32* %28, i8* %38, i64 %39, i8* %40, i64 %41, i8* %42, i64 %43, i32* %44, i32* %45, i64 %46)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 0
  %49 = load i8*, i8** %23, align 8
  %50 = load i64, i64* %24, align 8
  %51 = call i64 @memcmp(i32* %48, i8* %49, i64 %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_CHECK(i32 %53)
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %56 = load i8*, i8** %21, align 8
  %57 = load i64, i64* %22, align 8
  %58 = call i64 @memcmp(i32* %55, i8* %56, i64 %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @TEST_CHECK(i32 %60)
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %63 = load i64, i64* %22, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = load i64, i64* %20, align 8
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 0
  %69 = load i64, i64* %24, align 8
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %71 = call i32 @cf_gcm_decrypt(i32* @cf_aes, i32* %28, i32* %62, i64 %63, i8* %64, i64 %65, i8* %66, i64 %67, i32* %68, i64 %69, i32* %70)
  store i32 %71, i32* %29, align 4
  %72 = load i32, i32* %29, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @TEST_CHECK(i32 %74)
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %77 = load i8*, i8** %15, align 8
  %78 = load i64, i64* %22, align 8
  %79 = call i64 @memcmp(i32* %76, i8* %77, i64 %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_CHECK(i32 %81)
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = xor i32 %84, 255
  store i32 %85, i32* %83, align 16
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0, i64 0
  %87 = load i64, i64* %22, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load i64, i64* %20, align 8
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 0
  %93 = load i64, i64* %24, align 8
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %95 = call i32 @cf_gcm_decrypt(i32* @cf_aes, i32* %28, i32* %86, i64 %87, i8* %88, i64 %89, i8* %90, i64 %91, i32* %92, i64 %93, i32* %94)
  store i32 %95, i32* %29, align 4
  %96 = load i32, i32* %29, align 4
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_CHECK(i32 %98)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

declare dso_local i32 @cf_gcm_encrypt(i32*, i32*, i8*, i64, i8*, i64, i8*, i64, i32*, i32*, i64) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @cf_gcm_decrypt(i32*, i32*, i32*, i64, i8*, i64, i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
