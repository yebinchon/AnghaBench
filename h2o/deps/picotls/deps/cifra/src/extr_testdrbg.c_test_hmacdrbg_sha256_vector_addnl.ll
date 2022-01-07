; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha256_vector_addnl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha256_vector_addnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"05ac9fc4c62a02e3f90840da5616218c6de5743d66b8e0fbf833759c5928b53d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"2b89a17904922ed8f017a63044848545\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"2791126b8b52ee1fd9392a0a13e0083bed4186dc649b739607ac70ec8dcecf9b\00", align 1
@.str.3 = private unnamed_addr constant [257 x i8] c"02ddff5173da2fcffa10215b030d660d61179e61ecc22609b1151a75f1cbcbb4363c3a89299b4b63aca5e581e73c860491010aa35de3337cc6c09ebec8c91a6287586f3a74d9694b462d2720ea2e11bbd02af33adefb4a16e6b370fa0effd57d607547bdcfbb7831f54de7073ad2a7da987a0016a82fa958779a168674b56524\00", align 1
@cf_sha256 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"43bac13bae715092cf7eb280a2e10a962faf7233c41412f69bc74a35a584e54c\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"3f2fed4b68d506ecefa21f3f5bb907beb0f17dbc30f6ffbba5e5861408c53a1e\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"529030df50f410985fde068df82b935ec23d839cb4b269414c0ede6cffea5b68\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmacdrbg_sha256_vector_addnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmacdrbg_sha256_vector_addnl() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %9 = call i32 @unhex(i32* %8, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %11 = call i32 @unhex(i32* %10, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %13 = call i32 @unhex(i32* %12, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %15 = call i32 @unhex(i32* %14, i32 512, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %18 = call i32 @cf_hmac_drbg_init(i32* %7, i32* @cf_sha256, i32* %16, i32 128, i32* %17, i32 64, i32* null, i32 0)
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %20 = call i32 @unhex(i32* %19, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %23 = call i32 @cf_hmac_drbg_reseed(i32* %7, i32* %21, i32 128, i32* %22, i32 128)
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %25 = call i32 @unhex(i32* %24, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %28 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %26, i32 128, i32* %27, i32 512)
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %30 = call i32 @unhex(i32* %29, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %33 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %31, i32 128, i32* %32, i32 512)
  %34 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %36 = call i64 @memcmp(i32* %34, i32* %35, i32 512)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_CHECK(i32 %38)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_hmac_drbg_init(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hmac_drbg_reseed(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_hmac_drbg_gen_additional(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
