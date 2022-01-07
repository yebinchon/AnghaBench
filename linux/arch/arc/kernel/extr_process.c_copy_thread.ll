; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pt_regs = type { i64, i32, i32, i64 }
%struct.callee_regs = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ret_from_fork = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.callee_regs*, align 8
  %13 = alloca %struct.callee_regs*, align 8
  %14 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %15 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %15, %struct.pt_regs** %14, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %16)
  store %struct.pt_regs* %17, %struct.pt_regs** %10, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %19 = bitcast %struct.pt_regs* %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 -2
  store i64* %20, i64** %11, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = bitcast i64* %21 to %struct.callee_regs*
  %23 = getelementptr inbounds %struct.callee_regs, %struct.callee_regs* %22, i64 -1
  store %struct.callee_regs* %23, %struct.callee_regs** %12, align 8
  %24 = load %struct.callee_regs*, %struct.callee_regs** %12, align 8
  %25 = ptrtoint %struct.callee_regs* %24 to i64
  %26 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @ret_from_fork, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PF_KTHREAD, align 8
  %38 = and i64 %36, %37
  %39 = call i64 @unlikely(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %43 = call i32 @memset(%struct.pt_regs* %42, i32 0, i32 24)
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.callee_regs*, %struct.callee_regs** %12, align 8
  %46 = getelementptr inbounds %struct.callee_regs, %struct.callee_regs* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.callee_regs*, %struct.callee_regs** %12, align 8
  %49 = getelementptr inbounds %struct.callee_regs, %struct.callee_regs* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %103

50:                                               ; preds = %4
  %51 = load i64*, i64** %11, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* @ret_from_fork, align 8
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %58 = bitcast %struct.pt_regs* %56 to i8*
  %59 = bitcast %struct.pt_regs* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %50
  %67 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %70 = bitcast %struct.pt_regs* %69 to %struct.callee_regs*
  %71 = getelementptr inbounds %struct.callee_regs, %struct.callee_regs* %70, i64 -1
  store %struct.callee_regs* %71, %struct.callee_regs** %13, align 8
  %72 = load %struct.callee_regs*, %struct.callee_regs** %12, align 8
  %73 = load %struct.callee_regs*, %struct.callee_regs** %13, align 8
  %74 = bitcast %struct.callee_regs* %72 to i8*
  %75 = bitcast %struct.callee_regs* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @CLONE_SETTLS, align 8
  %78 = and i64 %76, %77
  %79 = call i64 @unlikely(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %66
  %82 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %86 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  br label %96

88:                                               ; preds = %66
  %89 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %90 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %94 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %81
  %97 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %98 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.callee_regs*, %struct.callee_regs** %12, align 8
  %102 = getelementptr inbounds %struct.callee_regs, %struct.callee_regs* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %41
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
