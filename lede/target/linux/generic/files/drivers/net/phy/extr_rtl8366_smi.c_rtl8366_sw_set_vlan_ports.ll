; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_set_vlan_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_set_vlan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.rtl8366_smi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rtl8366_smi*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_set_vlan_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca %struct.switch_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %14 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %13)
  store %struct.rtl8366_smi* %14, %struct.rtl8366_smi** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %16 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %18, align 8
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %21 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %22 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %19(%struct.rtl8366_smi* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %103

29:                                               ; preds = %2
  %30 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.switch_port*, %struct.switch_port** %32, align 8
  %34 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %33, i64 0
  store %struct.switch_port* %34, %struct.switch_port** %7, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %90, %29
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  %42 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %43 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %49 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %41
  %56 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %57 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %55, %41
  %63 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %64 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %65 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtl8366_get_pvid(%struct.rtl8366_smi* %63, i32 %66, i32* %12)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %103

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %77 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %78 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %81 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rtl8366_set_pvid(%struct.rtl8366_smi* %76, i32 %79, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %103

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %94 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %93, i32 1
  store %struct.switch_port* %94, %struct.switch_port** %7, align 8
  br label %35

95:                                               ; preds = %35
  %96 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %97 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %98 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @rtl8366_set_vlan(%struct.rtl8366_smi* %96, i32 %99, i32 %100, i32 %101, i32 0)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %86, %70, %26
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8366_get_pvid(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @rtl8366_set_pvid(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.rtl8366_smi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
