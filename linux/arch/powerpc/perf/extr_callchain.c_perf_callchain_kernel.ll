; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_callchain.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_callchain.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry_ctx = type { i32 }
%struct.pt_regs = type { i64, i64*, i64 }

@current = common dso_local global i32 0, align 4
@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@STACK_INT_FRAME_SIZE = common dso_local global i64 0, align 8
@STACK_FRAME_MARKER = common dso_local global i64 0, align 8
@STACK_FRAME_REGS_MARKER = common dso_local global i64 0, align 8
@PERF_CONTEXT_KERNEL = common dso_local global i32 0, align 4
@STACK_FRAME_LR_SAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = call i64 @perf_instruction_pointer(%struct.pt_regs* %20)
  %22 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %19, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @current, align 4
  %25 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %26 = call i32 @validate_sp(i64 %23, i32 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %101

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %10, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @STACK_INT_FRAME_SIZE, align 8
  %39 = add i64 %37, %38
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %30
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* @STACK_FRAME_MARKER, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @STACK_FRAME_REGS_MARKER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %51 = add i64 %49, %50
  %52 = inttoptr i64 %51 to %struct.pt_regs*
  store %struct.pt_regs* %52, %struct.pt_regs** %4, align 8
  %53 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %59 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %60 = load i32, i32* @PERF_CONTEXT_KERNEL, align 4
  %61 = call i32 @perf_callchain_store_context(%struct.perf_callchain_entry_ctx* %59, i32 %60)
  br label %90

62:                                               ; preds = %41, %30
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %7, align 8
  br label %72

67:                                               ; preds = %62
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* @STACK_FRAME_LR_SAVE, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %67, %65
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %75, %72
  %80 = load i64, i64* %9, align 8
  %81 = icmp sle i64 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @kernel_text_address(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %75
  store i64 0, i64* %7, align 8
  br label %87

87:                                               ; preds = %86, %82, %79
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %87, %48
  %91 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %91, i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @valid_next_sp(i64 %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %5, align 8
  br label %30

101:                                              ; preds = %98, %28
  ret void
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i64) #1

declare dso_local i64 @perf_instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @validate_sp(i64, i32, i64) #1

declare dso_local i32 @perf_callchain_store_context(%struct.perf_callchain_entry_ctx*, i32) #1

declare dso_local i32 @kernel_text_address(i64) #1

declare dso_local i32 @valid_next_sp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
