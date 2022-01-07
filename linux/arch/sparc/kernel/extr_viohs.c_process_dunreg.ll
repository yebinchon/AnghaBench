; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dunreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dunreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i64, i32*, i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64 }
%struct.vio_dring_unregister = type { i64 }

@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GOT DRING_UNREG\0A\00", align 1
@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_dring_unregister*)* @process_dunreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dunreg(%struct.vio_driver_state* %0, %struct.vio_dring_unregister* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_dring_unregister*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_dring_unregister* %1, %struct.vio_dring_unregister** %5, align 8
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %8 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %7, i32 0, i32 3
  %9 = load %struct.vio_dring_state*, %struct.vio_dring_state** %8, align 8
  %10 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %11 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %9, i64 %10
  store %struct.vio_dring_state* %11, %struct.vio_dring_state** %6, align 8
  %12 = load i32, i32* @HS, align 4
  %13 = call i32 @viodbg(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vio_dring_unregister*, %struct.vio_dring_unregister** %5, align 8
  %15 = getelementptr inbounds %struct.vio_dring_unregister, %struct.vio_dring_unregister* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %18 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %26 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %30 = call i32 @memset(%struct.vio_dring_state* %29, i32 0, i32 8)
  %31 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %32 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %36 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %38 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
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
