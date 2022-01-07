; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_find_best_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_find_best_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm_fs = type opaque
%struct.st_clk_quadfs_fsynth = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, %struct.stm_fs*, i64*)*, i32 (i64, i64, %struct.stm_fs*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64, %struct.stm_fs*)* @quadfs_find_best_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quadfs_find_best_rate(%struct.clk_hw* %0, i64 %1, i64 %2, %struct.stm_fs* %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stm_fs*, align 8
  %9 = alloca %struct.st_clk_quadfs_fsynth*, align 8
  %10 = alloca i32 (i64, %struct.stm_fs*, i64*)*, align 8
  %11 = alloca i32 (i64, i64, %struct.stm_fs*)*, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.stm_fs* %3, %struct.stm_fs** %8, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.st_clk_quadfs_fsynth* @to_quadfs_fsynth(%struct.clk_hw* %13)
  store %struct.st_clk_quadfs_fsynth* %14, %struct.st_clk_quadfs_fsynth** %9, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %9, align 8
  %16 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i64, %struct.stm_fs*, i64*)*, i32 (i64, %struct.stm_fs*, i64*)** %18, align 8
  store i32 (i64, %struct.stm_fs*, i64*)* %19, i32 (i64, %struct.stm_fs*, i64*)** %10, align 8
  %20 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %9, align 8
  %21 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (i64, i64, %struct.stm_fs*)*, i32 (i64, i64, %struct.stm_fs*)** %23, align 8
  store i32 (i64, i64, %struct.stm_fs*)* %24, i32 (i64, i64, %struct.stm_fs*)** %11, align 8
  %25 = load i32 (i64, i64, %struct.stm_fs*)*, i32 (i64, i64, %struct.stm_fs*)** %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.stm_fs*, %struct.stm_fs** %8, align 8
  %29 = call i32 %25(i64 %26, i64 %27, %struct.stm_fs* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = load i32 (i64, %struct.stm_fs*, i64*)*, i32 (i64, %struct.stm_fs*, i64*)** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.stm_fs*, %struct.stm_fs** %8, align 8
  %35 = call i32 %32(i64 %33, %struct.stm_fs* %34, i64* %12)
  br label %36

36:                                               ; preds = %31, %4
  %37 = load i64, i64* %12, align 8
  ret i64 %37
}

declare dso_local %struct.st_clk_quadfs_fsynth* @to_quadfs_fsynth(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
