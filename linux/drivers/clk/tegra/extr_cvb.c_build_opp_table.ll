; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_build_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_build_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cvb_table = type { i32, i32, %struct.cvb_table_freq_entry*, i32, i32 }
%struct.cvb_table_freq_entry = type { i64, i32 }
%struct.rail_alignment = type { i32 }

@UP = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@MAX_DVFS_FREQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cvb_table*, %struct.rail_alignment*, i32, i64)* @build_opp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_opp_table(%struct.device* %0, %struct.cvb_table* %1, %struct.rail_alignment* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.cvb_table*, align 8
  %9 = alloca %struct.rail_alignment*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cvb_table_freq_entry*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.cvb_table* %1, %struct.cvb_table** %8, align 8
  store %struct.rail_alignment* %2, %struct.rail_alignment** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.cvb_table*, %struct.cvb_table** %8, align 8
  %19 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rail_alignment*, %struct.rail_alignment** %9, align 8
  %22 = load i32, i32* @UP, align 4
  %23 = call i32 @round_voltage(i32 %20, %struct.rail_alignment* %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.cvb_table*, %struct.cvb_table** %8, align 8
  %25 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rail_alignment*, %struct.rail_alignment** %9, align 8
  %28 = load i32, i32* @DOWN, align 4
  %29 = call i32 @round_voltage(i32 %26, %struct.rail_alignment* %27, i32 %28)
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %82, %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @MAX_DVFS_FREQS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  %35 = load %struct.cvb_table*, %struct.cvb_table** %8, align 8
  %36 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %35, i32 0, i32 2
  %37 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %37, i64 %39
  store %struct.cvb_table_freq_entry* %40, %struct.cvb_table_freq_entry** %17, align 8
  %41 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %17, align 8
  %42 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %17, align 8
  %47 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %34
  br label %85

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.cvb_table*, %struct.cvb_table** %8, align 8
  %55 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %17, align 8
  %58 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %57, i32 0, i32 1
  %59 = call i32 @get_cvb_voltage(i32 %53, i32 %56, i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.cvb_table*, %struct.cvb_table** %8, align 8
  %62 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rail_alignment*, %struct.rail_alignment** %9, align 8
  %65 = call i32 @round_cvb_voltage(i32 %60, i32 %63, %struct.rail_alignment* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @clamp(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %17, align 8
  %72 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = call i32 @dev_pm_opp_add(%struct.device* %70, i64 %73, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %52
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %86

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %30

85:                                               ; preds = %51, %30
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @round_voltage(i32, %struct.rail_alignment*, i32) #1

declare dso_local i32 @get_cvb_voltage(i32, i32, i32*) #1

declare dso_local i32 @round_cvb_voltage(i32, i32, %struct.rail_alignment*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @dev_pm_opp_add(%struct.device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
