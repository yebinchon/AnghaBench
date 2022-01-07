; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_set_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)* }
%struct.rtl8366_vlan_4k = type { i8*, i8*, i8* }
%struct.rtl8366_vlan_mc = type { i32, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i8*, i8*, i8*)* @rtl8366_set_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_set_vlan(%struct.rtl8366_smi* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8366_smi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rtl8366_vlan_4k, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl8366_vlan_mc, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %17 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %19, align 8
  %21 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %20(%struct.rtl8366_smi* %21, i32 %22, %struct.rtl8366_vlan_4k* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %92

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %12, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %12, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %12, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, %struct.rtl8366_vlan_4k*)** %38, align 8
  %40 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %41 = call i32 %39(%struct.rtl8366_smi* %40, %struct.rtl8366_vlan_4k* %12)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %92

46:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %50 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %55 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %57, align 8
  %59 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 %58(%struct.rtl8366_smi* %59, i32 %60, %struct.rtl8366_vlan_mc* %15)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %92

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %15, i32 0, i32 3
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %15, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %15, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %79 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_mc*)** %81, align 8
  %83 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 %82(%struct.rtl8366_smi* %83, i32 %84, %struct.rtl8366_vlan_mc* %15)
  store i32 %85, i32* %13, align 4
  br label %90

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %47

90:                                               ; preds = %71, %47
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %64, %44, %26
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
