; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_85xx_l2ctlr.c_get_cache_sram_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_85xx_l2ctlr.c_get_cache_sram_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_parameters = type { i64, i32 }

@sram_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sram_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sram_parameters*)* @get_cache_sram_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cache_sram_params(%struct.sram_parameters* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sram_parameters*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sram_parameters* %0, %struct.sram_parameters** %3, align 8
  %6 = load i32, i32* @sram_size, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @sram_size, align 4
  %10 = call i64 @kstrtouint(i32 %9, i32 0, i32* %5)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %8
  %16 = load i32, i32* @sram_offset, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @sram_offset, align 4
  %20 = call i64 @kstrtoull(i32 %19, i32 0, i64* %4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.sram_parameters*, %struct.sram_parameters** %3, align 8
  %28 = getelementptr inbounds %struct.sram_parameters, %struct.sram_parameters* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.sram_parameters*, %struct.sram_parameters** %3, align 8
  %31 = getelementptr inbounds %struct.sram_parameters, %struct.sram_parameters* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %22, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @kstrtouint(i32, i32, i32*) #1

declare dso_local i64 @kstrtoull(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
