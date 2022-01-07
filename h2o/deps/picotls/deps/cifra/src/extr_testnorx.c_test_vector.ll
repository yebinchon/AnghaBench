; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testnorx.c_test_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testnorx.c_test_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"000102030405060708090a0b0c0d0e0f\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"f0e0d0c0b0a09080\00", align 1
@.str.2 = private unnamed_addr constant [257 x i8] c"f4afc8e66d2d80de0a7f719c899624c9ad896ec7c61739d5376d0648c7bcb204e57db05c6f83b3ff4315e8a4ef2f2c855f21ea4c51ac6de575773ba548f36e636a13b979d953bb91298ea4a6e2aa27402991e0da541997825407b2f12441de3ae6c5dbfe41b12f1480d234832765111e4c09deef9fe3971618d2217c4b77921e\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"7810131eea2eab1e5da05d23d4e3cb99\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_vector() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca [128 x i32], align 16
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca [128 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [128 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca [128 x i32], align 16
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %13 = call i32 @unhex(i32* %12, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %15 = call i32 @unhex(i32* %14, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %30, %0
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 128
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 %28
  store i32 %20, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %16

33:                                               ; preds = %16
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %36 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %41 = call i32 @cf_norx32_encrypt(i32* %34, i32* %35, i32* %36, i32 512, i32* %37, i32 512, i32* %38, i32 512, i32* %39, i32* %40)
  %42 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %43 = call i32 @unhex(i32* %42, i32 512, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.2, i64 0, i64 0))
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %45 = call i32 @unhex(i32* %44, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %46 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %48 = call i64 @memcmp(i32* %46, i32* %47, i32 512)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST_CHECK(i32 %50)
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %54 = call i64 @memcmp(i32* %52, i32* %53, i32 64)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST_CHECK(i32 %56)
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %60 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %62 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %64 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %65 = call i32 @cf_norx32_decrypt(i32* %58, i32* %59, i32* %60, i32 512, i32* %61, i32 512, i32* %62, i32 512, i32* %63, i32* %64)
  %66 = icmp eq i32 0, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST_CHECK(i32 %67)
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %70 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %71 = call i64 @memcmp(i32* %69, i32* %70, i32 512)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @TEST_CHECK(i32 %73)
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = xor i32 %76, 255
  store i32 %77, i32* %75, align 16
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %80 = getelementptr inbounds [128 x i32], [128 x i32]* %3, i64 0, i64 0
  %81 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %82 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %11, i64 0, i64 0
  %85 = call i32 @cf_norx32_decrypt(i32* %78, i32* %79, i32* %80, i32 512, i32* %81, i32 512, i32* %82, i32 512, i32* %83, i32* %84)
  %86 = call i32 @TEST_CHECK(i32 %85)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_norx32_encrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @cf_norx32_decrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
