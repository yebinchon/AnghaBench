; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_ver_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_ver_info*)* @process_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver(%struct.vio_driver_state* %0, %struct.vio_ver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_ver_info*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_ver_info* %1, %struct.vio_ver_info** %5, align 8
  %6 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %7 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 130, label %14
    i32 128, label %18
  ]

10:                                               ; preds = %2
  %11 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %12 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %13 = call i32 @process_ver_info(%struct.vio_driver_state* %11, %struct.vio_ver_info* %12)
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %16 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %17 = call i32 @process_ver_ack(%struct.vio_driver_state* %15, %struct.vio_ver_info* %16)
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %20 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %21 = call i32 @process_ver_nack(%struct.vio_driver_state* %19, %struct.vio_ver_info* %20)
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %24 = call i32 @handshake_failure(%struct.vio_driver_state* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %18, %14, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @process_ver_info(%struct.vio_driver_state*, %struct.vio_ver_info*) #1

declare dso_local i32 @process_ver_ack(%struct.vio_driver_state*, %struct.vio_ver_info*) #1

declare dso_local i32 @process_ver_nack(%struct.vio_driver_state*, %struct.vio_ver_info*) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
