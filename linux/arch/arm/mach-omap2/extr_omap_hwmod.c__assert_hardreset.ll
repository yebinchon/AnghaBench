; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__assert_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__assert_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)* }
%struct.omap_hwmod = type { i32 }
%struct.omap_hwmod_rst_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@soc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*, i8*)* @_assert_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_assert_hardreset(%struct.omap_hwmod* %0, i8* %1) #0 {
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
  br label %34

15:                                               ; preds = %2
  %16 = load i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)*, i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ops, i32 0, i32 0), align 8
  %17 = icmp ne i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

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
  br label %34

29:                                               ; preds = %21
  %30 = load i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)*, i32 (%struct.omap_hwmod*, %struct.omap_hwmod_rst_info*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ops, i32 0, i32 0), align 8
  %31 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %32 = call i32 %30(%struct.omap_hwmod* %31, %struct.omap_hwmod_rst_info* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %18, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @_lookup_hardreset(%struct.omap_hwmod*, i8*, %struct.omap_hwmod_rst_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
