; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_constants.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@secp256k1_ge_const_g = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecmult_constants() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @secp256k1_ge_neg(i32* %3, i32* @secp256k1_ge_const_g)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %35, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 36
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @secp256k1_scalar_set_int(i32* %1, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @secp256k1_ecmult_gen(i32* %14, i32* %2, i32* %1)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %10
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @ge_equals_gej(i32* @secp256k1_ge_const_g, i32* %2)
  br label %27

27:                                               ; preds = %25, %20
  %28 = call i32 @secp256k1_gej_add_ge(i32* %2, i32* %2, i32* %3)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

32:                                               ; preds = %16
  %33 = call i32 @secp256k1_gej_is_infinity(i32* %2)
  %34 = call i32 @CHECK(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %7

38:                                               ; preds = %7
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %40, 36
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @secp256k1_scalar_set_int(i32* %1, i32 %43)
  %45 = call i32 @secp256k1_scalar_negate(i32* %1, i32* %1)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @secp256k1_ecmult_gen(i32* %47, i32* %2, i32* %1)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %62, %42
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @ge_equals_gej(i32* %3, i32* %2)
  br label %60

60:                                               ; preds = %58, %53
  %61 = call i32 @secp256k1_gej_add_ge(i32* %2, i32* %2, i32* @secp256k1_ge_const_g)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %49

65:                                               ; preds = %49
  %66 = call i32 @secp256k1_gej_is_infinity(i32* %2)
  %67 = call i32 @CHECK(i32 %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %39

71:                                               ; preds = %39
  ret void
}

declare dso_local i32 @secp256k1_ge_neg(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #1

declare dso_local i32 @ge_equals_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge(i32*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_gej_is_infinity(i32*) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
