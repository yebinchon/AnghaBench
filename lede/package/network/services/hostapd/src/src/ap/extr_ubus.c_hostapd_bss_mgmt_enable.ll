; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_bss_mgmt_enable.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_bss_mgmt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_context = type { i32 }
%struct.ubus_object = type { i32 }
%struct.ubus_request_data = type { i32 }
%struct.blob_attr = type { i32 }
%struct.hostapd_data = type { i32 }

@__BSS_MGMT_EN_MAX = common dso_local global i32 0, align 4
@bss_mgmt_enable_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubus_context*, %struct.ubus_object*, %struct.ubus_request_data*, i8*, %struct.blob_attr*)* @hostapd_bss_mgmt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_bss_mgmt_enable(%struct.ubus_context* %0, %struct.ubus_object* %1, %struct.ubus_request_data* %2, i8* %3, %struct.blob_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubus_context*, align 8
  %8 = alloca %struct.ubus_object*, align 8
  %9 = alloca %struct.ubus_request_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blob_attr*, align 8
  %12 = alloca %struct.hostapd_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.blob_attr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ubus_context* %0, %struct.ubus_context** %7, align 8
  store %struct.ubus_object* %1, %struct.ubus_object** %8, align 8
  store %struct.ubus_request_data* %2, %struct.ubus_request_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.blob_attr* %4, %struct.blob_attr** %11, align 8
  %20 = load %struct.ubus_object*, %struct.ubus_object** %8, align 8
  %21 = call %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object* %20)
  store %struct.hostapd_data* %21, %struct.hostapd_data** %12, align 8
  %22 = load i32, i32* @__BSS_MGMT_EN_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca %struct.blob_attr*, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* @bss_mgmt_enable_policy, align 4
  %27 = load i32, i32* @__BSS_MGMT_EN_MAX, align 4
  %28 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %29 = call i32 @blob_data(%struct.blob_attr* %28)
  %30 = load %struct.blob_attr*, %struct.blob_attr** %11, align 8
  %31 = call i32 @blob_len(%struct.blob_attr* %30)
  %32 = call i32 @blobmsg_parse(i32 %26, i32 %27, %struct.blob_attr** %25, i32 %29, i32 %31)
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %56, %5
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @ARRAY_SIZE(%struct.blob_attr** %25)
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %25, i64 %39
  %41 = load %struct.blob_attr*, %struct.blob_attr** %40, align 8
  %42 = icmp ne %struct.blob_attr* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %25, i64 %45
  %47 = load %struct.blob_attr*, %struct.blob_attr** %46, align 8
  %48 = call i32 @blobmsg_get_bool(%struct.blob_attr* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %37
  br label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @__hostapd_bss_mgmt_enable(%struct.hostapd_data* %60, i32 %61)
  %63 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.hostapd_data* @get_hapd_from_object(%struct.ubus_object*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #1

declare dso_local i32 @blob_data(%struct.blob_attr*) #1

declare dso_local i32 @blob_len(%struct.blob_attr*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.blob_attr**) #1

declare dso_local i32 @blobmsg_get_bool(%struct.blob_attr*) #1

declare dso_local i32 @__hostapd_bss_mgmt_enable(%struct.hostapd_data*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
