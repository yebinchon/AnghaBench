; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_process_64.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_process_64.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.pt_regs* }
%struct.pt_regs = type { i32, i64* }

@THREAD_SIZE = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@SR_FD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@current = common dso_local global i32* null, align 8
@last_task_used_math = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %11 = load i64, i64* @THREAD_SIZE, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %13 = call i64 @task_stack_page(%struct.task_struct* %12)
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to %struct.pt_regs*
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i64 -1
  store %struct.pt_regs* %16, %struct.pt_regs** %10, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %18 = ptrtoint %struct.pt_regs* %17 to i64
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PF_KTHREAD, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %31 = call i32 @memset(%struct.pt_regs* %30, i32 0, i32 16)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %32, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  store i64 %37, i64* %41, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  store i32 1073741824, i32* %43, align 8
  %44 = load i32, i32* @SR_FD, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i64, i64* @ret_from_kernel_thread, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %85

53:                                               ; preds = %4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %55 = call %struct.pt_regs* (...) @current_pt_regs()
  %56 = bitcast %struct.pt_regs* %54 to i8*
  %57 = bitcast %struct.pt_regs* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @neff_sign_extend(i64 %61)
  %63 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 15
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store %struct.pt_regs* %68, %struct.pt_regs** %71, align 8
  %72 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 9
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @SR_FD, align 4
  %77 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i64, i64* @ret_from_fork, align 8
  %82 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %67, %29
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @neff_sign_extend(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
