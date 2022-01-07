; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha512_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testdrbg.c_test_hmacdrbg_sha512_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"48c121b18733af15c27e1dd9ba66a9a81a5579cdba0f5b657ec53c2b9e90bbf6\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bbb7c777428068fad9970891f879b1af\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"e0ffefdadb9ccf990504d568bdb4d862cbe17ccce6e22dfcab8b4804fd21421a\00", align 1
@.str.3 = private unnamed_addr constant [513 x i8] c"05da6aac7d980da038f65f392841476d37fe70fbd3e369d1f80196e66e54b8fadb1d60e1a0f3d4dc173769d75fc3410549d7a843270a54a068b4fe767d7d9a59604510a875ad1e9731c8afd0fd50b825e2c50d062576175106a9981be37e02ec7c5cd0a69aa0ca65bddaee1b0de532e10cfa1f5bf6a026e47379736a099d6750ab121dbe3622b841baf8bdcbe875c85ba4b586b8b5b57b0fecbec08c12ff2a9453c47c6e32a52103d972c62ab9affb8e728a31fcefbbccc556c0f0a35f4b10ace2d96b906e36cbb72233201e536d3e13b045187b417d2449cad1edd192e061f12d22147b0a176ea8d9c4c35404395b6502ef333a813b6586037479e0fa3c6a23\00", align 1
@cf_sha512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmacdrbg_sha512_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmacdrbg_sha512_vector() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %8 = call i32 @unhex(i32* %7, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %10 = call i32 @unhex(i32* %9, i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %12 = call i32 @unhex(i32* %11, i32 128, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %14 = call i32 @unhex(i32* %13, i32 1024, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.3, i64 0, i64 0))
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %17 = call i32 @cf_hmac_drbg_init(i32* %6, i32* @cf_sha512, i32* %15, i32 128, i32* %16, i32 64, i32* null, i32 0)
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %19 = call i32 @cf_hmac_drbg_reseed(i32* %6, i32* %18, i32 128, i32* null, i32 0)
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %21 = call i32 @cf_hmac_drbg_gen(i32* %6, i32* %20, i32 1024)
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %23 = call i32 @cf_hmac_drbg_gen(i32* %6, i32* %22, i32 1024)
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %26 = call i64 @memcmp(i32* %24, i32* %25, i32 1024)
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
