; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32, i32, i32, i64, i64, i32, i32, i32, i32* }

@rtl8367b_smi_ops = common dso_local global i32 0, align 4
@RTL8367B_NUM_PORTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"cpu_port\00", align 1
@RTL8367B_CPU_PORT_NUM = common dso_local global i64 0, align 8
@RTL8367B_NUM_VLANS = common dso_local global i32 0, align 4
@rtl8367b_mib_counters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtl8367b_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.rtl8366_smi* @rtl8366_smi_probe(%struct.platform_device* %6)
  store %struct.rtl8366_smi* %7, %struct.rtl8366_smi** %4, align 8
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %9 = call i64 @IS_ERR(%struct.rtl8366_smi* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.rtl8366_smi* %12)
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %15, i32 0, i32 0
  store i32 1500, i32* %16, align 8
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %17, i32 0, i32 1
  store i32 185, i32* %18, align 4
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %19, i32 0, i32 2
  store i32 184, i32* %20, align 8
  %21 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %22 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %21, i32 0, i32 8
  store i32* @rtl8367b_smi_ops, i32** %22, align 8
  %23 = load i64, i64* @RTL8367B_NUM_PORTS, align 8
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %25 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %31 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %30, i32 0, i32 4
  %32 = call i64 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %14
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %36 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %39 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %14
  %43 = load i64, i64* @RTL8367B_CPU_PORT_NUM, align 8
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %45 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* @RTL8367B_NUM_VLANS, align 4
  %48 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %49 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @rtl8367b_mib_counters, align 4
  %51 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %52 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @rtl8367b_mib_counters, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %56 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %58 = call i32 @rtl8366_smi_init(%struct.rtl8366_smi* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %77

62:                                               ; preds = %46
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.rtl8366_smi* %64)
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %67 = call i32 @rtl8367b_switch_init(%struct.rtl8366_smi* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %81

72:                                               ; preds = %70
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %73, %struct.rtl8366_smi* null)
  %75 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %76 = call i32 @rtl8366_smi_cleanup(%struct.rtl8366_smi* %75)
  br label %77

77:                                               ; preds = %72, %61
  %78 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %79 = call i32 @kfree(%struct.rtl8366_smi* %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %71, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.rtl8366_smi* @rtl8366_smi_probe(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtl8366_smi*) #1

declare dso_local i32 @PTR_ERR(%struct.rtl8366_smi*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rtl8366_smi_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8367b_switch_init(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_smi_cleanup(%struct.rtl8366_smi*) #1

declare dso_local i32 @kfree(%struct.rtl8366_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
