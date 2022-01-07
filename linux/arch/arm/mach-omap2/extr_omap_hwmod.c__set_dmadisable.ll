; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__set_dmadisable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__set_dmadisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SYSC_HAS_DMADISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"omap_hwmod: %s: offset struct for sysconfig not provided in class\0A\00", align 1
@_HWMOD_STATE_ENABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"omap_hwmod: %s: dma can be disabled only from enabled state\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"omap_hwmod: %s: setting DMADISABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_set_dmadisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_dmadisable(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SYSC_HAS_DMADISABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %12
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %37 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %79

42:                                               ; preds = %26
  %43 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %44 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @_HWMOD_STATE_ENABLED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %50 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %79

55:                                               ; preds = %42
  %56 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %57 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %61 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  %63 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %64 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %78 = call i32 @_write_sysconfig(i32 %76, %struct.omap_hwmod* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %55, %48, %35, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @_write_sysconfig(i32, %struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
