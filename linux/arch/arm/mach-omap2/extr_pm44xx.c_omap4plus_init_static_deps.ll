; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm44xx.c_omap4plus_init_static_deps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm44xx.c_omap4plus_init_static_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_dep_map = type { i64, i64 }
%struct.clockdomain = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Failed lookup %s or %s for wakeup dependency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to add %s -> %s wakeup dependency(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.static_dep_map*)* @omap4plus_init_static_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4plus_init_static_deps(%struct.static_dep_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.static_dep_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clockdomain*, align 8
  %6 = alloca %struct.clockdomain*, align 8
  store %struct.static_dep_map* %0, %struct.static_dep_map** %3, align 8
  %7 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %8 = icmp ne %struct.static_dep_map* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %56, %10
  %12 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %13 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %18 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.clockdomain* @clkdm_lookup(i64 %19)
  store %struct.clockdomain* %20, %struct.clockdomain** %5, align 8
  %21 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %22 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.clockdomain* @clkdm_lookup(i64 %23)
  store %struct.clockdomain* %24, %struct.clockdomain** %6, align 8
  %25 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %26 = icmp ne %struct.clockdomain* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %29 = icmp ne %struct.clockdomain* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %32 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %35 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %60

40:                                               ; preds = %27
  %41 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %42 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %43 = call i32 @clkdm_add_wkdep(%struct.clockdomain* %41, %struct.clockdomain* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %48 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %51 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %40
  %57 = load %struct.static_dep_map*, %struct.static_dep_map** %3, align 8
  %58 = getelementptr inbounds %struct.static_dep_map, %struct.static_dep_map* %57, i32 1
  store %struct.static_dep_map* %58, %struct.static_dep_map** %3, align 8
  br label %11

59:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %46, %30, %9
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.clockdomain* @clkdm_lookup(i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, ...) #1

declare dso_local i32 @clkdm_add_wkdep(%struct.clockdomain*, %struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
