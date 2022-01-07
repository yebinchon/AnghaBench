; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_chacha20.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_chacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0001020304050607\00", align 1
@.str.2 = private unnamed_addr constant [513 x i8] c"f798a189f195e66982105ffb640bb7757f579da31602fc93ec01ac56f85ac3c134a4547b733b46413042c9440049176905d3be59ea1c53f15916155c2be8241a38008b9a26bc35941e2444177c8ade6689de95264986d95889fb60e84629c9bd9a5acb1cc118be563eb9b3a4a472f82e09a7e778492b562ef7130e88dfe031c79db9d4f7c7a899151b9a475032b63fc385245fe054e3dd5a97a5f576fe064025d3ce042c566ab2c507b138db853e3d6959660996546cc9c4a6eafdc777c040d70eaf46f76dad3979e5c5360c3317166a1c894c94a371876a94df7628fe4eaaf2ccb27d5aaae0ad7ad0f9d4b6ad3b54098746d4524d38407a6deb3ab78fab78c9\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_chacha20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chacha20() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %7 = call i32 @unhex(i32* %6, i32 32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %9 = call i32 @unhex(i32* %8, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %11 = call i32 @unhex(i32* %10, i32 256, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.2, i64 0, i64 0))
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 256)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %16 = call i32 @cf_chacha20_init(i32* %5, i32* %14, i32 128, i32* %15)
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %19 = call i32 @cf_chacha20_cipher(i32* %5, i32* %17, i32* %18, i32 1024)
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %22 = call i64 @memcmp(i32* %20, i32* %21, i32 1024)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST_CHECK(i32 %24)
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %28 = call i32 @cf_chacha20_init(i32* %5, i32* %26, i32 16, i32* %27)
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %31 = call i32 @cf_chacha20_cipher(i32* %5, i32* %29, i32* %30, i32 1024)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cf_chacha20_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cf_chacha20_cipher(i32*, i32*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
