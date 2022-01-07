; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_del_wkdep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_del_wkdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clockdomain*, %struct.clockdomain*)* }
%struct.clockdomain = type { i32, i32 }
%struct.clkdm_dep = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@arch_clkdm = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"clockdomain: hardware cannot set/clear wake up of %s when %s wakes up\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"clockdomain: hardware will no longer wake up %s after %s wakes up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*, %struct.clockdomain*)* @_clkdm_del_wkdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_clkdm_del_wkdep(%struct.clockdomain* %0, %struct.clockdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.clockdomain*, align 8
  %6 = alloca %struct.clkdm_dep*, align 8
  %7 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.clockdomain* %1, %struct.clockdomain** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %9 = icmp ne %struct.clockdomain* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %12 = icmp ne %struct.clockdomain* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %10
  %17 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %18 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.clkdm_dep* @_clkdm_deps_lookup(%struct.clockdomain* %17, i32 %20)
  store %struct.clkdm_dep* %21, %struct.clkdm_dep** %6, align 8
  %22 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %23 = call i64 @IS_ERR(%struct.clkdm_dep* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.clkdm_dep* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.clockdomain*, %struct.clockdomain*)*, i32 (%struct.clockdomain*, %struct.clockdomain*)** %33, align 8
  %35 = icmp ne i32 (%struct.clockdomain*, %struct.clockdomain*)* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %44 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %47 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %53 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %57 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %62 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %65 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.clockdomain*, %struct.clockdomain*)*, i32 (%struct.clockdomain*, %struct.clockdomain*)** %69, align 8
  %71 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %72 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %73 = call i32 %70(%struct.clockdomain* %71, %struct.clockdomain* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %60, %51
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %42, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.clkdm_dep* @_clkdm_deps_lookup(%struct.clockdomain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clkdm_dep*) #1

declare dso_local i32 @PTR_ERR(%struct.clkdm_dep*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
