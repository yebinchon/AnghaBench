; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_rate_in.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_rate_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_NUM_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_BDTH_SW_MAX = common dso_local global i32 0, align 4
@RTL8366RB_BDTH_UNIT = common dso_local global i32 0, align 4
@RTL8366RB_BDTH_REG_DEFAULT = common dso_local global i32 0, align 4
@RTL8366RB_IB_BDTH_MASK = common dso_local global i32 0, align 4
@RTL8366RB_IB_PREIFG_MASK = common dso_local global i32 0, align 4
@RTL8366RB_QOS_DEFAULT_PREIFG = common dso_local global i32 0, align 4
@RTL8366RB_IB_PREIFG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_port_rate_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_port_rate_in(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
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
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTL8366RB_NUM_PORTS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %21 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RTL8366RB_BDTH_SW_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %34 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @RTL8366RB_BDTH_UNIT, align 4
  %39 = sdiv i32 %37, %38
  %40 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %41 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %48

43:                                               ; preds = %25, %19
  %44 = load i32, i32* @RTL8366RB_BDTH_REG_DEFAULT, align 4
  %45 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %46 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %50 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %51 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @RTL8366RB_IB_REG(i64 %52)
  %54 = load i32, i32* @RTL8366RB_IB_BDTH_MASK, align 4
  %55 = load i32, i32* @RTL8366RB_IB_PREIFG_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %58 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RTL8366RB_QOS_DEFAULT_PREIFG, align 4
  %62 = load i32, i32* @RTL8366RB_IB_PREIFG_OFFSET, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %49, i32 %53, i32 %56, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %48, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @RTL8366RB_IB_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
