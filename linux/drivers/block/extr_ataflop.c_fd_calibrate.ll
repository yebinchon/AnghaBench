; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@SUD = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FDCSPEED = common dso_local global i32 0, align 4
@dma_wd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"fd_calibrate\0A\00", align 1
@FDCREG_CMD = common dso_local global i32 0, align 4
@FDCCMD_RESTORE = common dso_local global i32 0, align 4
@NeedSeek = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fd_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_calibrate() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SUD, i32 0, i32 0), align 8
  %2 = icmp sge i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @fd_calibrate_done(i32 0)
  br label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @FDCSPEED, align 4
  %7 = call i64 @ATARIHW_PRESENT(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dma_wd, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %9, %5
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @SET_IRQ_HANDLER(i32 (i32)* @fd_calibrate_done)
  %13 = load i32, i32* @FDCREG_CMD, align 4
  %14 = load i32, i32* @FDCCMD_RESTORE, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SUD, i32 0, i32 1), align 8
  %16 = or i32 %14, %15
  %17 = call i32 @FDC_WRITE(i32 %13, i32 %16)
  store i32 1, i32* @NeedSeek, align 4
  store i32 1, i32* @MotorOn, align 4
  %18 = call i32 (...) @start_timeout()
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @fd_calibrate_done(i32) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @SET_IRQ_HANDLER(i32 (i32)*) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @start_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
