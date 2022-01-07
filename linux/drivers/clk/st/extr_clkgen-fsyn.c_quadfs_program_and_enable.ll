; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_program_and_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_program_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_clk_quadfs_fsynth = type { i32, i32, i32, i32 }
%struct.stm_fs = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_clk_quadfs_fsynth*, %struct.stm_fs*)* @quadfs_program_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quadfs_program_and_enable(%struct.st_clk_quadfs_fsynth* %0, %struct.stm_fs* %1) #0 {
  %3 = alloca %struct.st_clk_quadfs_fsynth*, align 8
  %4 = alloca %struct.stm_fs*, align 8
  store %struct.st_clk_quadfs_fsynth* %0, %struct.st_clk_quadfs_fsynth** %3, align 8
  store %struct.stm_fs* %1, %struct.stm_fs** %4, align 8
  %5 = load %struct.stm_fs*, %struct.stm_fs** %4, align 8
  %6 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.stm_fs*, %struct.stm_fs** %4, align 8
  %11 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %14 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.stm_fs*, %struct.stm_fs** %4, align 8
  %16 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %19 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stm_fs*, %struct.stm_fs** %4, align 8
  %21 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %24 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %26 = call i32 @quadfs_fsynth_program_rate(%struct.st_clk_quadfs_fsynth* %25)
  %27 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %3, align 8
  %28 = call i32 @quadfs_fsynth_program_enable(%struct.st_clk_quadfs_fsynth* %27)
  ret void
}

declare dso_local i32 @quadfs_fsynth_program_rate(%struct.st_clk_quadfs_fsynth*) #1

declare dso_local i32 @quadfs_fsynth_program_enable(%struct.st_clk_quadfs_fsynth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
