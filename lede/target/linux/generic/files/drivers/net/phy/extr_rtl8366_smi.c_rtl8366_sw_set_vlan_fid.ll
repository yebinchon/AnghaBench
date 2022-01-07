; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_set_vlan_fid.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_set_vlan_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtl8366_vlan_4k = type { i32, i32 }
%struct.rtl8366_smi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_set_vlan_fid(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_vlan_4k, align 4
  %9 = alloca %struct.rtl8366_smi*, align 8
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %11)
  store %struct.rtl8366_smi* %12, %struct.rtl8366_smi** %9, align 8
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %9, align 8
  %14 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %16, align 8
  %18 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %9, align 8
  %19 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %17(%struct.rtl8366_smi* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %74

27:                                               ; preds = %3
  %28 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %29 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %35 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %39 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33, %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %33
  %46 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %9, align 8
  %47 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %49, align 8
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %9, align 8
  %52 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %53 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %50(%struct.rtl8366_smi* %51, i32 %54, %struct.rtl8366_vlan_4k* %8)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %45
  %61 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %9, align 8
  %62 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %63 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %70 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rtl8366_set_vlan(%struct.rtl8366_smi* %61, i32 %64, i32 %66, i32 %68, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %60, %58, %42, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.rtl8366_smi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
