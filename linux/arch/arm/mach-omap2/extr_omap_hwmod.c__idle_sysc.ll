; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__idle_sysc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__idle_sysc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SYSC_HAS_SIDLEMODE = common dso_local global i32 0, align 4
@HWMOD_SWSUP_SIDLE = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_FORCE = common dso_local global i32 0, align 4
@SYSC_HAS_ENAWAKEUP = common dso_local global i32 0, align 4
@SIDLE_SMART_WKUP = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_SMART_WKUP = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_SMART = common dso_local global i32 0, align 4
@SYSC_HAS_MIDLEMODE = common dso_local global i32 0, align 4
@HWMOD_SWSUP_MSTANDBY = common dso_local global i32 0, align 4
@HWMOD_FORCE_MSTANDBY = common dso_local global i32 0, align 4
@MSTANDBY_SMART_WKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hwmod*)* @_idle_sysc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_idle_sysc(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %124

13:                                               ; preds = %1
  %14 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %15 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %18 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SYSC_HAS_SIDLEMODE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %13
  %29 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HWMOD_SWSUP_SIDLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %44 = call i32 @_enable_wakeup(%struct.omap_hwmod* %43, i64* %5)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %47 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SIDLE_SMART_WKUP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @HWMOD_IDLEMODE_SMART_WKUP, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @_set_slave_idlemode(%struct.omap_hwmod* %62, i32 %63, i64* %5)
  br label %65

65:                                               ; preds = %61, %13
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SYSC_HAS_MIDLEMODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %65
  %71 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %72 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HWMOD_SWSUP_MSTANDBY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %79 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HWMOD_FORCE_MSTANDBY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77, %70
  %85 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  store i32 %85, i32* %3, align 4
  br label %110

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %93 = call i32 @_enable_wakeup(%struct.omap_hwmod* %92, i64* %5)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %96 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MSTANDBY_SMART_WKUP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @HWMOD_IDLEMODE_SMART_WKUP, align 4
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %94
  %108 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %84
  %111 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @_set_master_standbymode(%struct.omap_hwmod* %111, i32 %112, i64* %5)
  br label %114

114:                                              ; preds = %110, %65
  %115 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %116 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %123 = call i32 @_write_sysconfig(i64 %121, %struct.omap_hwmod* %122)
  br label %124

124:                                              ; preds = %12, %120, %114
  ret void
}

declare dso_local i32 @_enable_wakeup(%struct.omap_hwmod*, i64*) #1

declare dso_local i32 @_set_slave_idlemode(%struct.omap_hwmod*, i32, i64*) #1

declare dso_local i32 @_set_master_standbymode(%struct.omap_hwmod*, i32, i64*) #1

declare dso_local i32 @_write_sysconfig(i64, %struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
