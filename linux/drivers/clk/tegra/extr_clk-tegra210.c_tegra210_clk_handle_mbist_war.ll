; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_clk_handle_mbist_war.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_clk_handle_mbist_war.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra210_domain_mbist_war = type { i32, i64, i32 (%struct.tegra210_domain_mbist_war*)* }

@tegra210_pg_mbist_war = common dso_local global %struct.tegra210_domain_mbist_war* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"unknown domain id in MBIST WAR handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lvl2_ovr_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra210_clk_handle_mbist_war(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra210_domain_mbist_war*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** @tegra210_pg_mbist_war, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.tegra210_domain_mbist_war* %7)
  %9 = icmp uge i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** @tegra210_pg_mbist_war, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %15, i64 %17
  store %struct.tegra210_domain_mbist_war* %18, %struct.tegra210_domain_mbist_war** %5, align 8
  %19 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %20 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %19, i32 0, i32 2
  %21 = load i32 (%struct.tegra210_domain_mbist_war*)*, i32 (%struct.tegra210_domain_mbist_war*)** %20, align 8
  %22 = icmp ne i32 (%struct.tegra210_domain_mbist_war*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %64

24:                                               ; preds = %14
  %25 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %26 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %31 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %29, %24
  %38 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %39 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %42 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_bulk_prepare_enable(i64 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %64

49:                                               ; preds = %37
  %50 = call i32 @mutex_lock(i32* @lvl2_ovr_lock)
  %51 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %52 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %51, i32 0, i32 2
  %53 = load i32 (%struct.tegra210_domain_mbist_war*)*, i32 (%struct.tegra210_domain_mbist_war*)** %52, align 8
  %54 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %55 = call i32 %53(%struct.tegra210_domain_mbist_war* %54)
  %56 = call i32 @mutex_unlock(i32* @lvl2_ovr_lock)
  %57 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %58 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tegra210_domain_mbist_war*, %struct.tegra210_domain_mbist_war** %5, align 8
  %61 = getelementptr inbounds %struct.tegra210_domain_mbist_war, %struct.tegra210_domain_mbist_war* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_bulk_disable_unprepare(i64 %59, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %49, %47, %34, %23, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(%struct.tegra210_domain_mbist_war*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
