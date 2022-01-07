; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i64, i32, %struct.phy_device* }
%struct.phy_device = type { i64, i32, i32 }

@CTRL_REG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s: link %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" - %d/%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nuport_mac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuport_mac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nuport_mac_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nuport_mac_priv* %8, %struct.nuport_mac_priv** %3, align 8
  %9 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %10 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %9, i32 0, i32 2
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %18 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %29 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %37 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %35
  %44 = load i32, i32* @CTRL_REG, align 4
  %45 = call i32 @nuport_mac_readl(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DUPLEX_FULL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @DUPLEX_FULL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @DUPLEX_FULL, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CTRL_REG, align 4
  %63 = call i32 @nuport_mac_writel(i32 %61, i32 %62)
  store i32 1, i32* %5, align 4
  %64 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %68 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %35, %30
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %102

73:                                               ; preds = %69
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %82)
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %73
  %89 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %90 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DUPLEX_FULL, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %99 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %98)
  br label %100

100:                                              ; preds = %88, %73
  %101 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %72
  ret void
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
