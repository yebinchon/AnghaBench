; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32 }

@mmcr0_val = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i32 0, align 4
@SPRN_PA6T_MMCR0 = common dso_local global i32 0, align 4
@SPRN_PA6T_MMCR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"setup on cpu %d, mmcr0 %016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"setup on cpu %d, mmcr1 %016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @pa6t_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa6t_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = load i32, i32* @mmcr0_val, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @mmcr1_val, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, -64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @mtspr(i32 %11, i32 %12)
  %14 = load i32, i32* @SPRN_PA6T_MMCR1, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mtspr(i32 %14, i32 %15)
  %17 = call i32 (...) @smp_processor_id()
  %18 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %19 = call i32 @mfspr(i32 %18)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = call i32 (...) @smp_processor_id()
  %22 = load i32, i32* @SPRN_PA6T_MMCR1, align 4
  %23 = call i32 @mfspr(i32 %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %23)
  ret i32 0
}

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
