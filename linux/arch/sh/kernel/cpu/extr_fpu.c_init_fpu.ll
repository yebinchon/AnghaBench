; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_fpu.c_init_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/extr_fpu.c_init_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct }
%struct.sh_fpu_soft_struct = type { i8* }
%struct.sh_fpu_hard_struct = type { i8* }

@boot_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CPU_HAS_FPU = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@task_xstate_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xstate_size = common dso_local global i32 0, align 4
@FPSCR_INIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_fpu(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.sh_fpu_hard_struct*, align 8
  %5 = alloca %struct.sh_fpu_soft_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i64 @tsk_used_math(%struct.task_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 4
  %11 = load i32, i32* @CPU_HAS_FPU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp eq %struct.task_struct* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call i32 @task_pt_regs(%struct.task_struct* %20)
  %22 = call i32 @unlazy_fpu(%struct.task_struct* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %14, %9
  store i32 0, i32* %2, align 4
  br label %80

24:                                               ; preds = %1
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @task_xstate_cachep, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_5__* @kmem_cache_alloc(i32 %31, i32 %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 4
  %48 = load i32, i32* @CPU_HAS_FPU, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = bitcast %struct.sh_fpu_soft_struct* %56 to %struct.sh_fpu_hard_struct*
  store %struct.sh_fpu_hard_struct* %57, %struct.sh_fpu_hard_struct** %4, align 8
  %58 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %4, align 8
  %59 = bitcast %struct.sh_fpu_hard_struct* %58 to %struct.sh_fpu_soft_struct*
  %60 = load i32, i32* @xstate_size, align 4
  %61 = call i32 @memset(%struct.sh_fpu_soft_struct* %59, i32 0, i32 %60)
  %62 = load i8*, i8** @FPSCR_INIT, align 8
  %63 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %4, align 8
  %64 = getelementptr inbounds %struct.sh_fpu_hard_struct, %struct.sh_fpu_hard_struct* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %77

65:                                               ; preds = %46
  %66 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store %struct.sh_fpu_soft_struct* %70, %struct.sh_fpu_soft_struct** %5, align 8
  %71 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %5, align 8
  %72 = load i32, i32* @xstate_size, align 4
  %73 = call i32 @memset(%struct.sh_fpu_soft_struct* %71, i32 0, i32 %72)
  %74 = load i8*, i8** @FPSCR_INIT, align 8
  %75 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %5, align 8
  %76 = getelementptr inbounds %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %65, %51
  %78 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %79 = call i32 @set_stopped_child_used_math(%struct.task_struct* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %42, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @tsk_used_math(%struct.task_struct*) #1

declare dso_local i32 @unlazy_fpu(%struct.task_struct*, i32) #1

declare dso_local i32 @task_pt_regs(%struct.task_struct*) #1

declare dso_local %struct.TYPE_5__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.sh_fpu_soft_struct*, i32, i32) #1

declare dso_local i32 @set_stopped_child_used_math(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
