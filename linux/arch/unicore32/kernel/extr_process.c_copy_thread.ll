; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { %struct.pt_regs }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i32, i32, i64 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.thread_info*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %12 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %11)
  store %struct.thread_info* %12, %struct.thread_info** %9, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %14 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %13)
  store %struct.pt_regs* %14, %struct.pt_regs** %10, align 8
  %15 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = call i32 @memset(%struct.pt_regs* %16, i32 0, i32 4)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %19 = ptrtoint %struct.pt_regs* %18 to i64
  %20 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %21 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PF_KTHREAD, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load i64, i64* @ret_from_kernel_thread, align 8
  %32 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %33 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %37 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 3
  store i64 %39, i64* %42, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = call i32 @memset(%struct.pt_regs* %43, i32 0, i32 56)
  br label %74

45:                                               ; preds = %4
  %46 = load i64, i64* @ret_from_fork, align 8
  %47 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %48 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %51 = call %struct.pt_regs* (...) @current_pt_regs()
  %52 = bitcast %struct.pt_regs* %50 to i8*
  %53 = bitcast %struct.pt_regs* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 56, i1 false)
  %54 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @CLONE_SETTLS, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %30
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
