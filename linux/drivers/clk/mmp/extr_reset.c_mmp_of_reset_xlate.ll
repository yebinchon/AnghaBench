; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_of_reset_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_of_reset_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i64, i32 }
%struct.of_phandle_args = type { i64, i64* }
%struct.mmp_clk_reset_unit = type { %struct.mmp_clk_reset_cell* }
%struct.mmp_clk_reset_cell = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)* @mmp_of_reset_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_of_reset_xlate(%struct.reset_controller_dev* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mmp_clk_reset_unit*, align 8
  %7 = alloca %struct.mmp_clk_reset_cell*, align 8
  %8 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %10 = call %struct.mmp_clk_reset_unit* @rcdev_to_unit(%struct.reset_controller_dev* %9)
  store %struct.mmp_clk_reset_unit* %10, %struct.mmp_clk_reset_unit** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %15 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %28 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %6, align 8
  %33 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %32, i32 0, i32 0
  %34 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %34, i64 %36
  store %struct.mmp_clk_reset_cell* %37, %struct.mmp_clk_reset_cell** %7, align 8
  %38 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %7, align 8
  %39 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %25

52:                                               ; preds = %47, %25
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %55 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.mmp_clk_reset_unit* @rcdev_to_unit(%struct.reset_controller_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
