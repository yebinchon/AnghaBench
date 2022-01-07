; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.thread_info = type { %struct.pt_regs }

@PF_KTHREAD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@MSR_EE = common dso_local global i32 0, align 4
@MSR_EIP = common dso_local global i32 0, align 4
@MSR_IE = common dso_local global i32 0, align 4
@MSR_UMS = common dso_local global i32 0, align 4
@MSR_VM = common dso_local global i32 0, align 4
@MSR_VMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.thread_info*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %13 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %12)
  store %struct.pt_regs* %13, %struct.pt_regs** %10, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %15 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %14)
  store %struct.thread_info* %15, %struct.thread_info** %11, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PF_KTHREAD, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %25 = call i32 @memset(%struct.pt_regs* %24, i32 0, i32 48)
  %26 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 0
  %28 = call i32 @memset(%struct.pt_regs* %27, i32 0, i32 4)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %30 = ptrtoint %struct.pt_regs* %29 to i64
  %31 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %36 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %40 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 3
  store i32 1, i32* %43, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @local_save_flags(i32 %46)
  %48 = load i64, i64* @ret_from_kernel_thread, align 8
  %49 = sub i64 %48, 8
  %50 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %51 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 5
  store i64 %49, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %97

53:                                               ; preds = %4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %55 = call %struct.pt_regs* (...) @current_pt_regs()
  %56 = bitcast %struct.pt_regs* %54 to i8*
  %57 = bitcast %struct.pt_regs* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 48, i1 false)
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %66 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %65, i32 0, i32 0
  %67 = call i32 @memset(%struct.pt_regs* %66, i32 0, i32 4)
  %68 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %69 = ptrtoint %struct.pt_regs* %68 to i64
  %70 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %71 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %79 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = load i64, i64* @ret_from_fork, align 8
  %82 = sub i64 %81, 8
  %83 = load %struct.thread_info*, %struct.thread_info** %11, align 8
  %84 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 5
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @CLONE_SETTLS, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %64
  %91 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %64
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %23
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @local_save_flags(i32) #1

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
