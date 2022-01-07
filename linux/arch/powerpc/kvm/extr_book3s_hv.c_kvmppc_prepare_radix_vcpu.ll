; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_prepare_radix_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_prepare_radix_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { i64, i32, %struct.kvm_nested_guest* }
%struct.kvm_nested_guest = type { i32* }
%struct.kvm = type { i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_prepare_radix_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_prepare_radix_vcpu(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_nested_guest*, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %10, align 8
  store %struct.kvm_nested_guest* %11, %struct.kvm_nested_guest** %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load %struct.kvm*, %struct.kvm** %13, align 8
  store %struct.kvm* %14, %struct.kvm** %6, align 8
  %15 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %16 = call i32 @cpu_has_feature(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %21 = icmp ne %struct.kvm_nested_guest* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %22
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @cpu_first_thread_sibling(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @cpu_first_thread_sibling(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.kvm*, %struct.kvm** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = call i32 @radix_flush_cpu(%struct.kvm* %51, i32 %52, %struct.kvm_vcpu* %53)
  br label %55

55:                                               ; preds = %50, %44, %41
  %56 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %57 = icmp ne %struct.kvm_nested_guest* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %59, i32* %67, align 4
  br label %73

68:                                               ; preds = %55
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %58
  br label %74

74:                                               ; preds = %18, %73, %37
  ret void
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @radix_flush_cpu(%struct.kvm*, i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
