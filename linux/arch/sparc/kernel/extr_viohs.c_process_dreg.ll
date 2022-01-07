; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_dring_register = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VIO_HS_GOTVERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_dring_register*)* @process_dreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dreg(%struct.vio_driver_state* %0, %struct.vio_dring_register* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_dring_register*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_dring_register* %1, %struct.vio_dring_register** %5, align 8
  %6 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %7 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIO_HS_GOTVERS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %14 = call i32 @handshake_failure(%struct.vio_driver_state* %13)
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %17 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 130, label %24
    i32 128, label %28
  ]

20:                                               ; preds = %15
  %21 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %22 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %23 = call i32 @process_dreg_info(%struct.vio_driver_state* %21, %struct.vio_dring_register* %22)
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %26 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %27 = call i32 @process_dreg_ack(%struct.vio_driver_state* %25, %struct.vio_dring_register* %26)
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %15
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %30 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %31 = call i32 @process_dreg_nack(%struct.vio_driver_state* %29, %struct.vio_dring_register* %30)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %15
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %34 = call i32 @handshake_failure(%struct.vio_driver_state* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %28, %24, %20, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local i32 @process_dreg_info(%struct.vio_driver_state*, %struct.vio_dring_register*) #1

declare dso_local i32 @process_dreg_ack(%struct.vio_driver_state*, %struct.vio_dring_register*) #1

declare dso_local i32 @process_dreg_nack(%struct.vio_driver_state*, %struct.vio_dring_register*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
