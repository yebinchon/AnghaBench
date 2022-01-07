; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__wait_softreset_complete.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__wait_softreset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.omap_hwmod_class_sysconfig* }
%struct.omap_hwmod_class_sysconfig = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SYSS_HAS_RESET_STATUS = common dso_local global i32 0, align 4
@SYSS_RESETDONE_MASK = common dso_local global i32 0, align 4
@MAX_MODULE_SOFTRESET_WAIT = common dso_local global i32 0, align 4
@SYSC_HAS_RESET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_wait_softreset_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wait_softreset_complete(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca %struct.omap_hwmod_class_sysconfig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %9, align 8
  store %struct.omap_hwmod_class_sysconfig* %10, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %11 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SYSS_HAS_RESET_STATUS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %24 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %23, i64 %26)
  %28 = load i32, i32* @SYSS_RESETDONE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @omap_test_timeout(i32 %29, i32 %30, i32 %31)
  br label %61

33:                                               ; preds = %17, %1
  %34 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %35 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SYSC_HAS_RESET_STATUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  store i32 %46, i32* %4, align 4
  %47 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %48 = load %struct.omap_hwmod_class_sysconfig*, %struct.omap_hwmod_class_sysconfig** %3, align 8
  %49 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, %struct.omap_hwmod_class_sysconfig* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %47, i64 %50)
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @omap_test_timeout(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %40, %33
  br label %61

61:                                               ; preds = %60, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @omap_test_timeout(i32, i32, i32) #1

declare dso_local i32 @omap_hwmod_read(%struct.omap_hwmod*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
