; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_all_lpid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_all_lpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_nested_guest** }
%struct.kvm_nested_guest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmhv_emulate_tlbie_all_lpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmhv_emulate_tlbie_all_lpid(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_nested_guest*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %5, align 8
  %11 = load %struct.kvm*, %struct.kvm** %5, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.kvm*, %struct.kvm** %5, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %15, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = load %struct.kvm*, %struct.kvm** %5, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %25, i64 %27
  %29 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %28, align 8
  store %struct.kvm_nested_guest* %29, %struct.kvm_nested_guest** %6, align 8
  %30 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %31 = icmp ne %struct.kvm_nested_guest* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.kvm*, %struct.kvm** %5, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @kvmhv_emulate_tlbie_lpid(%struct.kvm_vcpu* %36, %struct.kvm_nested_guest* %37, i32 %38)
  %40 = load %struct.kvm*, %struct.kvm** %5, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %32, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load %struct.kvm*, %struct.kvm** %5, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmhv_emulate_tlbie_lpid(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
