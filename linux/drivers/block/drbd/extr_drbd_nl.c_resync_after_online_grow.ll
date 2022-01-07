; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_resync_after_online_grow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_resync_after_online_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Resync of new storage after online grow\0A\00", align 1
@R_PRIMARY = common dso_local global i64 0, align 8
@RESOLVE_CONFLICTS = common dso_local global i32 0, align 4
@C_SYNC_SOURCE = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@C_WF_SYNC_UUID = common dso_local global i32 0, align 4
@CS_VERBOSE = common dso_local global i64 0, align 8
@CS_SERIALIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resync_after_online_grow(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %4 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %5 = call i32 @drbd_info(%struct.drbd_device* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %7 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @R_PRIMARY, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @RESOLVE_CONFLICTS, align 4
  %25 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %26 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %24, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %36 = load i32, i32* @C_SYNC_SOURCE, align 4
  %37 = call i32 @drbd_start_resync(%struct.drbd_device* %35, i32 %36)
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %40 = load i32, i32* @conn, align 4
  %41 = load i32, i32* @C_WF_SYNC_UUID, align 4
  %42 = call i32 @NS(i32 %40, i32 %41)
  %43 = load i64, i64* @CS_VERBOSE, align 8
  %44 = load i64, i64* @CS_SERIALIZE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @_drbd_request_state(%struct.drbd_device* %39, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @drbd_start_resync(%struct.drbd_device*, i32) #1

declare dso_local i32 @_drbd_request_state(%struct.drbd_device*, i32, i64) #1

declare dso_local i32 @NS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
