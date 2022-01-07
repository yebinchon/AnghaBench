; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_get_vlan_4k.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_get_vlan_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_4k = type { i64, i64, i64, i64 }

@RTL8367_TA_VLAN_DATA_SIZE = common dso_local global i32 0, align 4
@RTL8367_NUM_VIDS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8367_TA_ADDR_REG = common dso_local global i32 0, align 4
@RTL8367_TA_CTRL_REG = common dso_local global i32 0, align 4
@RTL8367_TA_CTRL_CVLAN_READ = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_MEMBER_SHIFT = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_FID_SHIFT = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_FID_MASK = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_UNTAG1_SHIFT = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_UNTAG1_MASK = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_UNTAG2_SHIFT = common dso_local global i64 0, align 8
@RTL8367_TA_VLAN_UNTAG2_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i64, %struct.rtl8366_vlan_4k*)* @rtl8367_get_vlan_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_get_vlan_4k(%struct.rtl8366_smi* %0, i64 %1, %struct.rtl8366_vlan_4k* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_4k*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_4k* %2, %struct.rtl8366_vlan_4k** %7, align 8
  %13 = load i32, i32* @RTL8367_TA_VLAN_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %18 = call i32 @memset(%struct.rtl8366_vlan_4k* %17, i8 signext 0, i32 32)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RTL8367_NUM_VIDS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %27 = load i32, i32* @RTL8367_TA_ADDR_REG, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @REG_WR(%struct.rtl8366_smi* %26, i32 %27, i64 %28)
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %31 = load i32, i32* @RTL8367_TA_CTRL_REG, align 4
  %32 = load i64, i64* @RTL8367_TA_CTRL_CVLAN_READ, align 8
  %33 = call i32 @REG_WR(%struct.rtl8366_smi* %30, i32 %31, i64 %32)
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %46, %25
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ARRAY_SIZE(i64* %16)
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @RTL8367_TA_DATA_REG(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %16, i64 %43
  %45 = call i32 @REG_RD(%struct.rtl8366_smi* %39, i32 %41, i64* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %52 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds i64, i64* %16, i64 0
  %54 = load i64, i64* %53, align 16
  %55 = load i64, i64* @RTL8367_TA_VLAN_MEMBER_SHIFT, align 8
  %56 = ashr i64 %54, %55
  %57 = load i64, i64* @RTL8367_TA_VLAN_MEMBER_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %60 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = getelementptr inbounds i64, i64* %16, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTL8367_TA_VLAN_FID_SHIFT, align 8
  %64 = ashr i64 %62, %63
  %65 = load i64, i64* @RTL8367_TA_VLAN_FID_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %68 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds i64, i64* %16, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = load i64, i64* @RTL8367_TA_VLAN_UNTAG1_SHIFT, align 8
  %72 = ashr i64 %70, %71
  %73 = load i64, i64* @RTL8367_TA_VLAN_UNTAG1_MASK, align 8
  %74 = and i64 %72, %73
  %75 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %76 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds i64, i64* %16, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RTL8367_TA_VLAN_UNTAG2_SHIFT, align 8
  %80 = ashr i64 %78, %79
  %81 = load i64, i64* @RTL8367_TA_VLAN_UNTAG2_MASK, align 8
  %82 = and i64 %80, %81
  %83 = shl i64 %82, 2
  %84 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %7, align 8
  %85 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %86, %83
  store i64 %87, i64* %85, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %49, %22
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.rtl8366_vlan_4k*, i8 signext, i32) #2

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i64) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i64*) #2

declare dso_local i32 @RTL8367_TA_DATA_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
