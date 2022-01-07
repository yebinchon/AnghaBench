; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-bulk.c___clk_bulk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-bulk.c___clk_bulk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk_bulk_data = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get clk '%s': %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.clk_bulk_data*, i32)* @__clk_bulk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_bulk_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.clk_bulk_data* %2, %struct.clk_bulk_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %22, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %17, i64 %19
  %21 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %12

25:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %90, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @clk_get(%struct.device* %31, i32 %37)
  %39 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %42, i32 0, i32 1
  store i32* %38, i32** %43, align 8
  %44 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %44, i64 %46
  %48 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %30
  %53 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %53, i64 %55
  %57 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %60, i64 %62
  %64 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %90

73:                                               ; preds = %69, %52
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %73
  br label %94

89:                                               ; preds = %30
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %26

93:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %99

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %97 = call i32 @clk_bulk_put(i32 %95, %struct.clk_bulk_data* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32* @clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @clk_bulk_put(i32, %struct.clk_bulk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
