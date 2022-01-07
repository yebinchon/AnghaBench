; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_tegra_cvb_remove_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_tegra_cvb_remove_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cvb_table = type { %struct.cvb_table_freq_entry* }
%struct.cvb_table_freq_entry = type { i64 }

@MAX_DVFS_FREQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_cvb_remove_opp_table(%struct.device* %0, %struct.cvb_table* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cvb_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cvb_table_freq_entry*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cvb_table* %1, %struct.cvb_table** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MAX_DVFS_FREQS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.cvb_table*, %struct.cvb_table** %5, align 8
  %15 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %14, i32 0, i32 0
  %16 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %16, i64 %18
  store %struct.cvb_table_freq_entry* %19, %struct.cvb_table_freq_entry** %8, align 8
  %20 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %8, align 8
  %21 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %8, align 8
  %26 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %13
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.cvb_table_freq_entry*, %struct.cvb_table_freq_entry** %8, align 8
  %34 = getelementptr inbounds %struct.cvb_table_freq_entry, %struct.cvb_table_freq_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_pm_opp_remove(%struct.device* %32, i64 %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %9

40:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @dev_pm_opp_remove(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
