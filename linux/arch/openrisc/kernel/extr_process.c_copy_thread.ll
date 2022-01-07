; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64*, i64 }
%struct.TYPE_2__ = type { i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@ret_from_fork = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %14 = call i64 @task_stack_page(%struct.task_struct* %13)
  %15 = load i64, i64* @THREAD_SIZE, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %19 = load i64, i64* %11, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = sub i64 %21, 16
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = inttoptr i64 %23 to %struct.pt_regs*
  store %struct.pt_regs* %24, %struct.pt_regs** %9, align 8
  %25 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %26 = load i64, i64* %11, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub i64 %28, 16
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = inttoptr i64 %30 to %struct.pt_regs*
  store %struct.pt_regs* %31, %struct.pt_regs** %10, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PF_KTHREAD, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %41 = call i32 @memset(%struct.pt_regs* %40, i32 0, i32 16)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 20
  store i64 %42, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 22
  store i64 %47, i64* %51, align 8
  br label %87

52:                                               ; preds = %4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %54 = call %struct.pt_regs* (...) @current_pt_regs()
  %55 = bitcast %struct.pt_regs* %53 to i8*
  %56 = bitcast %struct.pt_regs* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @CLONE_SETTLS, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 10
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 20
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %78, %39
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* @ret_from_fork, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 9
  store i64 %91, i64* %95, align 8
  %96 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %97 = ptrtoint %struct.pt_regs* %96 to i64
  %98 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %99 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
