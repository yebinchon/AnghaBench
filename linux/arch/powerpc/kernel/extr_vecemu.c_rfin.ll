; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_rfin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_rfin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rfin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = sub i32 %8, 127
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 8388607
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 4194304
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %12, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 23
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -2147483648
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -2147483648
  %36 = or i32 %35, 1065353216
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 4194304, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 8388607, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %37, %33, %27, %22, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
