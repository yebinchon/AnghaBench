; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_blinkrate.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_blinkrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_LED_BLINKRATE_REG = common dso_local global i32 0, align 4
@RTL8366RB_LED_BLINKRATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_blinkrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_blinkrate(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %10 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %9)
  store %struct.rtl8366_smi* %10, %struct.rtl8366_smi** %8, align 8
  %11 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %12 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %21 = load i32, i32* @RTL8366RB_LED_BLINKRATE_REG, align 4
  %22 = load i32, i32* @RTL8366RB_LED_BLINKRATE_MASK, align 4
  %23 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %20, i32 %21, i32 %22, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
