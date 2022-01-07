; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_set_master.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gio_device = type { i32 }

@sgimc = common dso_local global %struct.TYPE_2__* null, align 8
@SGIMC_GIOPAR_MASTERGFX = common dso_local global i32 0, align 4
@SGIMC_GIOPAR_MASTEREXP0 = common dso_local global i32 0, align 4
@SGIMC_GIOPAR_MASTEREXP1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gio_set_master(%struct.gio_device* %0) #0 {
  %2 = alloca %struct.gio_device*, align 8
  %3 = alloca i32, align 4
  store %struct.gio_device* %0, %struct.gio_device** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.gio_device*, %struct.gio_device** %2, align 8
  %8 = getelementptr inbounds %struct.gio_device, %struct.gio_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 1, label %14
    i32 2, label %18
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @SGIMC_GIOPAR_MASTERGFX, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @SGIMC_GIOPAR_MASTEREXP0, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @SGIMC_GIOPAR_MASTEREXP1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %1, %18, %14, %10
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
