; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32, i32, i64, i64, i32*, i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*)* @vdc_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_free_tx_ring(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %4 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %5 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %8 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %9 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %7, i64 %8
  store %struct.vio_dring_state* %9, %struct.vio_dring_state** %3, align 8
  %10 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %11 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %16 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %23 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %26 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %30 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %33 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ldc_free_exp_dring(i32 %18, i32* %21, i32 %28, i32 %31, i64 %34)
  %36 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %37 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %39 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %41 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %43 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %45 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @ldc_free_exp_dring(i32, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
