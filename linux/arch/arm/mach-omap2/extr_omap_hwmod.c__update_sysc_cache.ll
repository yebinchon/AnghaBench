; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__update_sysc_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__update_sysc_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"omap_hwmod: %s: cannot read OCP_SYSCONFIG: not defined on hwmod's class\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYSC_NO_CACHE = common dso_local global i32 0, align 4
@_HWMOD_SYSCONFIG_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_update_sysc_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_update_sysc_cache(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %4 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %5 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %19 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %20 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %18, i32 %25)
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SYSC_NO_CACHE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %17
  %40 = load i32, i32* @_HWMOD_SYSCONFIG_LOADED, align 4
  %41 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %17
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @omap_hwmod_read(%struct.omap_hwmod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
