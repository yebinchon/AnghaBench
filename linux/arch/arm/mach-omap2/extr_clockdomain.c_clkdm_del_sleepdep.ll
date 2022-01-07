; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_del_sleepdep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_del_sleepdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32 }
%struct.clkdm_dep = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_del_sleepdep(%struct.clockdomain* %0, %struct.clockdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.clockdomain*, align 8
  %6 = alloca %struct.clkdm_dep*, align 8
  %7 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.clockdomain* %1, %struct.clockdomain** %5, align 8
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
  br label %47

16:                                               ; preds = %10
  %17 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %18 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 0
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
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %16
  %29 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %30 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pwrdm_lock(i32 %34)
  %36 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %37 = load %struct.clockdomain*, %struct.clockdomain** %5, align 8
  %38 = call i32 @_clkdm_del_sleepdep(%struct.clockdomain* %36, %struct.clockdomain* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %40 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pwrdm_unlock(i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %25, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.clkdm_dep* @_clkdm_deps_lookup(%struct.clockdomain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clkdm_dep*) #1

declare dso_local i32 @PTR_ERR(%struct.clkdm_dep*) #1

declare dso_local i32 @pwrdm_lock(i32) #1

declare dso_local i32 @_clkdm_del_sleepdep(%struct.clockdomain*, %struct.clockdomain*) #1

declare dso_local i32 @pwrdm_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
