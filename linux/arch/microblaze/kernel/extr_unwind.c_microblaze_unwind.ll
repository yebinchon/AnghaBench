; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_microblaze_unwind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_microblaze_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.stack_trace = type { i32 }
%struct.pt_regs = type { i64, i64, i32 }
%struct.thread_info = type { %struct.cpu_context }
%struct.cpu_context = type { i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@_switch_to = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microblaze_unwind(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.cpu_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %15 = icmp eq %struct.task_struct* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %17)
  store %struct.pt_regs* %18, %struct.pt_regs** %5, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %30 = call i32 @microblaze_unwind_inner(%struct.task_struct* %19, i64 %22, i64 %25, i32 %28, %struct.stack_trace* %29)
  br label %47

31:                                               ; preds = %12
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.thread_info*
  store %struct.thread_info* %35, %struct.thread_info** %6, align 8
  %36 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %37 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %36, i32 0, i32 0
  store %struct.cpu_context* %37, %struct.cpu_context** %7, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = load %struct.cpu_context*, %struct.cpu_context** %7, align 8
  %40 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cpu_context*, %struct.cpu_context** %7, align 8
  %43 = getelementptr inbounds %struct.cpu_context, %struct.cpu_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %46 = call i32 @microblaze_unwind_inner(%struct.task_struct* %38, i64 ptrtoint (i32* @_switch_to to i64), i64 %41, i32 %44, %struct.stack_trace* %45)
  br label %47

47:                                               ; preds = %31, %16
  br label %56

48:                                               ; preds = %2
  %49 = call i64 asm sideeffect "or $0, r1, r0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %49, i64* %9, align 8
  %50 = call i64 asm sideeffect "brlid $0, 0f;nop;0:", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i64 %50, i64* %8, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %55 = call i32 @microblaze_unwind_inner(%struct.task_struct* %51, i64 %52, i64 %53, i32 0, %struct.stack_trace* %54)
  br label %56

56:                                               ; preds = %48, %47
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @microblaze_unwind_inner(%struct.task_struct*, i64, i64, i32, %struct.stack_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1196}
!3 = !{i32 1255}
