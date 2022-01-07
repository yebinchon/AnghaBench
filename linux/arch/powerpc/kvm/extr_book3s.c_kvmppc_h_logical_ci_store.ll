; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_h_logical_ci_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_h_logical_ci_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_h_logical_ci_store(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %10, i32 4)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %12, i32 5)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %14, i32 6)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  switch i64 %16, label %29 [
    i64 1, label %17
    i64 2, label %20
    i64 4, label %23
    i64 8, label %26
  ]

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = bitcast i32* %7 to i64*
  store i64 %18, i64* %19, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @cpu_to_be16(i64 %21)
  store i32 %22, i32* %7, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @cpu_to_be32(i64 %24)
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @cpu_to_be64(i64 %27)
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %26, %23, %20, %17
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @srcu_read_lock(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* @KVM_MMIO_BUS, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @kvm_io_bus_write(%struct.kvm_vcpu* %37, i32 %38, i64 %39, i64 %40, i32* %7)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @srcu_read_unlock(i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %31
  %53 = load i32, i32* @H_SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %29
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_write(%struct.kvm_vcpu*, i32, i64, i64, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
