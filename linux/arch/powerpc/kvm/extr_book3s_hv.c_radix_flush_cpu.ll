; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_radix_flush_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_radix_flush_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_nested_guest* }
%struct.kvm_nested_guest = type { i32, i32 }

@threads_per_core = common dso_local global i32 0, align 4
@do_nothing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32, %struct.kvm_vcpu*)* @radix_flush_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radix_flush_cpu(%struct.kvm* %0, i32 %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_nested_guest*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %12, align 8
  store %struct.kvm_nested_guest* %13, %struct.kvm_nested_guest** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_first_thread_sibling(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %17 = icmp ne %struct.kvm_nested_guest* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %20, i32 0, i32 1
  %22 = call i32 @cpumask_set_cpu(i32 %19, i32* %21)
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %23, i32 0, i32 0
  store i32* %24, i32** %8, align 8
  br label %34

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @cpumask_set_cpu(i32 %26, i32* %29)
  %31 = load %struct.kvm*, %struct.kvm** %4, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %25, %18
  %35 = call i32 (...) @smp_mb()
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %54, %34
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @threads_per_core, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @cpumask_test_cpu(i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @do_nothing, align 4
  %52 = call i32 @smp_call_function_single(i32 %50, i32 %51, i32* null, i32 1)
  br label %53

53:                                               ; preds = %47, %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
