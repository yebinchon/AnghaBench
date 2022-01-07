; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_ip22_gio_set_64bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_ip22_gio_set_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sgimc = common dso_local global %struct.TYPE_2__* null, align 8
@SGIMC_GIOPAR_GFX64 = common dso_local global i32 0, align 4
@SGIMC_GIOPAR_EXP064 = common dso_local global i32 0, align 4
@SGIMC_GIOPAR_EXP164 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip22_gio_set_64bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %20 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %16
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @SGIMC_GIOPAR_GFX64, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @SGIMC_GIOPAR_EXP064, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @SGIMC_GIOPAR_EXP164, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %1, %16, %12, %8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
