; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_submit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mpc52xx_lpbfifo_request*, i32 }
%struct.mpc52xx_lpbfifo_request = type { i64, i64, i64, i64 }

@lpbfifo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc52xx_lpbfifo_submit(%struct.mpc52xx_lpbfifo_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc52xx_lpbfifo_request*, align 8
  %4 = alloca i64, align 8
  store %struct.mpc52xx_lpbfifo_request* %0, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %11)
  %13 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %14 = icmp ne %struct.mpc52xx_lpbfifo_request* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %16)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %10
  %21 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  store %struct.mpc52xx_lpbfifo_request* %21, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %22 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %23 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %25 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %27 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %29 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %31 = call i32 @mpc52xx_lpbfifo_kick(%struct.mpc52xx_lpbfifo_request* %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %15, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpc52xx_lpbfifo_kick(%struct.mpc52xx_lpbfifo_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
