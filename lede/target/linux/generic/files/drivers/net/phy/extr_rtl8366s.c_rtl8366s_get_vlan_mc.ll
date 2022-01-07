; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_get_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_get_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }

@RTL8366S_NUM_VLANS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8366S_VLAN_VID_MASK = common dso_local global i64 0, align 8
@RTL8366S_VLAN_PRIORITY_SHIFT = common dso_local global i64 0, align 8
@RTL8366S_VLAN_PRIORITY_MASK = common dso_local global i64 0, align 8
@RTL8366S_VLAN_UNTAG_SHIFT = common dso_local global i64 0, align 8
@RTL8366S_VLAN_UNTAG_MASK = common dso_local global i64 0, align 8
@RTL8366S_VLAN_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8366S_VLAN_FID_SHIFT = common dso_local global i64 0, align 8
@RTL8366S_VLAN_FID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, %struct.rtl8366_vlan_mc*)* @rtl8366s_get_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366s_get_vlan_mc(%struct.rtl8366_smi* %0, i64 %1, %struct.rtl8366_vlan_mc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_mc*, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_mc* %2, %struct.rtl8366_vlan_mc** %7, align 8
  %11 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %12 = call i32 @memset(%struct.rtl8366_vlan_mc* %11, i8 signext 0, i32 40)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RTL8366S_NUM_VLANS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @RTL8366S_VLAN_MC_BASE(i64 %25)
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 %31
  %33 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %24, i64 %29, i64* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %20

42:                                               ; preds = %20
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = load i64, i64* @RTL8366S_VLAN_VID_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %48 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = load i64, i64* @RTL8366S_VLAN_PRIORITY_SHIFT, align 8
  %52 = ashr i64 %50, %51
  %53 = load i64, i64* @RTL8366S_VLAN_PRIORITY_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %56 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RTL8366S_VLAN_UNTAG_SHIFT, align 8
  %60 = ashr i64 %58, %59
  %61 = load i64, i64* @RTL8366S_VLAN_UNTAG_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %64 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RTL8366S_VLAN_MEMBER_MASK, align 8
  %68 = and i64 %66, %67
  %69 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %70 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RTL8366S_VLAN_FID_SHIFT, align 8
  %74 = ashr i64 %72, %73
  %75 = load i64, i64* @RTL8366S_VLAN_FID_MASK, align 8
  %76 = and i64 %74, %75
  %77 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %78 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %42, %36, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.rtl8366_vlan_mc*, i8 signext, i32) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i64, i64*) #1

declare dso_local i64 @RTL8366S_VLAN_MC_BASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
