; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64, i64, i64, i32, i64, i64, i8*, i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VDC_TX_RING_SIZE = common dso_local global i64 0, align 8
@VIO_MAX_RING_COOKIES = common dso_local global i32 0, align 4
@LDC_MAP_SHADOW = common dso_local global i32 0, align 4
@LDC_MAP_DIRECT = common dso_local global i32 0, align 4
@LDC_MAP_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdc_port*)* @vdc_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_alloc_tx_ring(%struct.vdc_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdc_port*, align 8
  %4 = alloca %struct.vio_dring_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %3, align 8
  %9 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %10 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %13 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %14 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %12, i64 %13
  store %struct.vio_dring_state* %14, %struct.vio_dring_state** %4, align 8
  %15 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %16 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = add i64 4, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @VDC_TX_RING_SIZE, align 8
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load i32, i32* @VIO_MAX_RING_COOKIES, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %26 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %31 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LDC_MAP_SHADOW, align 4
  %34 = load i32, i32* @LDC_MAP_DIRECT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @LDC_MAP_RW, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @ldc_alloc_exp_dring(i32 %28, i64 %29, i32 %32, i32* %7, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %1
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %48 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %51 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @VDC_TX_RING_SIZE, align 8
  %53 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %54 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %56 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %58 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @VDC_TX_RING_SIZE, align 8
  %60 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %61 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.vio_dring_state*, %struct.vio_dring_state** %4, align 8
  %64 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %45, %42
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @ldc_alloc_exp_dring(i32, i64, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
