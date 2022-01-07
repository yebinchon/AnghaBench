; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_ethtool_drvinfo.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_ethtool_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"nuport-mac\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @nuport_mac_ethtool_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuport_mac_ethtool_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %5 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strncpy(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strncpy(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strncpy(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %17 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strncpy(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
