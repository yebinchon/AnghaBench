; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testcurve25519.c_test_mul.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testcurve25519.c_test_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mul() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [32 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [32 x i32], align 16
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %6 = call i32 @unhex(i32* %5, i32 32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %8 = call i32 @unhex(i32* %7, i32 32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %10 = call i32 @unhex(i32* %9, i32 32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %14 = call i32 @cf_curve25519_mul(i32* %11, i32* %12, i32* %13)
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %17 = call i64 @memcmp(i32* %15, i32* %16, i32 32)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_CHECK(i32 %19)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_curve25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
