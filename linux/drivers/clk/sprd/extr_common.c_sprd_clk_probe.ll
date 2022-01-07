; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_common.c_sprd_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_common.c_sprd_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk_hw_onecell_data = type { i32, %struct.clk_hw** }
%struct.clk_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"Couldn't register clock %d - %s\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add clock provider\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_clk_probe(%struct.device* %0, %struct.clk_hw_onecell_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_hw_onecell_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.clk_hw_onecell_data* %1, %struct.clk_hw_onecell_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %13 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %18 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %17, i32 0, i32 1
  %19 = load %struct.clk_hw**, %struct.clk_hw*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %19, i64 %21
  %23 = load %struct.clk_hw*, %struct.clk_hw** %22, align 8
  store %struct.clk_hw* %23, %struct.clk_hw** %8, align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %25 = icmp ne %struct.clk_hw* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %29 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %35 = call i32 @devm_clk_hw_register(%struct.device* %33, %struct.clk_hw* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %60

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %51 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %52 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %49, i32 %50, %struct.clk_hw_onecell_data* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.clk_hw_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
