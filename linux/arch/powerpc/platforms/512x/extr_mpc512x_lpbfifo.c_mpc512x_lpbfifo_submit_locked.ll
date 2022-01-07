; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_submit_locked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_submit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.mpc512x_lpbfifo_request*, i32 }
%struct.mpc512x_lpbfifo_request = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc512x_lpbfifo_request*)* @mpc512x_lpbfifo_submit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc512x_lpbfifo_submit_locked(%struct.mpc512x_lpbfifo_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc512x_lpbfifo_request*, align 8
  %4 = alloca i32, align 4
  store %struct.mpc512x_lpbfifo_request* %0, %struct.mpc512x_lpbfifo_request** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 3), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %12 = icmp ne %struct.mpc512x_lpbfifo_request* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 4
  %17 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %3, align 8
  store %struct.mpc512x_lpbfifo_request* %17, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %18 = call i32 (...) @mpc512x_lpbfifo_kick()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.mpc512x_lpbfifo_request* null, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %13, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @mpc512x_lpbfifo_kick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
