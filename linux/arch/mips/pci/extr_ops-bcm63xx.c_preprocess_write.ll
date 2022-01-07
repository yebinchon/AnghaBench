; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-bcm63xx.c_preprocess_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-bcm63xx.c_preprocess_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @preprocess_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preprocess_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %41 [
    i32 1, label %11
    i32 2, label %25
    i32 4, label %39
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  %15 = shl i32 %14, 3
  %16 = shl i32 255, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = shl i32 %21, 3
  %23 = shl i32 %19, %22
  %24 = or i32 %18, %23
  store i32 %24, i32* %9, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 3
  %30 = shl i32 65535, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %26, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 3
  %37 = shl i32 %33, %36
  %38 = or i32 %32, %37
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %4, %39, %25, %11
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
