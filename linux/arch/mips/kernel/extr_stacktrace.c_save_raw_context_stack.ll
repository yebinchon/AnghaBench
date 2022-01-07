; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_stacktrace.c_save_raw_context_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_stacktrace.c_save_raw_context_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_trace = type { i64, i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stack_trace*, i64, i32)* @save_raw_context_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_raw_context_stack(%struct.stack_trace* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.stack_trace* %0, %struct.stack_trace** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %7, align 8
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i64*, i64** %7, align 8
  %13 = call i32 @kstack_end(i64* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %61

16:                                               ; preds = %11
  %17 = load i64*, i64** %7, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %7, align 8
  %19 = load i64, i64* %17, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @__kernel_text_address(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @in_sched_functions(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %32 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %37 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %50

40:                                               ; preds = %30
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %43 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %46 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %41, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %52 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %55 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %61

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %26, %16
  br label %11

61:                                               ; preds = %58, %11
  ret void
}

declare dso_local i32 @kstack_end(i64*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
