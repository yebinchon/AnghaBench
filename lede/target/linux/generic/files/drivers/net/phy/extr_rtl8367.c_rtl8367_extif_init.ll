; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_extif_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_extif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }
%struct.rtl8367_extif_config = type { i32, i32, i32, i32 }

@RTL8367_EXTIF_MODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, %struct.rtl8367_extif_config*)* @rtl8367_extif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_extif_init(%struct.rtl8366_smi* %0, i32 %1, %struct.rtl8367_extif_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8367_extif_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rtl8367_extif_config* %2, %struct.rtl8367_extif_config** %7, align 8
  %10 = load %struct.rtl8367_extif_config*, %struct.rtl8367_extif_config** %7, align 8
  %11 = icmp ne %struct.rtl8367_extif_config* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.rtl8367_extif_config*, %struct.rtl8367_extif_config** %7, align 8
  %14 = getelementptr inbounds %struct.rtl8367_extif_config, %struct.rtl8367_extif_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @RTL8367_EXTIF_MODE_DISABLED, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rtl8367_extif_set_mode(%struct.rtl8366_smi* %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RTL8367_EXTIF_MODE_DISABLED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.rtl8367_extif_config*, %struct.rtl8367_extif_config** %7, align 8
  %36 = getelementptr inbounds %struct.rtl8367_extif_config, %struct.rtl8367_extif_config* %35, i32 0, i32 3
  %37 = call i32 @rtl8367_extif_set_force(%struct.rtl8366_smi* %33, i32 %34, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.rtl8367_extif_config*, %struct.rtl8367_extif_config** %7, align 8
  %46 = getelementptr inbounds %struct.rtl8367_extif_config, %struct.rtl8367_extif_config* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtl8367_extif_config*, %struct.rtl8367_extif_config** %7, align 8
  %49 = getelementptr inbounds %struct.rtl8367_extif_config, %struct.rtl8367_extif_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rtl8367_extif_set_rgmii_delay(%struct.rtl8366_smi* %43, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %28
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54, %40, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @rtl8367_extif_set_mode(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8367_extif_set_force(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @rtl8367_extif_set_rgmii_delay(%struct.rtl8366_smi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
