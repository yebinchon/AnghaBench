; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_gen_and_send_sync_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_gen_and_send_sync_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_8__*, %struct.drbd_device* }
%struct.TYPE_8__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.drbd_device = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }
%struct.p_rs_uuid = type { i32 }

@D_UP_TO_DATE = common dso_local global i64 0, align 8
@UI_BITMAP = common dso_local global i64 0, align 8
@UUID_JUST_CREATED = common dso_local global i64 0, align 8
@UUID_NEW_BM_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"updated sync UUID\00", align 1
@P_SYNC_UUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_gen_and_send_sync_uuid(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca %struct.drbd_peer_device*, align 8
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  %5 = alloca %struct.p_rs_uuid*, align 8
  %6 = alloca i64, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %2, align 8
  %7 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %7, i32 0, i32 1
  %9 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  store %struct.drbd_device* %9, %struct.drbd_device** %3, align 8
  %10 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %11 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @D_UP_TO_DATE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @D_ASSERT(%struct.drbd_device* %10, i32 %17)
  %19 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @UI_BITMAP, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @UUID_JUST_CREATED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @UUID_NEW_BM_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %6, align 8
  br label %40

38:                                               ; preds = %30, %1
  %39 = call i32 @get_random_bytes(i64* %6, i32 8)
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %42 = load i64, i64* @UI_BITMAP, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @drbd_uuid_set(%struct.drbd_device* %41, i64 %42, i64 %43)
  %45 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %46 = call i32 @drbd_print_uuids(%struct.drbd_device* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %48 = call i32 @drbd_md_sync(%struct.drbd_device* %47)
  %49 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %50 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store %struct.drbd_socket* %52, %struct.drbd_socket** %4, align 8
  %53 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %54 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %55 = call %struct.p_rs_uuid* @drbd_prepare_command(%struct.drbd_peer_device* %53, %struct.drbd_socket* %54)
  store %struct.p_rs_uuid* %55, %struct.p_rs_uuid** %5, align 8
  %56 = load %struct.p_rs_uuid*, %struct.p_rs_uuid** %5, align 8
  %57 = icmp ne %struct.p_rs_uuid* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %40
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @cpu_to_be64(i64 %59)
  %61 = load %struct.p_rs_uuid*, %struct.p_rs_uuid** %5, align 8
  %62 = getelementptr inbounds %struct.p_rs_uuid, %struct.p_rs_uuid* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %64 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %65 = load i32, i32* @P_SYNC_UUID, align 4
  %66 = call i32 @drbd_send_command(%struct.drbd_peer_device* %63, %struct.drbd_socket* %64, i32 %65, i32 4, i32* null, i32 0)
  br label %67

67:                                               ; preds = %58, %40
  ret void
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i32 @drbd_uuid_set(%struct.drbd_device*, i64, i64) #1

declare dso_local i32 @drbd_print_uuids(%struct.drbd_device*, i8*) #1

declare dso_local i32 @drbd_md_sync(%struct.drbd_device*) #1

declare dso_local %struct.p_rs_uuid* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
