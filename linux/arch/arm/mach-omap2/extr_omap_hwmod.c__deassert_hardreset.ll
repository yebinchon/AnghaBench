; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__deassert_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__deassert_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)*, i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)* }
%struct.omap_hwmod = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.omap_hwmod_rst_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@soc_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"omap_hwmod: %s: could not enable clockdomain %s: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"omap_hwmod: %s: failed to hardreset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*, i8*)* @_deassert_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_deassert_hardreset(%struct.omap_hwmod* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hwmod*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_hwmod_rst_info, align 4
  %7 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %11 = icmp ne %struct.omap_hwmod* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %107

15:                                               ; preds = %2
  %16 = load i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)*, i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 0), align 8
  %17 = icmp ne i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %107

21:                                               ; preds = %15
  %22 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @_lookup_hardreset(%struct.omap_hwmod* %22, i8* %23, %struct.omap_hwmod_rst_info* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %21
  %30 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %31 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @clkdm_deny_idle(%struct.TYPE_7__* %37)
  %39 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %40 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %43 = call i32 @clkdm_hwmod_enable(%struct.TYPE_7__* %41, %struct.omap_hwmod* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %48 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %51 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %107

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %61 = call i32 @_enable_clocks(%struct.omap_hwmod* %60)
  %62 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 2), align 8
  %63 = icmp ne i32 (%struct.omap_hwmod*)* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 2), align 8
  %66 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %67 = call i32 %65(%struct.omap_hwmod* %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)*, i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 0), align 8
  %70 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %71 = call i32 %69(%struct.omap_hwmod* %70, %struct.omap_hwmod_rst_info* %6)
  store i32 %71, i32* %7, align 4
  %72 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 1), align 8
  %73 = icmp ne i32 (%struct.omap_hwmod*)* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soc_ops, i32 0, i32 1), align 8
  %76 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %77 = call i32 %75(%struct.omap_hwmod* %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %80 = call i32 @_disable_clocks(%struct.omap_hwmod* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %87 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %92 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %97 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = call i32 @clkdm_allow_idle(%struct.TYPE_7__* %98)
  %100 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %101 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %104 = call i32 @clkdm_hwmod_disable(%struct.TYPE_7__* %102, %struct.omap_hwmod* %103)
  br label %105

105:                                              ; preds = %95, %90
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %46, %27, %18, %12
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @_lookup_hardreset(%struct.omap_hwmod*, i8*, %struct.omap_hwmod_rst_info*) #1

declare dso_local i32 @clkdm_deny_idle(%struct.TYPE_7__*) #1

declare dso_local i32 @clkdm_hwmod_enable(%struct.TYPE_7__*, %struct.omap_hwmod*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @_enable_clocks(%struct.omap_hwmod*) #1

declare dso_local i32 @_disable_clocks(%struct.omap_hwmod*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @clkdm_allow_idle(%struct.TYPE_7__*) #1

declare dso_local i32 @clkdm_hwmod_disable(%struct.TYPE_7__*, %struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
