; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_check_need_tlb_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_check_need_tlb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_nested_guest = type { i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_check_need_tlb_flush(%struct.kvm* %0, i32 %1, %struct.kvm_nested_guest* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_nested_guest*, align 8
  %7 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_nested_guest* %2, %struct.kvm_nested_guest** %6, align 8
  %8 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %9 = call i64 @cpu_has_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cpu_first_thread_sibling(i32 %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %16 = icmp ne %struct.kvm_nested_guest* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %18, i32 0, i32 0
  store i32* %19, i32** %7, align 8
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %23, i32** %7, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @cpumask_test_cpu(i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = call i32 @flush_guest_tlb(%struct.kvm* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @cpumask_clear_cpu(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %29, %24
  ret void
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @flush_guest_tlb(%struct.kvm*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
