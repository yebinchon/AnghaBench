; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_attach_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_pcpu_attach_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.lowcore* }
%struct.lowcore = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@LPP_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcpu*, %struct.task_struct*)* @pcpu_attach_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_attach_task(%struct.pcpu* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.pcpu*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.lowcore*, align 8
  store %struct.pcpu* %0, %struct.pcpu** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %7 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %6, i32 0, i32 0
  %8 = load %struct.lowcore*, %struct.lowcore** %7, align 8
  store %struct.lowcore* %8, %struct.lowcore** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @task_stack_page(%struct.task_struct* %9)
  %11 = load i64, i64* @THREAD_SIZE, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %14 = sub i64 %12, %13
  %15 = sub i64 %14, 4
  %16 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %17 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %16, i32 0, i32 9
  store i64 %15, i64* %17, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = ptrtoint %struct.task_struct* %18 to i64
  %20 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %21 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @LPP_MAGIC, align 4
  %23 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %24 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %29 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %35 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %41 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %47 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %53 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %59 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.lowcore*, %struct.lowcore** %5, align 8
  %61 = getelementptr inbounds %struct.lowcore, %struct.lowcore* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
