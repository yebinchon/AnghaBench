; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_pm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_write_pm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %32 [
    i32 133, label %8
    i32 135, label %11
    i32 128, label %14
    i32 134, label %17
    i32 129, label %20
    i32 132, label %23
    i32 131, label %26
    i32 130, label %29
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @WRITE_WO_MMIO(i32 133, i32 %9)
  br label %32

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @WRITE_WO_MMIO(i32 135, i32 %12)
  br label %32

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @WRITE_WO_MMIO(i32 128, i32 %15)
  br label %32

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WRITE_WO_MMIO(i32 134, i32 %18)
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @WRITE_WO_MMIO(i32 129, i32 %21)
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WRITE_WO_MMIO(i32 132, i32 %24)
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @WRITE_WO_MMIO(i32 131, i32 %27)
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WRITE_WO_MMIO(i32 130, i32 %30)
  br label %32

32:                                               ; preds = %3, %29, %26, %23, %20, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @WRITE_WO_MMIO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
