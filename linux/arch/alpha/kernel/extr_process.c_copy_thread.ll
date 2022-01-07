; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.task_struct = type { i32 }
%struct.thread_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i64 }
%struct.pt_regs = type { i32, i64, i64, i32 }
%struct.switch_stack = type { i64, i64, i64 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@alpha_mv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.thread_info*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca %struct.switch_stack*, align 8
  %14 = alloca %struct.switch_stack*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %15)
  store %struct.thread_info* %16, %struct.thread_info** %10, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %17)
  store %struct.pt_regs* %18, %struct.pt_regs** %11, align 8
  %19 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %19, %struct.pt_regs** %12, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %21 = bitcast %struct.pt_regs* %20 to %struct.switch_stack*
  %22 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %21, i64 -1
  store %struct.switch_stack* %22, %struct.switch_stack** %13, align 8
  %23 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %24 = ptrtoint %struct.switch_stack* %23 to i64
  %25 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %26 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PF_KTHREAD, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %4
  %39 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %40 = call i32 @memset(%struct.switch_stack* %39, i32 0, i32 56)
  %41 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %42 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %41, i32 0, i32 0
  store i64 ptrtoint (void ()* @ret_from_kernel_thread to i64), i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %45 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %48 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alpha_mv, i32 0, i32 0), align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %53 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  store i32 0, i32* %5, align 4
  br label %100

55:                                               ; preds = %4
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @CLONE_SETTLS, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %65 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  br label %70

67:                                               ; preds = %55
  %68 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70
  %75 = call i64 (...) @rdusp()
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i64 [ %71, %73 ], [ %75, %74 ]
  %78 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %79 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i64 %77, i64* %80, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %83 = bitcast %struct.pt_regs* %81 to i8*
  %84 = bitcast %struct.pt_regs* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 32, i1 false)
  %85 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %92 = bitcast %struct.pt_regs* %91 to %struct.switch_stack*
  %93 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %92, i64 -1
  store %struct.switch_stack* %93, %struct.switch_stack** %14, align 8
  %94 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %95 = load %struct.switch_stack*, %struct.switch_stack** %14, align 8
  %96 = bitcast %struct.switch_stack* %94 to i8*
  %97 = bitcast %struct.switch_stack* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  %98 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %99 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %98, i32 0, i32 0
  store i64 ptrtoint (void ()* @ret_from_fork to i64), i64* %99, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %76, %38
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.switch_stack*, i32, i32) #1

declare dso_local void @ret_from_kernel_thread() #1

declare dso_local i64 @rdusp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @ret_from_fork() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
