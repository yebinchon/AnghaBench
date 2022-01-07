; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_arch_dup_task_struct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_arch_dup_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_dup_task_struct(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = call i64 (...) @is_msa_enabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @save_msa(i32 %9)
  br label %18

11:                                               ; preds = %2
  %12 = call i64 (...) @is_fpu_owner()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @_save_fp(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @save_dsp(i32 %19)
  %21 = call i32 (...) @preempt_enable()
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = bitcast %struct.task_struct* %22 to i8*
  %25 = bitcast %struct.task_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  ret i32 0
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @is_msa_enabled(...) #1

declare dso_local i32 @save_msa(i32) #1

declare dso_local i64 @is_fpu_owner(...) #1

declare dso_local i32 @_save_fp(i32) #1

declare dso_local i32 @save_dsp(i32) #1

declare dso_local i32 @preempt_enable(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
