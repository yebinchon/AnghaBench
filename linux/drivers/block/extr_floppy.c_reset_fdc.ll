; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_reset_fdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_reset_fdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@reset_interrupt = common dso_local global i32 0, align 4
@do_floppy = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FDC_82072A = common dso_local global i64 0, align 8
@FD_STATUS = common dso_local global i32 0, align 4
@FD_DOR = common dso_local global i32 0, align 4
@FD_RESET_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_fdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_fdc() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @reset_interrupt, align 4
  store i32 %2, i32* @do_floppy, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = call i32 @reset_fdc_info(i32 0)
  %6 = call i64 (...) @claim_dma_lock()
  store i64 %6, i64* %1, align 8
  %7 = call i32 (...) @fd_disable_dma()
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @release_dma_lock(i64 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FDC_82072A, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 3
  %20 = or i32 128, %19
  %21 = load i32, i32* @FD_STATUS, align 4
  %22 = call i32 @fd_outb(i32 %20, i32 %21)
  br label %37

23:                                               ; preds = %0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -5
  %28 = load i32, i32* @FD_DOR, align 4
  %29 = call i32 @fd_outb(i32 %27, i32 %28)
  %30 = load i32, i32* @FD_RESET_DELAY, align 4
  %31 = call i32 @udelay(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FD_DOR, align 4
  %36 = call i32 @fd_outb(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @reset_fdc_info(i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @fd_outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
