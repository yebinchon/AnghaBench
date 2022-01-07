; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clk = type { i32 }

@arch_clkdm = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clockdomain: %s: disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_clk_disable(%struct.clockdomain* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %6 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %7 = icmp ne %struct.clockdomain* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %16, align 8
  %18 = icmp ne i32 (%struct.clockdomain*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %11, %8, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %14
  %23 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %24 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pwrdm_lock(i32 %26)
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = call i64 @__clk_get_enable_count(%struct.clk* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %33 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %81

37:                                               ; preds = %31, %22
  %38 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %39 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %44 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pwrdm_unlock(i32 %46)
  %48 = call i32 @WARN_ON(i32 1)
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %37
  %52 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %53 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %57 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %62 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pwrdm_unlock(i32 %64)
  store i32 0, i32* %3, align 4
  br label %87

66:                                               ; preds = %51
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %68, align 8
  %70 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %71 = call i32 %69(%struct.clockdomain* %70)
  %72 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %73 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pwrdm_state_switch_nolock(i32 %75)
  %77 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %78 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %66, %36
  %82 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %83 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pwrdm_unlock(i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %60, %42, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @pwrdm_lock(i32) #1

declare dso_local i64 @__clk_get_enable_count(%struct.clk*) #1

declare dso_local i32 @pwrdm_unlock(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
