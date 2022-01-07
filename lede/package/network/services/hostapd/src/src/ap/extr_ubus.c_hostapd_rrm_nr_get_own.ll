; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_rrm_nr_get_own.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_rrm_nr_get_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hostapd_data = type { i32 }
%struct.hostapd_neighbor_entry = type { i32 }

@UBUS_STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@b = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_rrm_nr_get_own to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_rrm_nr_get_own(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca %struct.hostapd_data*, align 8
  %13 = alloca %struct.hostapd_neighbor_entry*, align 8
  %14 = alloca i8*, align 8
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %15 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %16 = call %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object* %15)
  store %struct.hostapd_data* %16, %struct.hostapd_data** %12, align 8
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %18 = call i32 @hostapd_rrm_nr_enable(%struct.hostapd_data* %17)
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data* %19, i32 %22, i32* null)
  store %struct.hostapd_neighbor_entry* %23, %struct.hostapd_neighbor_entry** %13, align 8
  %24 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %13, align 8
  %25 = icmp ne %struct.hostapd_neighbor_entry* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @UBUS_STATUS_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %5
  %29 = call i32 @blob_buf_init(%struct.TYPE_5__* @b, i32 0)
  %30 = call i8* @blobmsg_open_array(%struct.TYPE_5__* @b, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %14, align 8
  %31 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %13, align 8
  %32 = call i32 @hostapd_rrm_print_nr(%struct.hostapd_neighbor_entry* %31)
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @blobmsg_close_array(%struct.TYPE_5__* @b, i8* %33)
  %35 = load %struct.ubus_context*, %struct.ubus_context** %7, align 8
  %36 = load %struct.ubus_request_data*, %struct.ubus_request_data** %9, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @b, i32 0, i32 0), align 4
  %38 = call i32 @ubus_send_reply(%struct.ubus_context* %35, %struct.ubus_request_data* %36, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %28, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object*) #1

declare dso_local i32 @hostapd_rrm_nr_enable(%struct.hostapd_data*) #1

declare dso_local %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data*, i32, i32*) #1

declare dso_local i32 @blob_buf_init(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @blobmsg_open_array(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @hostapd_rrm_print_nr(%struct.hostapd_neighbor_entry*) #1

declare dso_local i32 @blobmsg_close_array(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ubus_send_reply(%struct.ubus_context*, %struct.ubus_request_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
