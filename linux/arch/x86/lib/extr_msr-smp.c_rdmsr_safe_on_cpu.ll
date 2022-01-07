; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c_rdmsr_safe_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_msr-smp.c_rdmsr_safe_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_info_completion = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.msr_info_completion*, i32 }

@__rdmsr_safe_on_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdmsr_safe_on_cpu(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.msr_info_completion, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.msr_info_completion* %9, %struct.msr_info_completion** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %14 = load i32, i32* @__rdmsr_safe_on_cpu, align 4
  store i32 %14, i32* %13, align 8
  %15 = call i32 @memset(%struct.msr_info_completion* %9, i32 0, i32 20)
  %16 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 1
  %17 = call i32 @init_completion(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @smp_call_function_single_async(i32 %21, %struct.TYPE_7__* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 1
  %27 = call i32 @wait_for_completion(i32* %26)
  %28 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %25, %4
  %32 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.msr_info_completion, %struct.msr_info_completion* %9, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.msr_info_completion*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @smp_call_function_single_async(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
