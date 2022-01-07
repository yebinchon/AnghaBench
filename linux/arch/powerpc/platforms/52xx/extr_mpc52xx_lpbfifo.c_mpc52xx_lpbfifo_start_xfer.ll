; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_start_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_start_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.mpc52xx_lpbfifo_request* }
%struct.mpc52xx_lpbfifo_request = type { i64 }

@lpbfifo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LPBFIFO_REG_PACKET_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc52xx_lpbfifo_start_xfer(%struct.mpc52xx_lpbfifo_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc52xx_lpbfifo_request*, align 8
  %4 = alloca i64, align 8
  store %struct.mpc52xx_lpbfifo_request* %0, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %11)
  %13 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %14 = icmp ne %struct.mpc52xx_lpbfifo_request* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %17 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %15, %10
  %26 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %27 = icmp ne %struct.mpc52xx_lpbfifo_request* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %30 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %3, align 8
  %31 = icmp eq %struct.mpc52xx_lpbfifo_request* %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %34 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %39 = load i64, i64* @LPBFIFO_REG_PACKET_SIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @out_8(i64 %40, i32 1)
  br label %42

42:                                               ; preds = %37, %32, %28, %25
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %20, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @out_8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
