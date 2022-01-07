; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_abw_start_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_abw_start_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Writing the bitmap failed not starting resync.\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@C_CONNECTED = common dso_local global i32 0, align 4
@CS_VERBOSE = common dso_local global i32 0, align 4
@C_WF_SYNC_UUID = common dso_local global i32 0, align 4
@C_SYNC_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i32)* @abw_start_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abw_start_sync(%struct.drbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = call i32 @drbd_err(%struct.drbd_device* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %11 = load i32, i32* @conn, align 4
  %12 = load i32, i32* @C_CONNECTED, align 4
  %13 = call i32 @NS(i32 %11, i32 %12)
  %14 = load i32, i32* @CS_VERBOSE, align 4
  %15 = call i32 @_drbd_request_state(%struct.drbd_device* %10, i32 %13, i32 %14)
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %32 [
    i32 128, label %21
    i32 129, label %28
  ]

21:                                               ; preds = %16
  %22 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %23 = load i32, i32* @conn, align 4
  %24 = load i32, i32* @C_WF_SYNC_UUID, align 4
  %25 = call i32 @NS(i32 %23, i32 %24)
  %26 = load i32, i32* @CS_VERBOSE, align 4
  %27 = call i32 @_drbd_request_state(%struct.drbd_device* %22, i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %16
  %29 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %30 = load i32, i32* @C_SYNC_SOURCE, align 4
  %31 = call i32 @drbd_start_resync(%struct.drbd_device* %29, i32 %30)
  br label %32

32:                                               ; preds = %7, %16, %28, %21
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @_drbd_request_state(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i32 @drbd_start_resync(%struct.drbd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
