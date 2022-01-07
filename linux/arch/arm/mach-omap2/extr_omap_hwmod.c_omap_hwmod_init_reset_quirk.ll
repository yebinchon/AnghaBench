; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_init_reset_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_init_reset_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hwmod = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ti_sysc_module_data = type { i32 }
%struct.omap_hwmod_reset = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.omap_hwmod*, %struct.ti_sysc_module_data*, %struct.omap_hwmod_reset*, i32)* @omap_hwmod_init_reset_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hwmod_init_reset_quirk(%struct.device* %0, %struct.omap_hwmod* %1, %struct.ti_sysc_module_data* %2, %struct.omap_hwmod_reset* %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.omap_hwmod*, align 8
  %8 = alloca %struct.ti_sysc_module_data*, align 8
  %9 = alloca %struct.omap_hwmod_reset*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_hwmod_reset*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %7, align 8
  store %struct.ti_sysc_module_data* %2, %struct.ti_sysc_module_data** %8, align 8
  store %struct.omap_hwmod_reset* %3, %struct.omap_hwmod_reset** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %42, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.omap_hwmod_reset*, %struct.omap_hwmod_reset** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.omap_hwmod_reset, %struct.omap_hwmod_reset* %18, i64 %20
  store %struct.omap_hwmod_reset* %21, %struct.omap_hwmod_reset** %11, align 8
  %22 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %8, align 8
  %23 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.omap_hwmod_reset*, %struct.omap_hwmod_reset** %11, align 8
  %26 = getelementptr inbounds %struct.omap_hwmod_reset, %struct.omap_hwmod_reset* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.omap_hwmod_reset*, %struct.omap_hwmod_reset** %11, align 8
  %29 = getelementptr inbounds %struct.omap_hwmod_reset, %struct.omap_hwmod_reset* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strncmp(i32 %24, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %17
  %34 = load %struct.omap_hwmod_reset*, %struct.omap_hwmod_reset** %11, align 8
  %35 = getelementptr inbounds %struct.omap_hwmod_reset, %struct.omap_hwmod_reset* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.omap_hwmod*, %struct.omap_hwmod** %7, align 8
  %38 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %45

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %13

45:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
