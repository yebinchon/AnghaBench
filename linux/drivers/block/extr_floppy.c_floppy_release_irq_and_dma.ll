; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_release_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_release_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@usage_count = common dso_local global i32 0, align 4
@irqdma_allocated = common dso_local global i64 0, align 8
@floppy_track_buffer = common dso_local global i32* null, align 8
@max_buffer_sectors = common dso_local global i32 0, align 4
@buffer_max = common dso_local global i32 0, align 4
@buffer_min = common dso_local global i32 0, align 4
@N_FDC = common dso_local global i32 0, align 4
@motor_off_timer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"motor off timer %d still active\0A\00", align 1
@fd_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"floppy timer still active:%s\0A\00", align 1
@timeout_message = common dso_local global i32 0, align 4
@fd_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"auxiliary floppy timer still active\0A\00", align 1
@floppy_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"work still pending\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @floppy_release_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_release_irq_and_dma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @atomic_dec_and_test(i32* @usage_count)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %87

8:                                                ; preds = %0
  %9 = load i64, i64* @irqdma_allocated, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = call i32 (...) @fd_disable_dma()
  %13 = call i32 (...) @fd_free_dma()
  %14 = call i32 (...) @fd_free_irq()
  store i64 0, i64* @irqdma_allocated, align 8
  br label %15

15:                                               ; preds = %11, %8
  %16 = call i32 @set_dor(i32 0, i32 -1, i32 8)
  %17 = load i32*, i32** @floppy_track_buffer, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* @max_buffer_sectors, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @max_buffer_sectors, align 4
  %24 = mul nsw i32 %23, 1024
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %3, align 8
  %26 = load i32*, i32** @floppy_track_buffer, align 8
  %27 = ptrtoint i32* %26 to i64
  store i64 %27, i64* %4, align 8
  store i32* null, i32** @floppy_track_buffer, align 8
  store i32 0, i32* @max_buffer_sectors, align 4
  store i32 -1, i32* @buffer_max, align 4
  store i32 -1, i32* @buffer_min, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @fd_dma_mem_free(i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %22, %19, %15
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @N_FDC, align 4
  %35 = mul nsw i32 %34, 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i64, i64* @motor_off_timer, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i64 @timer_pending(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %32

51:                                               ; preds = %32
  %52 = call i64 @delayed_work_pending(i32* @fd_timeout)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @timeout_message, align 4
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i64 @delayed_work_pending(i32* @fd_timer)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = call i64 @work_pending(i32* @floppy_work)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* @fdc, align 4
  store i32 %68, i32* %1, align 4
  store i32 0, i32* @fdc, align 4
  br label %69

69:                                               ; preds = %82, %67
  %70 = load i32, i32* @fdc, align 4
  %71 = load i32, i32* @N_FDC, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @fdc, align 4
  %80 = call i32 @floppy_release_regions(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @fdc, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @fdc, align 4
  br label %69

85:                                               ; preds = %69
  %86 = load i32, i32* %1, align 4
  store i32 %86, i32* @fdc, align 4
  br label %87

87:                                               ; preds = %85, %7
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @fd_free_dma(...) #1

declare dso_local i32 @fd_free_irq(...) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @fd_dma_mem_free(i64, i64) #1

declare dso_local i64 @timer_pending(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @delayed_work_pending(i32*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local i32 @floppy_release_regions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
