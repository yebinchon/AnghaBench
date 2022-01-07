; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_handshake_failure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_handshake_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32, i64, i32*, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"HANDSHAKE FAILURE\0A\00", align 1
@VIO_DR_STATE_TXREG = common dso_local global i32 0, align 4
@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@VIO_HS_INVALID = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*)* @handshake_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake_failure(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %4 = load i32, i32* @HS, align 4
  %5 = call i32 @viodbg(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @VIO_DR_STATE_TXREG, align 4
  %7 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %11 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %15 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %14, i32 0, i32 4
  %16 = load %struct.vio_dring_state*, %struct.vio_dring_state** %15, align 8
  %17 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %18 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %16, i64 %17
  store %struct.vio_dring_state* %18, %struct.vio_dring_state** %3, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %20 = call i32 @memset(%struct.vio_dring_state* %19, i32 0, i32 4)
  %21 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %22 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %26 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %28 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @VIO_HS_INVALID, align 4
  %30 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %31 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ECONNRESET, align 4
  %33 = sub nsw i32 0, %32
  ret i32 %33
}

declare dso_local i32 @viodbg(i32, i8*) #1

declare dso_local i32 @memset(%struct.vio_dring_state*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
