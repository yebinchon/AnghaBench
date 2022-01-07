; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_s_mem_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_traps.c_s_mem_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @s_mem_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s_mem_to_reg(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = lshr i64 %8, 0
  %10 = and i64 %9, 8388607
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 31
  %13 = and i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = lshr i64 %14, 30
  %16 = and i64 %15, 1
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %2, align 8
  %18 = lshr i64 %17, 23
  %19 = and i64 %18, 127
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = shl i64 %20, 10
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 127
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 2047, i64* %7, align 8
  br label %30

30:                                               ; preds = %29, %26
  br label %39

31:                                               ; preds = %1
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  br label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, 896
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %34
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i64, i64* %4, align 8
  %41 = shl i64 %40, 63
  %42 = load i64, i64* %7, align 8
  %43 = shl i64 %42, 52
  %44 = or i64 %41, %43
  %45 = load i64, i64* %3, align 8
  %46 = shl i64 %45, 29
  %47 = or i64 %44, %46
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
