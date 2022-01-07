; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__shutdown_sysc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__shutdown_sysc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SYSC_HAS_SIDLEMODE = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_FORCE = common dso_local global i32 0, align 4
@SYSC_HAS_MIDLEMODE = common dso_local global i32 0, align 4
@SYSC_HAS_AUTOIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hwmod*)* @_shutdown_sysc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_shutdown_sysc(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %5 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %6 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %14 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %17 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SYSC_HAS_SIDLEMODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %29 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  %30 = call i32 @_set_slave_idlemode(%struct.omap_hwmod* %28, i32 %29, i32* %3)
  br label %31

31:                                               ; preds = %27, %12
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SYSC_HAS_MIDLEMODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %38 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  %39 = call i32 @_set_master_standbymode(%struct.omap_hwmod* %37, i32 %38, i32* %3)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SYSC_HAS_AUTOIDLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %47 = call i32 @_set_module_autoidle(%struct.omap_hwmod* %46, i32 1, i32* %3)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %51 = call i32 @_write_sysconfig(i32 %49, %struct.omap_hwmod* %50)
  br label %52

52:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @_set_slave_idlemode(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_set_master_standbymode(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_set_module_autoidle(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_write_sysconfig(i32, %struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
