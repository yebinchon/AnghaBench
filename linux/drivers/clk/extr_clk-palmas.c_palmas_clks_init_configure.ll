; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_init_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-palmas.c_palmas_clks_init_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_clock_info = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Clock prep failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Ext config for %s failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_clock_info*)* @palmas_clks_init_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_clks_init_configure(%struct.palmas_clock_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.palmas_clock_info*, align 8
  %4 = alloca i32, align 4
  store %struct.palmas_clock_info* %0, %struct.palmas_clock_info** %3, align 8
  %5 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %6 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %9 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %10 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %15 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @palmas_update_bits(i32 %7, i32 %8, i32 %13, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %24 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %27 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %1
  %35 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %36 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %34
  %40 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %41 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_prepare(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %49 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %89

54:                                               ; preds = %39
  %55 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %56 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %59 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %64 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @palmas_ext_control_req_config(i32 %57, i32 %62, i64 %65, i32 1)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %54
  %70 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %71 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %74 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load %struct.palmas_clock_info*, %struct.palmas_clock_info** %3, align 8
  %81 = getelementptr inbounds %struct.palmas_clock_info, %struct.palmas_clock_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_unprepare(i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %89

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86, %34
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %69, %47, %22
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @palmas_ext_control_req_config(i32, i32, i64, i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
