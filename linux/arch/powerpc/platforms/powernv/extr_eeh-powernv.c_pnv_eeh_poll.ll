; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_HARDWARE = common dso_local global i64 0, align 8
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @pnv_eeh_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pnv_eeh_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @OPAL_HARDWARE, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %1, %23
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @opal_pci_poll(i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %24

11:                                               ; preds = %5
  %12 = load i64, i64* @system_state, align 8
  %13 = load i64, i64* @SYSTEM_RUNNING, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 1000, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @udelay(i32 %18)
  br label %23

20:                                               ; preds = %11
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @msleep(i64 %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %5

24:                                               ; preds = %10
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @opal_pci_poll(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
