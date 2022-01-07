; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c___hostapd_bss_mgmt_enable_f.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c___hostapd_bss_mgmt_enable_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_bss_config* }
%struct.hostapd_bss_config = type { i32*, i32 }

@WLAN_RRM_CAPS_NEIGHBOR_REPORT = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_BEACON_REPORT_PASSIVE = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_BEACON_REPORT_ACTIVE = common dso_local global i32 0, align 4
@WLAN_RRM_CAPS_BEACON_REPORT_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32)* @__hostapd_bss_mgmt_enable_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hostapd_bss_mgmt_enable_f(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_bss_config*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %9, align 8
  store %struct.hostapd_bss_config* %10, %struct.hostapd_bss_config** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %58 [
    i32 128, label %12
    i32 130, label %32
  ]

12:                                               ; preds = %2
  %13 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %6, align 8
  %14 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WLAN_RRM_CAPS_NEIGHBOR_REPORT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %12
  %23 = load i32, i32* @WLAN_RRM_CAPS_NEIGHBOR_REPORT, align 4
  %24 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %6, align 8
  %25 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %31 = call i32 @hostapd_neighbor_set_own_report(%struct.hostapd_data* %30)
  store i32 1, i32* %3, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load i32, i32* @WLAN_RRM_CAPS_BEACON_REPORT_PASSIVE, align 4
  %34 = load i32, i32* @WLAN_RRM_CAPS_BEACON_REPORT_ACTIVE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WLAN_RRM_CAPS_BEACON_REPORT_TABLE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %6, align 8
  %39 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %6, align 8
  %53 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %21, %22, %49, %50, %2
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @hostapd_neighbor_set_own_report(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
