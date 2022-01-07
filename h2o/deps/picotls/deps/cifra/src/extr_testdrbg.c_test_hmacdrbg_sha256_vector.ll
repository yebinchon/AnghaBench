; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha256_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha256_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"06032cd5eed33f39265f49ecb142c511da9aff2af71203bffaf34a9ca5bd9c0d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"0e66f71edc43e42a45ad3c6fc6cdc4df\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"01920a4e669ed3a85ae8a33b35a74ad7fb2a6bb4cf395ce00334a9c9a5a5d552\00", align 1
@.str.3 = private unnamed_addr constant [257 x i8] c"76fc79fe9b50beccc991a11b5635783a83536add03c157fb30645e611c2898bb2b1bc215000209208cd506cb28da2a51bdb03826aaf2bd2335d576d519160842e7158ad0949d1a9ec3e66ea1b1a064b005de914eac2e9d4f2d72a8616a80225422918250ff66a41bd2f864a6a38cc5b6499dc43f7f2bd09e1e0f8f5885935124\00", align 1
@cf_sha256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmacdrbg_sha256_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmacdrbg_sha256_vector() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %8 = call i32 @unhex(i32* %7, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %10 = call i32 @unhex(i32* %9, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %12 = call i32 @unhex(i32* %11, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %13 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %14 = call i32 @unhex(i32* %13, i32 512, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.3, i64 0, i64 0))
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %17 = call i32 @cf_hmac_drbg_init(i32* %6, i32* @cf_sha256, i32* %15, i32 128, i32* %16, i32 64, i32* null, i32 0)
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %19 = call i32 @cf_hmac_drbg_reseed(i32* %6, i32* %18, i32 128, i32* null, i32 0)
  %20 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %21 = call i32 @cf_hmac_drbg_gen(i32* %6, i32* %20, i32 512)
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %23 = call i32 @cf_hmac_drbg_gen(i32* %6, i32* %22, i32 512)
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %26 = call i64 @memcmp(i32* %24, i32* %25, i32 512)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_CHECK(i32 %28)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_hmac_drbg_init(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hmac_drbg_reseed(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hmac_drbg_gen(i32*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
