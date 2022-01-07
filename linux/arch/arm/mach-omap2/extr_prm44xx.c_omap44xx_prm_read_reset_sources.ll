; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap44xx_prm_read_reset_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap44xx_prm_read_reset_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prm_reset_src_map = type { i32, i32 }

@PRM_INSTANCE_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4_RM_RSTST = common dso_local global i32 0, align 4
@omap44xx_prm_reset_src_map = common dso_local global %struct.prm_reset_src_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap44xx_prm_read_reset_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap44xx_prm_read_reset_sources() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.prm_reset_src_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  %6 = call i64 (...) @omap4_prmst_get_prm_dev_inst()
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @PRM_INSTANCE_UNKNOWN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %48

11:                                               ; preds = %0
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @OMAP4_RM_RSTST, align 4
  %14 = call i32 @omap4_prm_read_inst_reg(i64 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** @omap44xx_prm_reset_src_map, align 8
  store %struct.prm_reset_src_map* %15, %struct.prm_reset_src_map** %2, align 8
  br label %16

16:                                               ; preds = %43, %11
  %17 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %2, align 8
  %18 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %2, align 8
  %23 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %2, align 8
  %31 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %2, align 8
  %38 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.prm_reset_src_map*, %struct.prm_reset_src_map** %2, align 8
  %45 = getelementptr inbounds %struct.prm_reset_src_map, %struct.prm_reset_src_map* %44, i32 1
  store %struct.prm_reset_src_map* %45, %struct.prm_reset_src_map** %2, align 8
  br label %16

46:                                               ; preds = %26
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %10
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @omap4_prmst_get_prm_dev_inst(...) #1

declare dso_local i32 @omap4_prm_read_inst_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
