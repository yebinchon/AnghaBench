; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_r_from_k.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_r_from_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EXHAUSTIVE_TEST_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_from_k(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EXHAUSTIVE_TEST_ORDER, align 4
  %10 = load i32, i32* %6, align 4
  %11 = srem i32 %10, %9
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = call i32 @secp256k1_fe_normalize(i32* %7)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %20 = call i32 @secp256k1_fe_get_b32(i8* %19, i32* %7)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %23 = call i32 @secp256k1_scalar_set_b32(i32* %21, i8* %22, i32* null)
  ret void
}

declare dso_local i32 @secp256k1_fe_normalize(i32*) #1

declare dso_local i32 @secp256k1_fe_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
