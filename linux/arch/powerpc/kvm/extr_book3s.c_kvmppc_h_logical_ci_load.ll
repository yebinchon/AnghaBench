; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_h_logical_ci_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_h_logical_ci_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_h_logical_ci_load(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %9, i32 4)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %11, i32 5)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @is_power_of_2(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %16
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @srcu_read_lock(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @KVM_MMIO_BUS, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @kvm_io_bus_read(%struct.kvm_vcpu* %27, i32 %28, i64 %29, i64 %30, i32* %6)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @srcu_read_unlock(i32* %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %21
  %43 = load i64, i64* %4, align 8
  switch i64 %43, label %63 [
    i64 1, label %44
    i64 2, label %48
    i64 4, label %53
    i64 8, label %58
  ]

44:                                               ; preds = %42
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %45, i32 4, i32 %46)
  br label %65

48:                                               ; preds = %42
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %49, i32 4, i32 %51)
  br label %65

53:                                               ; preds = %42
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %54, i32 4, i32 %56)
  br label %65

58:                                               ; preds = %42
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @be64_to_cpu(i32 %60)
  %62 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %59, i32 4, i32 %61)
  br label %65

63:                                               ; preds = %42
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %63, %58, %53, %48, %44
  %66 = load i32, i32* @H_SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %40, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_read(%struct.kvm_vcpu*, i32, i64, i64, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
