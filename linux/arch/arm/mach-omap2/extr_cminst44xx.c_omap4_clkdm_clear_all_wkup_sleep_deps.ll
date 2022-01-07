; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_clear_all_wkup_sleep_deps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_clear_all_wkup_sleep_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i64, i32, i32, %struct.clkdm_dep* }
%struct.clkdm_dep = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@OMAP4_CM_STATICDEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap4_clkdm_clear_all_wkup_sleep_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clkdm_clear_all_wkup_sleep_deps(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca %struct.clkdm_dep*, align 8
  %5 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %7 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %13 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %12, i32 0, i32 3
  %14 = load %struct.clkdm_dep*, %struct.clkdm_dep** %13, align 8
  store %struct.clkdm_dep* %14, %struct.clkdm_dep** %4, align 8
  br label %15

15:                                               ; preds = %42, %11
  %16 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %17 = icmp ne %struct.clkdm_dep* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %20 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %45

25:                                               ; preds = %23
  %26 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %27 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %42

31:                                               ; preds = %25
  %32 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %33 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %41 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %31, %30
  %43 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  %44 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %43, i32 1
  store %struct.clkdm_dep* %44, %struct.clkdm_dep** %4, align 8
  br label %15

45:                                               ; preds = %23
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %48 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %51 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %54 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OMAP4_CM_STATICDEP, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @omap4_cminst_clear_inst_reg_bits(i32 %46, i32 %49, i32 %52, i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %45, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @omap4_cminst_clear_inst_reg_bits(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
