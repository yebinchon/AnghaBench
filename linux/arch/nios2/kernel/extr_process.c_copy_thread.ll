; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.pt_regs* }
%struct.pt_regs = type { i64, i32, i64, i64, i32 }
%struct.switch_stack = type { i64, i64, i64, i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@STATUS_PIE = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.switch_stack*, align 8
  %13 = alloca %struct.switch_stack*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %15 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %14)
  store %struct.pt_regs* %15, %struct.pt_regs** %10, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %17 = bitcast %struct.pt_regs* %16 to %struct.switch_stack*
  %18 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %17, i64 -1
  store %struct.switch_stack* %18, %struct.switch_stack** %13, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PF_KTHREAD, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %4
  %27 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %28 = call i32 @memset(%struct.switch_stack* %27, i32 0, i32 72)
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %31 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %34 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* @ret_from_kernel_thread, align 8
  %36 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %37 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @STATUS_PIE, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %42 = ptrtoint %struct.switch_stack* %41 to i64
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %46 = ptrtoint %struct.switch_stack* %45 to i64
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.pt_regs* %50, %struct.pt_regs** %53, align 8
  store i32 0, i32* %5, align 4
  br label %101

54:                                               ; preds = %4
  %55 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %55, %struct.pt_regs** %11, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %58 = bitcast %struct.pt_regs* %56 to i8*
  %59 = bitcast %struct.pt_regs* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 40, i1 false)
  %60 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %65 = bitcast %struct.pt_regs* %64 to %struct.switch_stack*
  %66 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %65, i64 -1
  store %struct.switch_stack* %66, %struct.switch_stack** %12, align 8
  %67 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %68 = load %struct.switch_stack*, %struct.switch_stack** %12, align 8
  %69 = bitcast %struct.switch_stack* %67 to i8*
  %70 = bitcast %struct.switch_stack* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  %71 = load i64, i64* @ret_from_fork, align 8
  %72 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %73 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %75 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store %struct.pt_regs* %74, %struct.pt_regs** %77, align 8
  %78 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %79 = ptrtoint %struct.switch_stack* %78 to i64
  %80 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %54
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %54
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @CLONE_SETTLS, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.switch_stack*, %struct.switch_stack** %13, align 8
  %99 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %89
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %26
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.switch_stack*, i32, i32) #1

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
