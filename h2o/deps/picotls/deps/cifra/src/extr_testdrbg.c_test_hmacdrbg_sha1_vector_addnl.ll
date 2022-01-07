; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha1_vector_addnl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha1_vector_addnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"7d7052a776fd2fb3d7191f733304ee8b\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"be4a0ceedca80207\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"49047e879d610955eed916e4060e00c9\00", align 1
@.str.3 = private unnamed_addr constant [161 x i8] c"a736343844fc92511391db0addd9064dbee24c8976aa259a9e3b6368aa6de4c9bf3a0effcda9cb0e9dc33652ab58ecb7650ed80467f76a849fb1cfc1ed0a09f7155086064db324b1e124f3fc9e614fcb\00", align 1
@cf_sha1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"fd8bb33aab2f6cdfbc541811861d518d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"99afe347540461ddf6abeb491e0715b4\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"02f773482dd7ae66f76e381598a64ef0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmacdrbg_sha1_vector_addnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmacdrbg_sha1_vector_addnl() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca [80 x i32], align 16
  %5 = alloca [80 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %9 = call i32 @unhex(i32* %8, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %11 = call i32 @unhex(i32* %10, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %13 = call i32 @unhex(i32* %12, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 0
  %15 = call i32 @unhex(i32* %14, i32 320, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %18 = call i32 @cf_hmac_drbg_init(i32* %7, i32* @cf_sha1, i32* %16, i32 64, i32* %17, i32 32, i32* null, i32 0)
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %20 = call i32 @unhex(i32* %19, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %23 = call i32 @cf_hmac_drbg_reseed(i32* %7, i32* %21, i32 64, i32* %22, i32 64)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %25 = call i32 @unhex(i32* %24, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %28 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %26, i32 64, i32* %27, i32 320)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %30 = call i32 @unhex(i32* %29, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %33 = call i32 @cf_hmac_drbg_gen_additional(i32* %7, i32* %31, i32 64, i32* %32, i32 320)
  %34 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 0
  %36 = call i64 @memcmp(i32* %34, i32* %35, i32 320)
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
