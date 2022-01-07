; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i64, i64, i64, i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %10 = load i64, i64* @THREAD_SIZE, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %12 = call i64 @task_stack_page(%struct.task_struct* %11)
  %13 = add nsw i64 %10, %12
  %14 = inttoptr i64 %13 to %struct.pt_regs*
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i64 -1
  store %struct.pt_regs* %15, %struct.pt_regs** %9, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PF_KTHREAD, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %25 = call i32 @memset(%struct.pt_regs* %24, i32 0, i32 32)
  %26 = load i64, i64* @ret_from_kernel_thread, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %57

35:                                               ; preds = %4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %37 = call %struct.pt_regs* (...) @current_pt_regs()
  %38 = bitcast %struct.pt_regs* %36 to i8*
  %39 = bitcast %struct.pt_regs* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 32, i1 false)
  %40 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @ret_from_fork, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %51

48:                                               ; preds = %35
  %49 = call i32 (...) @rdusp()
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i64 [ %45, %47 ], [ %50, %48 ]
  %53 = trunc i64 %52 to i32
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %23
  %58 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %59 = ptrtoint %struct.pt_regs* %58 to i64
  %60 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
