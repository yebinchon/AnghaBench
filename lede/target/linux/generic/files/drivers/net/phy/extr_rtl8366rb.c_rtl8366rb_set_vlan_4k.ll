; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_set_vlan_4k.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_set_vlan_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8366_vlan_4k = type { i32, i32, i32, i32 }

@RTL8366RB_NUM_VIDS = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_MEMBER_MASK = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_UNTAG_MASK = common dso_local global i32 0, align 4
@RTL8366RB_FIDMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_VID_MASK = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_UNTAG_SHIFT = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_FID_MASK = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_TABLE_WRITE_BASE = common dso_local global i64 0, align 8
@RTL8366RB_TABLE_ACCESS_CTRL_REG = common dso_local global i64 0, align 8
@RTL8366RB_TABLE_VLAN_WRITE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)* @rtl8366rb_set_vlan_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_set_vlan_4k(%struct.rtl8366_smi* %0, %struct.rtl8366_vlan_4k* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca %struct.rtl8366_vlan_4k*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store %struct.rtl8366_vlan_4k* %1, %struct.rtl8366_vlan_4k** %5, align 8
  %9 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %10 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RTL8366RB_NUM_VIDS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %16 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTL8366RB_VLAN_MEMBER_MASK, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTL8366RB_VLAN_UNTAG_MASK, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %28 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RTL8366RB_FIDMAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20, %14, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %90

35:                                               ; preds = %26
  %36 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RTL8366RB_VLAN_VID_MASK, align 4
  %40 = and i32 %38, %39
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %43 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RTL8366RB_VLAN_MEMBER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %48 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RTL8366RB_VLAN_UNTAG_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @RTL8366RB_VLAN_UNTAG_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %46, %53
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.rtl8366_vlan_4k*, %struct.rtl8366_vlan_4k** %5, align 8
  %57 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RTL8366RB_VLAN_FID_MASK, align 4
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %81, %35
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %67 = load i64, i64* @RTL8366RB_VLAN_TABLE_WRITE_BASE, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %66, i64 %70, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %90

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %62

84:                                               ; preds = %62
  %85 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %86 = load i64, i64* @RTL8366RB_TABLE_ACCESS_CTRL_REG, align 8
  %87 = load i32, i32* @RTL8366RB_TABLE_VLAN_WRITE_CTRL, align 4
  %88 = call i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi* %85, i64 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %78, %32
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @rtl8366_smi_write_reg(%struct.rtl8366_smi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
