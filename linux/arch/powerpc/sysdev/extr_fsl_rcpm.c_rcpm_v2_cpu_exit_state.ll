; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rcpm.c_rcpm_v2_cpu_exit_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rcpm.c_rcpm_v2_cpu_exit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@rcpm_v2_regs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown cpu PM state (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rcpm_v2_cpu_exit_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcpm_v2_cpu_exit_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @get_hard_smp_processor_id(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cpu_core_index_of_thread(i32 %9)
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %34 [
    i32 131, label %13
    i32 130, label %19
    i32 129, label %24
    i32 128, label %29
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcpm_v2_regs, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @setbits32(i32* %15, i32 %17)
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcpm_v2_regs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @setbits32(i32* %21, i32 %22)
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcpm_v2_regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @setbits32(i32* %26, i32 %27)
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rcpm_v2_regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @setbits32(i32* %31, i32 %32)
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %29, %24, %19, %13
  ret void
}

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @cpu_core_index_of_thread(i32) #1

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
