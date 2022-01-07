; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_grab_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_grab_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@usage_count = common dso_local global i32 0, align 4
@floppy_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unable to grab IRQ%d for the floppy driver\0A\00", align 1
@FLOPPY_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to grab DMA%d for the floppy driver\0A\00", align 1
@FLOPPY_DMA = common dso_local global i32 0, align 4
@can_use_virtual_dma = common dso_local global i32 0, align 4
@use_virtual_dma = common dso_local global i32 0, align 4
@fdc = common dso_local global i64 0, align 8
@N_FDC = common dso_local global i64 0, align 8
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_DOR = common dso_local global i32 0, align 4
@irqdma_allocated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @floppy_grab_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floppy_grab_irq_and_dma() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @atomic_inc_return(i32* @usage_count)
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %107

5:                                                ; preds = %0
  %6 = load i32, i32* @floppy_wq, align 4
  %7 = call i32 @flush_workqueue(i32 %6)
  %8 = call i64 (...) @fd_request_irq()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32, i32* @FLOPPY_IRQ, align 4
  %12 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @atomic_dec(i32* @usage_count)
  store i32 -1, i32* %1, align 4
  br label %107

14:                                               ; preds = %5
  %15 = call i64 (...) @fd_request_dma()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* @FLOPPY_DMA, align 4
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @can_use_virtual_dma, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* @can_use_virtual_dma, align 4
  store i32 1, i32* @use_virtual_dma, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* @can_use_virtual_dma, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i32 (...) @fd_free_irq()
  %30 = call i32 @atomic_dec(i32* @usage_count)
  store i32 -1, i32* %1, align 4
  br label %107

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %14
  store i64 0, i64* @fdc, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* @fdc, align 8
  %35 = load i64, i64* @N_FDC, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* @fdc, align 8
  %44 = call i64 @floppy_request_regions(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %95

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* @fdc, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @fdc, align 8
  br label %33

52:                                               ; preds = %33
  store i64 0, i64* @fdc, align 8
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i64, i64* @fdc, align 8
  %55 = load i64, i64* @N_FDC, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = call i32 @reset_fdc_info(i32 1)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FD_DOR, align 4
  %68 = call i32 @fd_outb(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* @fdc, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @fdc, align 8
  br label %53

73:                                               ; preds = %53
  store i64 0, i64* @fdc, align 8
  %74 = call i32 @set_dor(i32 0, i32 -1, i32 8)
  store i64 0, i64* @fdc, align 8
  br label %75

75:                                               ; preds = %91, %73
  %76 = load i64, i64* @fdc, align 8
  %77 = load i64, i64* @N_FDC, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FD_DOR, align 4
  %89 = call i32 @fd_outb(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* @fdc, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* @fdc, align 8
  br label %75

94:                                               ; preds = %75
  store i64 0, i64* @fdc, align 8
  store i32 1, i32* @irqdma_allocated, align 4
  store i32 0, i32* %1, align 4
  br label %107

95:                                               ; preds = %46
  %96 = call i32 (...) @fd_free_irq()
  %97 = call i32 (...) @fd_free_dma()
  br label %98

98:                                               ; preds = %102, %95
  %99 = load i64, i64* @fdc, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* @fdc, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* @fdc, align 8
  %104 = call i32 @floppy_release_regions(i64 %103)
  br label %98

105:                                              ; preds = %98
  %106 = call i32 @atomic_dec(i32* @usage_count)
  store i32 -1, i32* %1, align 4
  br label %107

107:                                              ; preds = %105, %94, %28, %10, %4
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @fd_request_irq(...) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @fd_request_dma(...) #1

declare dso_local i32 @fd_free_irq(...) #1

declare dso_local i64 @floppy_request_regions(i64) #1

declare dso_local i32 @reset_fdc_info(i32) #1

declare dso_local i32 @fd_outb(i32, i32) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @fd_free_dma(...) #1

declare dso_local i32 @floppy_release_regions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
