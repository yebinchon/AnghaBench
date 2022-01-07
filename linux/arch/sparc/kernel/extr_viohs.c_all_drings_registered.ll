; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_all_drings_registered.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_all_drings_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }

@VIO_DR_STATE_RXREQ = common dso_local global i32 0, align 4
@VIO_DR_STATE_TXREQ = common dso_local global i32 0, align 4
@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@VIO_DR_STATE_TXREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*)* @all_drings_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @all_drings_registered(%struct.vio_driver_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vio_driver_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %3, align 8
  %6 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %7 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIO_DR_STATE_RXREQ, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %12 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VIO_DR_STATE_TXREQ, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %20 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

26:                                               ; preds = %18, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %31 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VIO_DR_STATE_TXREG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %38

37:                                               ; preds = %29, %26
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
