; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__ocp_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__ocp_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@SYSC_HAS_SOFTRESET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@_HWMOD_STATE_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"omap_hwmod: %s: reset can only be entered from enabled state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HWMOD_CONTROL_OPT_CLKS_IN_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"omap_hwmod: %s: resetting via OCP SOFTRESET\0A\00", align 1
@MAX_MODULE_SOFTRESET_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"omap_hwmod: %s: softreset failed (waited %d usec)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"omap_hwmod: %s: softreset in %d usec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_ocp_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocp_softreset(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %8 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SYSC_HAS_SOFTRESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13, %1
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %126

27:                                               ; preds = %13
  %28 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %29 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_HWMOD_STATE_ENABLED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %35 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %126

40:                                               ; preds = %27
  %41 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HWMOD_CONTROL_OPT_CLKS_IN_RESET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %49 = call i32 @_enable_optional_clocks(%struct.omap_hwmod* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %52 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %56 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  %58 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %59 = call i32 @_set_softreset(%struct.omap_hwmod* %58, i32* %4)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %114

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %66 = call i32 @_write_sysconfig(i32 %64, %struct.omap_hwmod* %65)
  %67 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %68 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %63
  %76 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %77 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @udelay(i64 %82)
  br label %84

84:                                               ; preds = %75, %63
  %85 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %86 = call i32 @_wait_softreset_complete(%struct.omap_hwmod* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %92 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %95 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %114

98:                                               ; preds = %84
  %99 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %100 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98
  %105 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %106 = call i32 @_clear_softreset(%struct.omap_hwmod* %105, i32* %4)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %113 = call i32 @_write_sysconfig(i32 %111, %struct.omap_hwmod* %112)
  br label %114

114:                                              ; preds = %110, %109, %90, %62
  %115 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %116 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HWMOD_CONTROL_OPT_CLKS_IN_RESET, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %123 = call i32 @_disable_optional_clocks(%struct.omap_hwmod* %122)
  br label %124

124:                                              ; preds = %121, %114
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %33, %24
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @_enable_optional_clocks(%struct.omap_hwmod*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @_set_softreset(%struct.omap_hwmod*, i32*) #1

declare dso_local i32 @_write_sysconfig(i32, %struct.omap_hwmod*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @_wait_softreset_complete(%struct.omap_hwmod*) #1

declare dso_local i32 @_clear_softreset(%struct.omap_hwmod*, i32*) #1

declare dso_local i32 @_disable_optional_clocks(%struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
