; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__disable_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__disable_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SYSC_HAS_ENAWAKEUP = common dso_local global i32 0, align 4
@SIDLE_SMART_WKUP = common dso_local global i32 0, align 4
@MSTANDBY_SMART_WKUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"omap_hwmod: %s: offset struct for sysconfig not provided in class\0A\00", align 1
@HWMOD_IDLEMODE_SMART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*, i32*)* @_disable_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_disable_wakeup(%struct.omap_hwmod* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hwmod*, align 8
  %5 = alloca i32*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %14 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %12
  %24 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %25 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SIDLE_SMART_WKUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %23
  %35 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MSTANDBY_SMART_WKUP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34, %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %123

48:                                               ; preds = %34, %23, %12
  %49 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %50 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %59 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %123

64:                                               ; preds = %48
  %65 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %66 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %77 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %75, %64
  %91 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %92 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SIDLE_SMART_WKUP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %103 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @_set_slave_idlemode(%struct.omap_hwmod* %102, i32 %103, i32* %104)
  br label %106

106:                                              ; preds = %101, %90
  %107 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %108 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MSTANDBY_SMART_WKUP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %119 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @_set_master_standbymode(%struct.omap_hwmod* %118, i32 %119, i32* %120)
  br label %122

122:                                              ; preds = %117, %106
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %57, %45
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @_set_slave_idlemode(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_set_master_standbymode(%struct.omap_hwmod*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
