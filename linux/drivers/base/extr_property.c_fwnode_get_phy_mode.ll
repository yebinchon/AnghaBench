; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@PHY_INTERFACE_MODE_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwnode_get_phy_mode(%struct.fwnode_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %8 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %13 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PHY_INTERFACE_MODE_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @phy_modes(i32 %26)
  %28 = call i32 @strcasecmp(i8* %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %30, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
