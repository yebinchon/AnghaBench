; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu_context.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu_context.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %5 = call i32 (...) @__init_new_context()
  %6 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  ret i32 0
}

declare dso_local i32 @__init_new_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
