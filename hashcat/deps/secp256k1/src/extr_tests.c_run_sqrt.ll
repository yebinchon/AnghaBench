; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_sqrt.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_sqrt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @secp256k1_fe_set_int(i32* %2, i32 0)
  %8 = call i32 @secp256k1_fe_sqr(i32* %3, i32* %2)
  %9 = call i32 @test_sqrt(i32* %3, i32* %2)
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 100
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @secp256k1_fe_set_int(i32* %2, i32 %14)
  %16 = call i32 @secp256k1_fe_sqr(i32* %3, i32* %2)
  %17 = call i32 @test_sqrt(i32* %3, i32* %2)
  %18 = call i32 @secp256k1_fe_negate(i32* %4, i32* %3, i32 1)
  %19 = call i32 @test_sqrt(i32* %4, i32* null)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %10

23:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = call i32 @random_fe_non_square(i32* %1)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @count, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = call i32 @random_fe(i32* %2)
  %35 = call i32 @secp256k1_fe_sqr(i32* %3, i32* %2)
  %36 = call i32 @test_sqrt(i32* %3, i32* %2)
  %37 = call i32 @secp256k1_fe_negate(i32* %4, i32* %3, i32 1)
  %38 = call i32 @test_sqrt(i32* %4, i32* null)
  %39 = call i32 @secp256k1_fe_mul(i32* %4, i32* %3, i32* %1)
  %40 = call i32 @test_sqrt(i32* %4, i32* null)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %24

48:                                               ; preds = %24
  ret void
}

declare dso_local i32 @secp256k1_fe_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_fe_sqr(i32*, i32*) #1

declare dso_local i32 @test_sqrt(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_negate(i32*, i32*, i32) #1

declare dso_local i32 @random_fe_non_square(i32*) #1

declare dso_local i32 @random_fe(i32*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
