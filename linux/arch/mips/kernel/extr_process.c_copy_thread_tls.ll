; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_copy_thread_tls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_copy_thread_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.thread_info = type { i64, i32 }
%struct.pt_regs = type { i64, i64* }

@THREAD_SIZE = common dso_local global i64 0, align 8
@ST0_CU2 = common dso_local global i32 0, align 4
@ST0_CU1 = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@KERNEL_DS = common dso_local global i32 0, align 4
@ret_from_kernel_thread = common dso_local global i64 0, align 8
@ST0_EXL = common dso_local global i64 0, align 8
@USER_DS = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8
@TIF_USEDFPU = common dso_local global i32 0, align 4
@TIF_USEDMSA = common dso_local global i32 0, align 4
@TIF_MSA_CTX_LIVE = common dso_local global i32 0, align 4
@BD_EMUFRAME_NONE = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@ST0_IEC = common dso_local global i64 0, align 8
@ST0_IEP = common dso_local global i64 0, align 8
@ST0_KUC = common dso_local global i64 0, align 8
@ST0_KUP = common dso_local global i64 0, align 8
@TIF_FPUBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread_tls(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.thread_info*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca %struct.pt_regs*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.task_struct* %3, %struct.task_struct** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %18 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %17)
  store %struct.thread_info* %18, %struct.thread_info** %12, align 8
  %19 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %19, %struct.pt_regs** %14, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %21 = call i64 @task_stack_page(%struct.task_struct* %20)
  %22 = load i64, i64* @THREAD_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 32
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = inttoptr i64 %25 to %struct.pt_regs*
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i64 -1
  store %struct.pt_regs* %27, %struct.pt_regs** %13, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %29 = ptrtoint %struct.pt_regs* %28 to i64
  store i64 %29, i64* %15, align 8
  %30 = call i32 (...) @read_c0_status()
  %31 = load i32, i32* @ST0_CU2, align 4
  %32 = load i32, i32* @ST0_CU1, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PF_KTHREAD, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %5
  %47 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %16, align 8
  %52 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %53 = call i32 @memset(%struct.pt_regs* %52, i32 0, i32 16)
  %54 = load i32, i32* @KERNEL_DS, align 4
  %55 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %56 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* @ret_from_kernel_thread, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* @ST0_EXL, align 8
  %74 = load i64, i64* %16, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %6, align 4
  br label %145

79:                                               ; preds = %5
  %80 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %82 = bitcast %struct.pt_regs* %80 to i8*
  %83 = bitcast %struct.pt_regs* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 7
  store i64 0, i64* %87, align 8
  %88 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 29
  store i64 %95, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %79
  %101 = load i32, i32* @USER_DS, align 4
  %102 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %103 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %105 = ptrtoint %struct.pt_regs* %104 to i64
  %106 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %107 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* @ret_from_fork, align 8
  %110 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* @ST0_CU2, align 4
  %114 = load i32, i32* @ST0_CU1, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = sext i32 %116 to i64
  %118 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %123 = load i32, i32* @TIF_USEDFPU, align 4
  %124 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %122, i32 %123)
  %125 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %126 = load i32, i32* @TIF_USEDMSA, align 4
  %127 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %125, i32 %126)
  %128 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %129 = load i32, i32* @TIF_MSA_CTX_LIVE, align 4
  %130 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %128, i32 %129)
  %131 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %132 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  %134 = load i32, i32* @BD_EMUFRAME_NONE, align 4
  %135 = call i32 @atomic_set(i32* %133, i32 %134)
  %136 = load i64, i64* %7, align 8
  %137 = load i64, i64* @CLONE_SETTLS, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %100
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  %143 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %100
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %46
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
