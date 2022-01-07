; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_copy_thread_tls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_copy_thread_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.task_struct = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32*, i32*, i32**, %struct.pt_regs* }
%struct.pt_regs = type { i64*, i32, i8*, i32, i32 }
%struct.thread_info = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@_TIF_RESTOREALL = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@MSR_FP = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i32 0, align 4
@MSR_VSX = common dso_local global i32 0, align 4
@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@CPU_FTR_DSCR = common dso_local global i32 0, align 4
@CPU_FTR_HAS_PPR = common dso_local global i32 0, align 4
@DEFAULT_PPR = common dso_local global i32 0, align 4
@IRQS_ENABLED = common dso_local global i32 0, align 4
@SPRN_DSCR = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread_tls(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.thread_info*, align 8
  %16 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = call i64 @task_stack_page(%struct.task_struct* %17)
  %19 = load i64, i64* @THREAD_SIZE, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %22 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %21)
  store %struct.thread_info* %22, %struct.thread_info** %15, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %24 = call i32 @klp_init_thread_info(%struct.task_struct* %23)
  %25 = load i64, i64* %14, align 8
  %26 = sub i64 %25, 32
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = inttoptr i64 %27 to %struct.pt_regs*
  store %struct.pt_regs* %28, %struct.pt_regs** %11, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PF_KTHREAD, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %5
  %37 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %38 = call i32 @memset(%struct.pt_regs* %37, i32 0, i32 32)
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %39, 32
  %41 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 %40, i64* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to void (...)*
  %51 = call i8* @ppc_function_entry(void (...)* %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 14
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %36
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 15
  store i64 %58, i64* %62, align 8
  %63 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 8
  store %struct.pt_regs* null, %struct.pt_regs** %65, align 8
  %66 = load i32, i32* @_TIF_RESTOREALL, align 4
  %67 = load %struct.thread_info*, %struct.thread_info** %15, align 8
  %68 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  store void ()* @ret_from_kernel_thread, void ()** %13, align 8
  br label %107

71:                                               ; preds = %5
  %72 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %72, %struct.pt_regs** %16, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %16, align 8
  %74 = call i32 @CHECK_FULL_REGS(%struct.pt_regs* %73)
  %75 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %76 = load %struct.pt_regs*, %struct.pt_regs** %16, align 8
  %77 = bitcast %struct.pt_regs* %75 to i8*
  %78 = bitcast %struct.pt_regs* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 32, i1 false)
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %71
  %88 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %89 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 8
  store %struct.pt_regs* %88, %struct.pt_regs** %91, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 3
  store i64 0, i64* %95, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @CLONE_SETTLS, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %100, %87
  store void ()* @ret_from_fork, void ()** %13, align 8
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i32, i32* @MSR_FP, align 4
  %109 = load i32, i32* @MSR_VEC, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MSR_VSX, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %119 = load i64, i64* %14, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = inttoptr i64 %121 to i64*
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  store i64 0, i64* %123, align 8
  %124 = load i64, i64* %14, align 8
  %125 = sub i64 %124, 32
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = inttoptr i64 %126 to %struct.pt_regs*
  store %struct.pt_regs* %127, %struct.pt_regs** %12, align 8
  %128 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %129 = load i64, i64* %14, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  %135 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %136 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 6
  store i32* null, i32** %137, align 8
  %138 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @setup_ksp_vsid(%struct.task_struct* %138, i64 %139)
  %141 = load void ()*, void ()** %13, align 8
  %142 = bitcast void ()* %141 to void (...)*
  %143 = call i8* @ppc_function_entry(void (...)* %142)
  %144 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %145 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @klp_init_thread_info(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i8* @ppc_function_entry(void (...)*) #1

declare dso_local void @ret_from_kernel_thread() #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i32 @CHECK_FULL_REGS(%struct.pt_regs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @ret_from_fork() #1

declare dso_local i32 @setup_ksp_vsid(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
