; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat-macros_estimateDiv128To64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat-macros_estimateDiv128To64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @estimateDiv128To64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateDiv128To64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @LIT64(i32 -1)
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @LIT64(i32 0)
  store i32 %28, i32* %14, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @do_div(i32 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 32
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @mul64To128(i32 %37, i32 %38, i32* %12, i32* %13)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @sub128(i32 %40, i32 %41, i32 %42, i32 %43, i32* %10, i32* %11)
  br label %45

45:                                               ; preds = %49, %36
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = call i32 @LIT64(i32 0)
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @add128(i32 %55, i32 %56, i32 %57, i32 %58, i32* %10, i32* %11)
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 32
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 32
  %65 = or i32 %62, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 32
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, -1
  store i32 %72, i32* %14, align 4
  br label %80

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @do_div(i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
