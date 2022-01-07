; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_native_flush_tlb_others.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_native_flush_tlb_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.flush_tlb_info = type { i64, i64, i64 }

@NR_TLB_REMOTE_FLUSH = common dso_local global i32 0, align 4
@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@TLB_REMOTE_SEND_IPI = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@flush_tlb_func_remote = common dso_local global i32 0, align 4
@tlb_is_not_lazy = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_flush_tlb_others(%struct.cpumask* %0, %struct.flush_tlb_info* %1) #0 {
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca %struct.flush_tlb_info*, align 8
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  store %struct.flush_tlb_info* %1, %struct.flush_tlb_info** %4, align 8
  %5 = load i32, i32* @NR_TLB_REMOTE_FLUSH, align 4
  %6 = call i32 @count_vm_tlb_event(i32 %5)
  %7 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %8 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @TLB_REMOTE_SEND_IPI, align 4
  %14 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %15 = call i32 @trace_tlb_flush(i32 %13, i64 %14)
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @TLB_REMOTE_SEND_IPI, align 4
  %18 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %19 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %22 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = ashr i64 %24, %25
  %27 = call i32 @trace_tlb_flush(i32 %17, i64 %26)
  br label %28

28:                                               ; preds = %16, %12
  %29 = call i64 (...) @is_uv_system()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %33 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %34 = call %struct.cpumask* @uv_flush_tlb_others(%struct.cpumask* %32, %struct.flush_tlb_info* %33)
  store %struct.cpumask* %34, %struct.cpumask** %3, align 8
  %35 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %36 = icmp ne %struct.cpumask* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %39 = load i32, i32* @flush_tlb_func_remote, align 4
  %40 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %41 = bitcast %struct.flush_tlb_info* %40 to i8*
  %42 = call i32 @smp_call_function_many(%struct.cpumask* %38, i32 %39, i8* %41, i32 1)
  br label %43

43:                                               ; preds = %37, %31
  br label %63

44:                                               ; preds = %28
  %45 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %46 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %51 = load i32, i32* @flush_tlb_func_remote, align 4
  %52 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %53 = bitcast %struct.flush_tlb_info* %52 to i8*
  %54 = call i32 @smp_call_function_many(%struct.cpumask* %50, i32 %51, i8* %53, i32 1)
  br label %63

55:                                               ; preds = %44
  %56 = load i32, i32* @tlb_is_not_lazy, align 4
  %57 = load i32, i32* @flush_tlb_func_remote, align 4
  %58 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %4, align 8
  %59 = bitcast %struct.flush_tlb_info* %58 to i8*
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %62 = call i32 @on_each_cpu_cond_mask(i32 %56, i32 %57, i8* %59, i32 1, i32 %60, %struct.cpumask* %61)
  br label %63

63:                                               ; preds = %43, %55, %49
  ret void
}

declare dso_local i32 @count_vm_tlb_event(i32) #1

declare dso_local i32 @trace_tlb_flush(i32, i64) #1

declare dso_local i64 @is_uv_system(...) #1

declare dso_local %struct.cpumask* @uv_flush_tlb_others(%struct.cpumask*, %struct.flush_tlb_info*) #1

declare dso_local i32 @smp_call_function_many(%struct.cpumask*, i32, i8*, i32) #1

declare dso_local i32 @on_each_cpu_cond_mask(i32, i32, i8*, i32, i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
