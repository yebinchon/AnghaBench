; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_sdrc.c_omap2_sdrc_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_sdrc.c_omap2_sdrc_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sdrc_params = type { i64 }

@sdrc_init_params_cs0 = common dso_local global %struct.omap_sdrc_params* null, align 8
@sdrc_init_params_cs1 = common dso_local global %struct.omap_sdrc_params* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_sdrc_get_params(i64 %0, %struct.omap_sdrc_params** %1, %struct.omap_sdrc_params** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_sdrc_params**, align 8
  %7 = alloca %struct.omap_sdrc_params**, align 8
  %8 = alloca %struct.omap_sdrc_params*, align 8
  %9 = alloca %struct.omap_sdrc_params*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.omap_sdrc_params** %1, %struct.omap_sdrc_params*** %6, align 8
  store %struct.omap_sdrc_params** %2, %struct.omap_sdrc_params*** %7, align 8
  %10 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** @sdrc_init_params_cs0, align 8
  %11 = icmp ne %struct.omap_sdrc_params* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** @sdrc_init_params_cs0, align 8
  store %struct.omap_sdrc_params* %14, %struct.omap_sdrc_params** %8, align 8
  %15 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** @sdrc_init_params_cs1, align 8
  store %struct.omap_sdrc_params* %15, %struct.omap_sdrc_params** %9, align 8
  br label %16

16:                                               ; preds = %37, %13
  %17 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %8, align 8
  %18 = getelementptr inbounds %struct.omap_sdrc_params, %struct.omap_sdrc_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %8, align 8
  %23 = getelementptr inbounds %struct.omap_sdrc_params, %struct.omap_sdrc_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i1 [ false, %16 ], [ %26, %21 ]
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %8, align 8
  %31 = getelementptr inbounds %struct.omap_sdrc_params, %struct.omap_sdrc_params* %30, i32 1
  store %struct.omap_sdrc_params* %31, %struct.omap_sdrc_params** %8, align 8
  %32 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** @sdrc_init_params_cs1, align 8
  %33 = icmp ne %struct.omap_sdrc_params* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %9, align 8
  %36 = getelementptr inbounds %struct.omap_sdrc_params, %struct.omap_sdrc_params* %35, i32 1
  store %struct.omap_sdrc_params* %36, %struct.omap_sdrc_params** %9, align 8
  br label %37

37:                                               ; preds = %34, %29
  br label %16

38:                                               ; preds = %27
  %39 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %8, align 8
  %40 = getelementptr inbounds %struct.omap_sdrc_params, %struct.omap_sdrc_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %49

44:                                               ; preds = %38
  %45 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %8, align 8
  %46 = load %struct.omap_sdrc_params**, %struct.omap_sdrc_params*** %6, align 8
  store %struct.omap_sdrc_params* %45, %struct.omap_sdrc_params** %46, align 8
  %47 = load %struct.omap_sdrc_params*, %struct.omap_sdrc_params** %9, align 8
  %48 = load %struct.omap_sdrc_params**, %struct.omap_sdrc_params*** %7, align 8
  store %struct.omap_sdrc_params* %47, %struct.omap_sdrc_params** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %43, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
