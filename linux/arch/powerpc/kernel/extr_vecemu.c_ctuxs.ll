; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_ctuxs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_ctuxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VSCR_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ctuxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctuxs(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 23
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 8388607
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %55

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 127
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -2147483648
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @VSCR_SAT, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %55

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @VSCR_SAT, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  store i32 -1, i32* %4, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 8388608
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 31, %51
  %53 = lshr i32 %50, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %41, %33, %28, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
