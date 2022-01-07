; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_get_dram_win_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_get_dram_win_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbus_dram_target_info = type { i32, i32, %struct.mbus_dram_window* }
%struct.mbus_dram_window = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"missing DRAM information\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid dram address %pa\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvebu_mbus_get_dram_win_info(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mbus_dram_target_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbus_dram_window*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %11, %struct.mbus_dram_target_info** %8, align 8
  %12 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %8, align 8
  %13 = icmp ne %struct.mbus_dram_target_info* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %8, align 8
  %22 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %8, align 8
  %27 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %26, i32 0, i32 2
  %28 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %28, i64 %30
  store %struct.mbus_dram_window* %31, %struct.mbus_dram_window** %10, align 8
  %32 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %10, align 8
  %33 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %10, align 8
  %40 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %10, align 8
  %43 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sub nsw i32 %45, 1
  %47 = icmp sle i32 %38, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %8, align 8
  %50 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %10, align 8
  %54 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %65

57:                                               ; preds = %37, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %19

61:                                               ; preds = %19
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %48, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
