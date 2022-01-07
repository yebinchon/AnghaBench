; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_setup_DMA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_setup_DMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.TYPE_6__ = type { i32, i32 }

@raw_cmd = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"zero dma transfer size:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%x,\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cont = common dso_local global %struct.TYPE_5__* null, align 8
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"non aligned address: %p\0A\00", align 1
@FD_RAW_READ = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@virtual_dma_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_DMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_DMA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %24, %7
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %9

27:                                               ; preds = %9
  %28 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cont, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = call i32 %31(i32 0)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %90

35:                                               ; preds = %0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = urem i64 %38, 512
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cont, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = call i32 %48(i32 0)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %90

52:                                               ; preds = %35
  %53 = call i64 (...) @claim_dma_lock()
  store i64 %53, i64* %1, align 8
  %54 = call i32 (...) @fd_disable_dma()
  %55 = call i32 (...) @fd_clear_dma_ff()
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @fd_cacheflush(i64 %58, i64 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FD_RAW_READ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* @DMA_MODE_READ, align 4
  br label %73

71:                                               ; preds = %52
  %72 = load i32, i32* @DMA_MODE_WRITE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @fd_set_dma_mode(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @fd_set_dma_addr(i64 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @fd_set_dma_count(i64 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @virtual_dma_port, align 4
  %87 = call i32 (...) @fd_enable_dma()
  %88 = load i64, i64* %1, align 8
  %89 = call i32 @release_dma_lock(i64 %88)
  br label %90

90:                                               ; preds = %73, %41, %27
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @fd_clear_dma_ff(...) #1

declare dso_local i32 @fd_cacheflush(i64, i64) #1

declare dso_local i32 @fd_set_dma_mode(i32) #1

declare dso_local i32 @fd_set_dma_addr(i64) #1

declare dso_local i32 @fd_set_dma_count(i64) #1

declare dso_local i32 @fd_enable_dma(...) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
