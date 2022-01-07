; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hashdrbg_sha256_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hashdrbg_sha256_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"b87bb4de5c148d964fc0cb612d69295671780b4270fe32bf389b6f49488efe13\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"27eb37a0c695c4ee3c9b70b7f6b33492\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"52321406ac8a9c266b1f8d811bb871269e5824b59a0234f01d358193523bbb7c\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"7638267f534c4e6ee22cc6ca6ed824fd5d3d387c00b89dd791eb5ac9766385b8\00", align 1
@.str.4 = private unnamed_addr constant [257 x i8] c"de01c061651bab3cef2fc4ea89a56b6e86e74b2e9fd11ed671c97c813778a06a2c1f41b41e754a5257750c6bde9601da9d67d8d9564f4a8538b92516a2dacc496dee257b85393f2a01ad59aa3257f1b6da9566e3706d2d6d4a26e511b0c64d7dc223acb24827178afa43ca8d5a66f983d6929dc61564c4c14fc32d85765a23f7\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"63363377e41e86468deb0ab4a8ed683f6a134e47e014c700454e81e95358a569\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"808aa38f2a72a62359915a9f8a04ca68\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"e62b8a8ee8f141b6980566e3bfe3c04903dad4ac2cdf9f2280010a6739bc83d3\00", align 1
@.str.8 = private unnamed_addr constant [257 x i8] c"04eec63bb231df2c630a1afbe724949d005a587851e1aa795e477347c8b056621c18bddcdd8d99fc5fc2b92053d8cfacfb0bb8831205fad1ddd6c071318a6018f03b73f5ede4d4d071f9de03fd7aea105d9299b8af99aa075bdb4db9aa28c18d174b56ee2a014d098896ff2282c955a81969e069fa8ce007a180183a07dfae17\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hashdrbg_sha256_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hashdrbg_sha256_vector() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [32 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca [128 x i32], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %9 = call i32 @unhex(i32* %8, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %11 = call i32 @unhex(i32* %10, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %13 = call i32 @unhex(i32* %12, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %15 = call i32 @unhex(i32* %14, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %17 = call i32 @unhex(i32* %16, i32 512, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %21 = call i32 @cf_hash_drbg_sha256_init(i32* %7, i32* %18, i32 128, i32* %19, i32 64, i32* %20, i32 128)
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %23 = call i32 @cf_hash_drbg_sha256_reseed(i32* %7, i32* %22, i32 128, i32* null, i32 0)
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %25 = call i32 @cf_hash_drbg_sha256_gen(i32* %7, i32* %24, i32 512)
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %27 = call i32 @cf_hash_drbg_sha256_gen(i32* %7, i32* %26, i32 512)
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %30 = call i64 @memcmp(i32* %28, i32* %29, i32 512)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @TEST_CHECK(i32 %32)
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %35 = call i32 @unhex(i32* %34, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %37 = call i32 @unhex(i32* %36, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %39 = call i32 @unhex(i32* %38, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %41 = call i32 @unhex(i32* %40, i32 512, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.8, i64 0, i64 0))
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %44 = call i32 @cf_hash_drbg_sha256_init(i32* %7, i32* %42, i32 128, i32* %43, i32 64, i32* null, i32 0)
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %46 = call i32 @cf_hash_drbg_sha256_reseed(i32* %7, i32* %45, i32 128, i32* null, i32 0)
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %48 = call i32 @cf_hash_drbg_sha256_gen(i32* %7, i32* %47, i32 512)
  %49 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %50 = call i32 @cf_hash_drbg_sha256_gen(i32* %7, i32* %49, i32 512)
  %51 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %53 = call i64 @memcmp(i32* %51, i32* %52, i32 512)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_CHECK(i32 %55)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_hash_drbg_sha256_init(i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hash_drbg_sha256_reseed(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hash_drbg_sha256_gen(i32*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
