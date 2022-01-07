; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.thread_info = type { i32, i32*, %struct.pt_regs, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i32, i32, i64 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@SVC_MODE = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@THREAD_NOTIFY_COPY = common dso_local global i32 0, align 4

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
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 2
  %17 = call i32 @memset(%struct.pt_regs* %16, i32 0, i32 4)
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PF_KTHREAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %30 = call %struct.pt_regs* (...) @current_pt_regs()
  %31 = bitcast %struct.pt_regs* %29 to i8*
  %32 = bitcast %struct.pt_regs* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 56, i1 false)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %28
  br label %56

42:                                               ; preds = %4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = call i32 @memset(%struct.pt_regs* %43, i32 0, i32 56)
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %47 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %51 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* @SVC_MODE, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %42, %41
  %57 = load i64, i64* @ret_from_fork, align 8
  %58 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %59 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 3
  store i64 %57, i64* %60, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %62 = ptrtoint %struct.pt_regs* %61 to i64
  %63 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %64 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 4
  store i64 %62, i64* %65, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %67 = call i32 @clear_ptrace_hw_breakpoint(%struct.task_struct* %66)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @CLONE_SETTLS, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %56
  %73 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %77 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %56
  %81 = call i32 (...) @get_tpuser()
  %82 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %83 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @THREAD_NOTIFY_COPY, align 4
  %87 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %88 = call i32 @thread_notify(i32 %86, %struct.thread_info* %87)
  ret i32 0
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_ptrace_hw_breakpoint(%struct.task_struct*) #1

declare dso_local i32 @get_tpuser(...) #1

declare dso_local i32 @thread_notify(i32, %struct.thread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
