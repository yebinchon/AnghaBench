; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_writetrack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_writetrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8, i8, i8, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"fd_writetrack() Tr=%d Si=%d\0A\00", align 1
@ReqTrack = common dso_local global i32 0, align 4
@ReqSide = common dso_local global i32 0, align 4
@PhysTrackBuffer = common dso_local global i64 0, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@SUDT = common dso_local global %struct.TYPE_4__* null, align 8
@FDCREG_TRACK = common dso_local global i32 0, align 4
@dma_wd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EXTD_DMA = common dso_local global i32 0, align 4
@st_dma_ext_dmahi = common dso_local global i16 0, align 2
@FDCSELREG_STP = common dso_local global i32 0, align 4
@fd_writetrack_done = common dso_local global i32 0, align 4
@FDCCMD_WRTRA = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fd_writetrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_writetrack() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ReqTrack, align 4
  %5 = load i32, i32* @ReqSide, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @DPRINT(i8* %7)
  %9 = load i64, i64* @PhysTrackBuffer, align 8
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i32, i32* @BUFFER_SIZE, align 4
  %12 = call i32 @dma_cache_maintenance(i64 %10, i32 %11, i32 1)
  %13 = load i32, i32* @ReqSide, align 4
  %14 = call i32 @fd_select_side(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %0
  %20 = load i32, i32* @FDCREG_TRACK, align 4
  %21 = call i32 @FDC_READ(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 (...) @MFPDELAY()
  %23 = load i32, i32* @FDCREG_TRACK, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SUDT, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = lshr i32 %24, %27
  %29 = call i32 @FDC_WRITE(i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %19, %0
  %31 = call i32 @udelay(i32 40)
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 0), align 4
  %36 = call i32 (...) @MFPDELAY()
  %37 = load i64, i64* %1, align 8
  %38 = lshr i64 %37, 8
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = trunc i64 %39 to i8
  store i8 %40, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 1), align 1
  %41 = call i32 (...) @MFPDELAY()
  %42 = load i64, i64* %1, align 8
  %43 = lshr i64 %42, 8
  store i64 %43, i64* %1, align 8
  %44 = load i32, i32* @EXTD_DMA, align 4
  %45 = call i64 @ATARIHW_PRESENT(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i64, i64* %1, align 8
  %49 = trunc i64 %48 to i16
  store i16 %49, i16* @st_dma_ext_dmahi, align 2
  br label %53

50:                                               ; preds = %30
  %51 = load i64, i64* %1, align 8
  %52 = trunc i64 %51 to i8
  store i8 %52, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 2), align 2
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 (...) @MFPDELAY()
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  store i32 400, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %57 = call i32 (...) @MFPDELAY()
  store i32 144, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %58 = call i32 (...) @MFPDELAY()
  store i32 400, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %59 = call i32 (...) @MFPDELAY()
  %60 = load i32, i32* @BUFFER_SIZE, align 4
  %61 = sdiv i32 %60, 512
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 4), align 4
  %62 = call i32 @udelay(i32 40)
  %63 = load i32, i32* @FDCSELREG_STP, align 4
  %64 = or i32 %63, 256
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 3), align 4
  %65 = call i32 @udelay(i32 40)
  %66 = load i32, i32* @fd_writetrack_done, align 4
  %67 = call i32 @SET_IRQ_HANDLER(i32 %66)
  %68 = load i32, i32* @FDCCMD_WRTRA, align 4
  %69 = call i32 (...) @get_head_settle_flag()
  %70 = or i32 %68, %69
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 4), align 4
  store i32 1, i32* @MotorOn, align 4
  %71 = call i32 (...) @start_timeout()
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @dma_cache_maintenance(i64, i32, i32) #1

declare dso_local i32 @fd_select_side(i32) #1

declare dso_local i32 @FDC_READ(i32) #1

declare dso_local i32 @MFPDELAY(...) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32) #1

declare dso_local i32 @get_head_settle_flag(...) #1

declare dso_local i32 @start_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
