; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_reset_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_reset_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)* }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_reset_vlan(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca %struct.rtl8366_vlan_mc, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %8 = call i32 @rtl8366_enable_vlan(%struct.rtl8366_smi* %7, i32 0)
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %10 = call i32 @rtl8366_enable_vlan4k(%struct.rtl8366_smi* %9, i32 0)
  %11 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %4, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %4, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %4, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %4, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %4, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %24 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %26, align 8
  %28 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %27(%struct.rtl8366_smi* %28, i32 %29, %struct.rtl8366_vlan_mc* %4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @rtl8366_enable_vlan(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8366_enable_vlan4k(%struct.rtl8366_smi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
