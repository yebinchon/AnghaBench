; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_arch_dup_task_struct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_arch_dup_task_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_dup_task_struct(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %6 = call i32 @flush_all_to_thread(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call i32 @__switch_to_tm(%struct.task_struct* %7, %struct.task_struct* %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = bitcast %struct.task_struct* %10 to i8*
  %13 = bitcast %struct.task_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i32 @clear_task_ebb(%struct.task_struct* %14)
  ret i32 0
}

declare dso_local i32 @flush_all_to_thread(%struct.task_struct*) #1

declare dso_local i32 @__switch_to_tm(%struct.task_struct*, %struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_task_ebb(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
