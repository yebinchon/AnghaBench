; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_apb_calc_first_last.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_apb_calc_first_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @apb_calc_first_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apb_calc_first_last(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 8, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
