; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_disable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_set_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_PECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl8366rb_sw_set_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_set_port_disable(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %11)
  store %struct.rtl8366_smi* %12, %struct.rtl8366_smi** %8, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RTL8366RB_NUM_PORTS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %23 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %10, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %36 = load i32, i32* @RTL8366RB_PECR, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_rmwr(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
