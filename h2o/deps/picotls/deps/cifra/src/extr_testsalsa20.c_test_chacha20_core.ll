; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_chacha20_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_chacha20_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"expand 32-byte k\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"76b8e0ada0f13d90405d6ae55386bd28bdd219b8a08ded1aa836efcc8b770dc7da41597c5157488d7724e03fb8d84a376a43b8f41518a11cc387b669\00", align 1
@.str.2 = private unnamed_addr constant [121 x i8] c"4540f05a9f1fb296d7736e7b208e3c96eb4fe1834688d2604f450952ed432d41bbe2a0b6ea7566d2a5d1e7e20d42af2c53d792b1c43fea817e9ad275\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"de9cba7bf3d69ef5e786dc63973f653a0b49e015adbff7134fcb7df137821031e85a050278a7084527214f73efc7fa5b5277062eb7a0433e445f41e3\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"ef3fdfd6c61578fbf5cf35bd3dd33b8009631634d21e42ac33960bd138e50d32111e4caf237ee53ca8ad6426194a88545ddc497a0b466e7d6bbdb0041b2f586b\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"000102030405060708090a0b0c0d0e0f\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"101112131415161718191a1b1c1d1e1f\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"00000000000000000001020304050607\00", align 1
@.str.8 = private unnamed_addr constant [129 x i8] c"f798a189f195e66982105ffb640bb7757f579da31602fc93ec01ac56f85ac3c134a4547b733b46413042c9440049176905d3be59ea1c53f15916155c2be8241a\00", align 1
@.str.9 = private unnamed_addr constant [129 x i8] c"38008b9a26bc35941e2444177c8ade6689de95264986d95889fb60e84629c9bd9a5acb1cc118be563eb9b3a4a472f82e09a7e778492b562ef7130e88dfe031c7\00", align 1
@.str.10 = private unnamed_addr constant [129 x i8] c"9db9d4f7c7a899151b9a475032b63fc385245fe054e3dd5a97a5f576fe064025d3ce042c566ab2c507b138db853e3d6959660996546cc9c4a6eafdc777c040d7\00", align 1
@.str.11 = private unnamed_addr constant [129 x i8] c"0eaf46f76dad3979e5c5360c3317166a1c894c94a371876a94df7628fe4eaaf2ccb27d5aaae0ad7ad0f9d4b6ad3b54098746d4524d38407a6deb3ab78fab78c9\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_chacha20_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chacha20_core() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca [64 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %7 = call i32 @memset(i32* %6, i32 0, i32 64)
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %9 = call i32 @memset(i32* %8, i32 0, i32 64)
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %11 = call i32 @memset(i32* %10, i32 0, i32 64)
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %16 = call i32 @cf_chacha20_core(i32* %12, i32* %13, i32* %14, i32* bitcast ([17 x i8]* @.str to i32*), i32* %15)
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %18 = call i32 @unhex(i32* %17, i32 60, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %21 = call i64 @memcmp(i32* %19, i32* %20, i32 60)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_CHECK(i32 %23)
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 15
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %30 = call i32 @cf_chacha20_core(i32* %26, i32* %27, i32* %28, i32* bitcast ([17 x i8]* @.str to i32*), i32* %29)
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %32 = call i32 @unhex(i32* %31, i32 60, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %35 = call i64 @memcmp(i32* %33, i32* %34, i32 60)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_CHECK(i32 %37)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 64)
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 15
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %46 = call i32 @cf_chacha20_core(i32* %42, i32* %43, i32* %44, i32* bitcast ([17 x i8]* @.str to i32*), i32* %45)
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %48 = call i32 @unhex(i32* %47, i32 60, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0))
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %51 = call i64 @memcmp(i32* %49, i32* %50, i32 60)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_CHECK(i32 %53)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %56 = call i32 @memset(i32* %55, i32 0, i32 64)
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 8
  store i32 1, i32* %57, align 16
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %62 = call i32 @cf_chacha20_core(i32* %58, i32* %59, i32* %60, i32* bitcast ([17 x i8]* @.str to i32*), i32* %61)
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %64 = call i32 @unhex(i32* %63, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0))
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %67 = call i64 @memcmp(i32* %65, i32* %66, i32 64)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_CHECK(i32 %69)
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %72 = call i32 @unhex(i32* %71, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %74 = call i32 @unhex(i32* %73, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %76 = call i32 @unhex(i32* %75, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %81 = call i32 @cf_chacha20_core(i32* %77, i32* %78, i32* %79, i32* bitcast ([17 x i8]* @.str to i32*), i32* %80)
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %83 = call i32 @unhex(i32* %82, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.8, i64 0, i64 0))
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %86 = call i64 @memcmp(i32* %84, i32* %85, i32 64)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @TEST_CHECK(i32 %88)
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 16
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %97 = call i32 @cf_chacha20_core(i32* %93, i32* %94, i32* %95, i32* bitcast ([17 x i8]* @.str to i32*), i32* %96)
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %99 = call i32 @unhex(i32* %98, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.9, i64 0, i64 0))
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %101 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %102 = call i64 @memcmp(i32* %100, i32* %101, i32 64)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @TEST_CHECK(i32 %104)
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 16
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %113 = call i32 @cf_chacha20_core(i32* %109, i32* %110, i32* %111, i32* bitcast ([17 x i8]* @.str to i32*), i32* %112)
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %115 = call i32 @unhex(i32* %114, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.10, i64 0, i64 0))
  %116 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %118 = call i64 @memcmp(i32* %116, i32* %117, i32 64)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @TEST_CHECK(i32 %120)
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 16
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %129 = call i32 @cf_chacha20_core(i32* %125, i32* %126, i32* %127, i32* bitcast ([17 x i8]* @.str to i32*), i32* %128)
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %131 = call i32 @unhex(i32* %130, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.11, i64 0, i64 0))
  %132 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %134 = call i64 @memcmp(i32* %132, i32* %133, i32 64)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @TEST_CHECK(i32 %136)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cf_chacha20_core(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
