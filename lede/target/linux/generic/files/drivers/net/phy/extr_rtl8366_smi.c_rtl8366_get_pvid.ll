; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_get_pvid.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_get_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)* }
%struct.rtl8366_vlan_mc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32*)* @rtl8366_get_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_get_pvid(%struct.rtl8366_smi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rtl8366_vlan_mc, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %12 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.rtl8366_smi*, i32, i32*)**
  %16 = load i32 (%struct.rtl8366_smi*, i32, i32*)*, i32 (%struct.rtl8366_smi*, i32, i32*)** %15, align 8
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 %16(%struct.rtl8366_smi* %17, i32 %18, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %26 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %28, align 8
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %29(%struct.rtl8366_smi* %30, i32 %31, %struct.rtl8366_vlan_mc* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
