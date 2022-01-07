; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_sw_set_port_led.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_sw_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366S_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8366S_PORT_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366S_PORT_NUM_CPU = common dso_local global i32 0, align 4
@RTL8366S_LED_BLINKRATE_REG = common dso_local global i32 0, align 4
@RTL8366S_LED_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366s_sw_set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366s_sw_set_port_led(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %12)
  store %struct.rtl8366_smi* %13, %struct.rtl8366_smi** %8, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RTL8366S_NUM_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %21 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @RTL8366S_PORT_UNKNOWN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %64

29:                                               ; preds = %19
  %30 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RTL8366S_PORT_NUM_CPU, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @RTL8366S_LED_BLINKRATE_REG, align 4
  store i32 %36, i32* %11, align 4
  store i32 240, i32* %10, align 4
  %37 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  store i32 %41, i32* %9, align 4
  br label %58

42:                                               ; preds = %29
  %43 = load i32, i32* @RTL8366S_LED_CTRL_REG, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %45 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 4
  %48 = shl i32 15, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %50 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %54 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 4
  %57 = shl i32 %52, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %42, %35
  %59 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
