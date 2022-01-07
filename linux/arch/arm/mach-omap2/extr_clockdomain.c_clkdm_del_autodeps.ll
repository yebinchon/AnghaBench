; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_del_autodeps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_del_autodeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_autodep = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.clockdomain = type { i32, i32 }

@autodeps = common dso_local global %struct.clkdm_autodep* null, align 8
@CLKDM_NO_AUTODEPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"clockdomain: %s: removing %s sleepdep/wkdep\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clkdm_del_autodeps(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca %struct.clkdm_autodep*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %4 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** @autodeps, align 8
  %5 = icmp ne %struct.clkdm_autodep* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %8 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLKDM_NO_AUTODEPS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  br label %56

14:                                               ; preds = %6
  %15 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** @autodeps, align 8
  store %struct.clkdm_autodep* %15, %struct.clkdm_autodep** %3, align 8
  br label %16

16:                                               ; preds = %53, %14
  %17 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %18 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %24 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i64 @IS_ERR(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %53

30:                                               ; preds = %22
  %31 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %32 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %35 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39)
  %41 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %42 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %43 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @_clkdm_del_sleepdep(%struct.clockdomain* %41, %struct.TYPE_6__* %45)
  %47 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %48 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %49 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @_clkdm_del_wkdep(%struct.clockdomain* %47, %struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %30, %29
  %54 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %55 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %54, i32 1
  store %struct.clkdm_autodep* %55, %struct.clkdm_autodep** %3, align 8
  br label %16

56:                                               ; preds = %13, %16
  ret void
}

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @_clkdm_del_sleepdep(%struct.clockdomain*, %struct.TYPE_6__*) #1

declare dso_local i32 @_clkdm_del_wkdep(%struct.clockdomain*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
