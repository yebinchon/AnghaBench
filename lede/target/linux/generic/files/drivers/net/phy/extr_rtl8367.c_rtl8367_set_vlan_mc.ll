; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_set_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_set_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }

@RTL8367_VLAN_MC_DATA_SIZE = common dso_local global i32 0, align 4
@RTL8367_NUM_VLANS = common dso_local global i64 0, align 8
@RTL8367_NUM_VIDS = common dso_local global i64 0, align 8
@RTL8367_PRIORITYMAX = common dso_local global i64 0, align 8
@RTL8367_VLAN_MC_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8367_UNTAG_MASK = common dso_local global i64 0, align 8
@RTL8367_FIDMAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8367_VLAN_MC_MEMBER_SHIFT = common dso_local global i64 0, align 8
@RTL8367_VLAN_MC_FID_MASK = common dso_local global i64 0, align 8
@RTL8367_VLAN_MC_FID_SHIFT = common dso_local global i64 0, align 8
@RTL8367_VLAN_MC_EVID_MASK = common dso_local global i64 0, align 8
@RTL8367_VLAN_MC_EVID_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, %struct.rtl8366_vlan_mc*)* @rtl8367_set_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_set_vlan_mc(%struct.rtl8366_smi* %0, i64 %1, %struct.rtl8366_vlan_mc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_mc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_mc* %2, %struct.rtl8366_vlan_mc** %7, align 8
  %13 = load i32, i32* @RTL8367_VLAN_MC_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @RTL8367_NUM_VLANS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %3
  %21 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %22 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTL8367_NUM_VIDS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %28 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RTL8367_PRIORITYMAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %34 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RTL8367_VLAN_MC_MEMBER_MASK, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %40 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTL8367_UNTAG_MASK, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %46 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RTL8367_FIDMAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38, %32, %26, %20, %3
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %99

53:                                               ; preds = %44
  %54 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %55 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RTL8367_VLAN_MC_MEMBER_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* @RTL8367_VLAN_MC_MEMBER_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %60, i64* %61, align 16
  %62 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %63 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTL8367_VLAN_MC_FID_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* @RTL8367_VLAN_MC_FID_SHIFT, align 8
  %68 = shl i64 %66, %67
  %69 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds i64, i64* %16, i64 2
  store i64 0, i64* %70, align 16
  %71 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %72 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RTL8367_VLAN_MC_EVID_MASK, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* @RTL8367_VLAN_MC_EVID_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = getelementptr inbounds i64, i64* %16, i64 3
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %95, %53
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ARRAY_SIZE(i64* %16)
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @RTL8367_VLAN_MC_BASE(i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %16, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @REG_WR(%struct.rtl8366_smi* %84, i64 %89, i64 %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %79

98:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %50
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i64, i64) #2

declare dso_local i64 @RTL8367_VLAN_MC_BASE(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
