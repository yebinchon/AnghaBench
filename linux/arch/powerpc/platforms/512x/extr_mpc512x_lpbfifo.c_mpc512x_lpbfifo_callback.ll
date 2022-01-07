; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.mpc512x_lpbfifo_request*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.mpc512x_lpbfifo_request = type { i64, i32 (%struct.mpc512x_lpbfifo_request*)*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"bogus LPBFIFO callback\0A\00", align 1
@MPC512X_LPBFIFO_REQ_DIR_WRITE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpc512x_lpbfifo_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_lpbfifo_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mpc512x_lpbfifo_request*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.mpc512x_lpbfifo_request* null, %struct.mpc512x_lpbfifo_request** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 1), i64 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 6), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 1), i64 %11)
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 2), align 8
  store %struct.mpc512x_lpbfifo_request* %14, %struct.mpc512x_lpbfifo_request** %4, align 8
  %15 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %16 = icmp ne %struct.mpc512x_lpbfifo_request* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 1), i64 %19)
  br label %62

21:                                               ; preds = %13
  %22 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %23 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPC512X_LPBFIFO_REQ_DIR_WRITE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 5), align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 4), align 4
  %38 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %39 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dma_unmap_single(i32 %36, i32 %37, i32 %40, i32 %41)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 0), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 3), align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %31
  store %struct.mpc512x_lpbfifo_request* null, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 2), align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 1), i64 %46)
  %48 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %49 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %48, i32 0, i32 1
  %50 = load i32 (%struct.mpc512x_lpbfifo_request*)*, i32 (%struct.mpc512x_lpbfifo_request*)** %49, align 8
  %51 = icmp ne i32 (%struct.mpc512x_lpbfifo_request*)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %54 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %53, i32 0, i32 1
  %55 = load i32 (%struct.mpc512x_lpbfifo_request*)*, i32 (%struct.mpc512x_lpbfifo_request*)** %54, align 8
  %56 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %4, align 8
  %57 = call i32 %55(%struct.mpc512x_lpbfifo_request* %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %62

59:                                               ; preds = %31
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpbfifo, i32 0, i32 1), i64 %60)
  br label %62

62:                                               ; preds = %10, %17, %59, %58
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
