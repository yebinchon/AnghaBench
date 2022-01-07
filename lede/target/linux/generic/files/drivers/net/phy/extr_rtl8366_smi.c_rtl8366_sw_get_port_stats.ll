; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i64, i64 }
%struct.rtl8366_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtl8366_smi*, i32, i32, i64*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_get_port_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl8366_smi*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %16 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %15)
  store %struct.rtl8366_smi* %16, %struct.rtl8366_smi** %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %12, align 8
  %19 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  %26 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %12, align 8
  %27 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.rtl8366_smi*, i32, i32, i64*)*, i32 (%struct.rtl8366_smi*, i32, i32, i64*)** %29, align 8
  %31 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 %30(%struct.rtl8366_smi* %31, i32 %32, i32 %33, i64* %13)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %25
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.switch_port_stats*, %struct.switch_port_stats** %9, align 8
  %42 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %12, align 8
  %44 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.rtl8366_smi*, i32, i32, i64*)*, i32 (%struct.rtl8366_smi*, i32, i32, i64*)** %46, align 8
  %48 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %47(%struct.rtl8366_smi* %48, i32 %49, i32 %50, i64* %13)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %39
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.switch_port_stats*, %struct.switch_port_stats** %9, align 8
  %59 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %54, %37, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
