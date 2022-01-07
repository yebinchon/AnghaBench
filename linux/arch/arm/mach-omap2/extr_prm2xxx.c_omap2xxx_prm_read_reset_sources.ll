; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_prm_read_reset_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_prm_read_reset_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prm_reset_src_map = type { i32, i32 }

@WKUP_MOD = common dso_local global i32 0, align 4
@OMAP2_RM_RSTST = common dso_local global i32 0, align 4
@omap2xxx_prm_reset_src_map = common dso_local global %struct.prm_reset_src_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap2xxx_prm_read_reset_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2xxx_prm_read_reset_sources() #0 {
  %1 = alloca %struct.prm_reset_src_map*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @WKUP_MOD, align 4
  %5 = load i32, i32* @OMAP2_RM_RSTST, align 4
  %6 = call i32 @omap2_prm_read_mod_reg(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** @omap2xxx_prm_reset_src_map, align 8
  store %struct.prm_reset_src_map* %7, %struct.prm_reset_src_map** %1, align 8
  br label %8

8:                                                ; preds = %35, %0
  %9 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %1, align 8
  %10 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %1, align 8
  %15 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %1, align 8
  %23 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %1, align 8
  %30 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %20
  %36 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %1, align 8
  %37 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %36, i32 1
  store %struct.prm_reset_src_map* %37, %struct.prm_reset_src_map** %1, align 8
  br label %8

38:                                               ; preds = %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @omap2_prm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
