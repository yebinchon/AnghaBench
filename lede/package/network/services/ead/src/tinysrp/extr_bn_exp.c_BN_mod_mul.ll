; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_exp.c_BN_mod_mul.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_exp.c_BN_mod_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_mul(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @bn_check_top(i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @bn_check_top(i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @bn_check_top(i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @BN_CTX_start(i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32* @BN_CTX_get(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %55

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @BN_sqr(i32* %30, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %55

36:                                               ; preds = %29
  br label %46

37:                                               ; preds = %25
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @BN_mul(i32* %38, i32* %39, i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @BN_mod(i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %53, %44, %35, %24
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @BN_CTX_end(i32* %56)
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_sqr(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
