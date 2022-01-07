; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_sqrt.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_sqrt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @secp256k1_fe_sqrt(i32* %5, i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @CHECK(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = call i32 @secp256k1_fe_negate(i32* %6, i32* %5, i32 1)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @secp256k1_fe_add(i32* %5, i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @secp256k1_fe_add(i32* %6, i32* %25)
  %27 = call i32 @secp256k1_fe_normalize(i32* %5)
  %28 = call i32 @secp256k1_fe_normalize(i32* %6)
  %29 = call i64 @secp256k1_fe_is_zero(i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = call i64 @secp256k1_fe_is_zero(i32* %6)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %21
  %35 = phi i1 [ true, %21 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  br label %38

38:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @secp256k1_fe_sqrt(i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_fe_negate(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_fe_add(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_normalize(i32*) #1

declare dso_local i64 @secp256k1_fe_is_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
