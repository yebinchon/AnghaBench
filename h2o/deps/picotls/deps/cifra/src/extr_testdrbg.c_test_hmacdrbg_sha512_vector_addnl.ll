; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha512_vector_addnl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha512_vector_addnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"4686a959e17dfb96c294b09c0f7a60efb386416cfb4c8972bcc55e44a151607a\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"5226543b4c89321bbfb0f11f18ee3462\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"5ef50daaf29929047870235c17762f5df5d9ab1af656e0e215fcc6fd9fc0d85d\00", align 1
@.str.3 = private unnamed_addr constant [513 x i8] c"b60d8803531b2b8583d17bdf3ac7c01f3c65cf9b069862b2d39b9024b34c172b712db0704acb078a1ab1aec0390dbaee2dec9be7b234e63da481fd469a92c77bc7bb2cfca586855520e0f9e9d47dcb9bdf2a2fdfa9f2b4342ef0ea582616b55477717cfd516d46d6383257743656f7cf8b38402ba795a8c9d35a4aa88bec623313dad6ead689d152b54074f183b2fee556f554db343626cea853718f18d386bc8bebb0c07b3c5e96ceb391ffceece88864dbd3be83a613562c5c417a24807d5f9332974f045e79a9ade36994af6cf9bbeeb71d0025fcb4ad50f121cbc2df7cd12ff5a50cddfd9a4bbc6d942d743c8b8fbebe00eeccea3d14e07ff8454fa715da\00", align 1
@cf_sha512 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"d2383c3e528492269e6c3b3aaa2b54fbf48731f5aa52150ce7fc644679a5e7c6\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"c841e7a2d9d13bdb8644cd7f5d91d241a369e12dc6c9c2be50d1ed29484bff98\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"9054cf9216af66a788d3bf6757b8987e42d4e49b325e728dc645d5e107048245\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmacdrbg_sha512_vector_addnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmacdrbg_sha512_vector_addnl() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca [256 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %9 = call i32 @unhex(i32* %8, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %11 = call i32 @unhex(i32* %10, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %13 = call i32 @unhex(i32* %12, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %15 = call i32 @unhex(i32* %14, i32 1024, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %18 = call i32 @cf_hmac_drbg_init(i32* %7, i32* @cf_sha512, i32* %16, i32 128, i32* %17, i32 64, i32* null, i32 0)
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %20 = call i32 @unhex(i32* %19, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %23 = call i32 @cf_hmac_drbg_reseed(i32* %7, i32* %21, i32 128, i32* %22, i32 128)
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %25 = call i32 @unhex(i32* %24, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %28 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %26, i32 128, i32* %27, i32 1024)
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %30 = call i32 @unhex(i32* %29, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %33 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %31, i32 128, i32* %32, i32 1024)
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %36 = call i64 @memcmp(i32* %34, i32* %35, i32 1024)
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
