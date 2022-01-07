; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_process_32.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_process_32.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, %struct.pt_regs*, i32 }
%struct.pt_regs = type { i64*, i64, i32 }
%struct.thread_info = type { i32, i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@SR_MD = common dso_local global i32 0, align 4
@KERNEL_DS = common dso_local global i32 0, align 4
@TS_USEDFPU = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@SR_FD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.thread_info*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %13 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %12)
  store %struct.thread_info* %13, %struct.thread_info** %10, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.pt_regs*, %struct.pt_regs** %16, align 8
  %18 = call i32 @memset(%struct.pt_regs* %17, i32 0, i32 8)
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %19)
  store %struct.pt_regs* %20, %struct.pt_regs** %11, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %22 = ptrtoint %struct.pt_regs* %21 to i64
  %23 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PF_KTHREAD, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %35 = call i32 @memset(%struct.pt_regs* %34, i32 0, i32 24)
  %36 = load i64, i64* @ret_from_kernel_thread, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  store i64 %40, i64* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 5
  store i64 %45, i64* %49, align 8
  %50 = load i32, i32* @SR_MD, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @KERNEL_DS, align 4
  %54 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @TS_USEDFPU, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %59 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %103

65:                                               ; preds = %4
  %66 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %67 = call %struct.pt_regs* (...) @current_pt_regs()
  %68 = bitcast %struct.pt_regs* %66 to i8*
  %69 = bitcast %struct.pt_regs* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 15
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i32, i32* @USER_DS, align 4
  %80 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %81 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @CLONE_SETTLS, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %86, %78
  %95 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* @ret_from_fork, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %94, %33
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

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
