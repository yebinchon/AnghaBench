; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_ptrace_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_ptrace_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }

@FLAG_PA_CORE_IN_MM = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@FLAG_PA_IS_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, %struct.page*, i64, i8*, i64)* @flush_ptrace_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_ptrace_access(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @smp_processor_id()
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mm_cpumask(i32 %15)
  %17 = call i64 @cpumask_test_cpu(i32 %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @FLAG_PA_CORE_IN_MM, align 4
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VM_EXEC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @FLAG_PA_IS_EXEC, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @__flush_ptrace_access(%struct.page* %35, i64 %36, i8* %37, i64 %38, i32 %39)
  ret void
}

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mm_cpumask(i32) #1

declare dso_local i32 @__flush_ptrace_access(%struct.page*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
