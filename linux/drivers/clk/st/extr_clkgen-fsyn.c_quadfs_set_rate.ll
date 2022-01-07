; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.st_clk_quadfs_fsynth = type { i32 }
%struct.stm_fs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @quadfs_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quadfs_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.st_clk_quadfs_fsynth*, align 8
  %9 = alloca %struct.stm_fs, align 4
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.st_clk_quadfs_fsynth* @to_quadfs_fsynth(%struct.clk_hw* %11)
  store %struct.st_clk_quadfs_fsynth* %12, %struct.st_clk_quadfs_fsynth** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %15
  %22 = call i32 @memset(%struct.stm_fs* %9, i32 0, i32 4)
  %23 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @quadfs_find_best_rate(%struct.clk_hw* %23, i64 %24, i64 %25, %struct.stm_fs* %9)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %8, align 8
  %34 = call i32 @quadfs_program_and_enable(%struct.st_clk_quadfs_fsynth* %33, %struct.stm_fs* %9)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.st_clk_quadfs_fsynth* @to_quadfs_fsynth(%struct.clk_hw*) #1

declare dso_local i32 @memset(%struct.stm_fs*, i32, i32) #1

declare dso_local i64 @quadfs_find_best_rate(%struct.clk_hw*, i64, i64, %struct.stm_fs*) #1

declare dso_local i32 @quadfs_program_and_enable(%struct.st_clk_quadfs_fsynth*, %struct.stm_fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
