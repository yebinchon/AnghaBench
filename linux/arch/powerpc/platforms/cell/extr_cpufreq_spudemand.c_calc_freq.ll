; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_cpufreq_spudemand.c_calc_freq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_cpufreq_spudemand.c_calc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.spu_gov_info_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cbe_spu_info = common dso_local global %struct.TYPE_4__* null, align 8
@EXP = common dso_local global i32 0, align 4
@FIXED_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cpu %d: busy_spus=%d, info->busy_spus=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_gov_info_struct*)* @calc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_freq(%struct.spu_gov_info_struct* %0) #0 {
  %2 = alloca %struct.spu_gov_info_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spu_gov_info_struct* %0, %struct.spu_gov_info_struct** %2, align 8
  %5 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %6 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cbe_spu_info, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @cpu_to_node(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %17 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EXP, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FIXED_1, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @calc_load(i32 %18, i32 %19, i32 %22)
  %24 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %25 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %29 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %30)
  %32 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %33 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.spu_gov_info_struct*, %struct.spu_gov_info_struct** %2, align 8
  %38 = getelementptr inbounds %struct.spu_gov_info_struct, %struct.spu_gov_info_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* @FIXED_1, align 4
  %42 = sdiv i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @cpu_to_node(i32) #1

declare dso_local i32 @calc_load(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
