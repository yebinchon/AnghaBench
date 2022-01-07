; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_switch_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367b.c_rtl8367b_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32, %struct.switch_dev }
%struct.switch_dev = type { i8*, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"RTL8367B\00", align 1
@RTL8367B_NUM_PORTS = common dso_local global i32 0, align 4
@RTL8367B_NUM_VIDS = common dso_local global i32 0, align 4
@rtl8367b_sw_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"switch registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367b_switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367b_switch_init(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %5 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %5, i32 0, i32 2
  store %struct.switch_dev* %6, %struct.switch_dev** %3, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %8 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %13 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @RTL8367B_NUM_PORTS, align 4
  %15 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @RTL8367B_NUM_VIDS, align 4
  %18 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %19 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 2
  store i32* @rtl8367b_sw_ops, i32** %21, align 8
  %22 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_name(i32 %24)
  %26 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %27 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %29 = call i32 @register_switch(%struct.switch_dev* %28, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %34 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @register_switch(%struct.switch_dev*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
