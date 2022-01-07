; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_defaults_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_defaults_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64, i64, i64, %struct.switch_dev_ops* }
%struct.switch_dev_ops = type { i32, i64, i64, i64, i64, i64 }

@VLAN_PORTS = common dso_local global i32 0, align 4
@PORT_PVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@PORT_LINK = common dso_local global i32 0, align 4
@GLOBAL_APPLY = common dso_local global i32 0, align 4
@GLOBAL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*)* @swconfig_defaults_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swconfig_defaults_init(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.switch_dev_ops*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %4 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %5 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %4, i32 0, i32 3
  %6 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %5, align 8
  store %struct.switch_dev_ops* %6, %struct.switch_dev_ops** %3, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %8 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %10 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %12 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %14 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %19 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @VLAN_PORTS, align 4
  %24 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %25 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %24, i32 0, i32 2
  %26 = call i32 @set_bit(i32 %23, i64* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %29 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %34 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @PORT_PVID, align 4
  %39 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %40 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i64* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %44 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %3, align 8
  %49 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %48, i32 0, i32 0
  %50 = call i32 @swconfig_find_attr_by_name(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @PORT_LINK, align 4
  %54 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %55 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %54, i32 0, i32 1
  %56 = call i32 @set_bit(i32 %53, i64* %55)
  br label %57

57:                                               ; preds = %52, %47, %42
  %58 = load i32, i32* @GLOBAL_APPLY, align 4
  %59 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %60 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i64* %60)
  %62 = load i32, i32* @GLOBAL_RESET, align 4
  %63 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %64 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %62, i64* %64)
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @swconfig_find_attr_by_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
