; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_init_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_ops = type { i64 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_ops* }

@kvmppc_hv_ops = common dso_local global %struct.kvmppc_ops* null, align 8
@kvmppc_pr_ops = common dso_local global %struct.kvmppc_ops* null, align 8
@KVM_VM_PPC_HV = common dso_local global i64 0, align 8
@KVM_VM_PPC_PR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_init_vm(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_ops*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.kvmppc_ops* null, %struct.kvmppc_ops** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_hv_ops, align 8
  %11 = icmp ne %struct.kvmppc_ops* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_hv_ops, align 8
  store %struct.kvmppc_ops* %13, %struct.kvmppc_ops** %6, align 8
  br label %16

14:                                               ; preds = %9
  %15 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_pr_ops, align 8
  store %struct.kvmppc_ops* %15, %struct.kvmppc_ops** %6, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** %6, align 8
  %18 = icmp ne %struct.kvmppc_ops* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %65

20:                                               ; preds = %16
  br label %44

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @KVM_VM_PPC_HV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_hv_ops, align 8
  %27 = icmp ne %struct.kvmppc_ops* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %65

29:                                               ; preds = %25
  %30 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_hv_ops, align 8
  store %struct.kvmppc_ops* %30, %struct.kvmppc_ops** %6, align 8
  br label %43

31:                                               ; preds = %21
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @KVM_VM_PPC_PR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_pr_ops, align 8
  %37 = icmp ne %struct.kvmppc_ops* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %65

39:                                               ; preds = %35
  %40 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** @kvmppc_pr_ops, align 8
  store %struct.kvmppc_ops* %40, %struct.kvmppc_ops** %6, align 8
  br label %42

41:                                               ; preds = %31
  br label %65

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %20
  %45 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** %6, align 8
  %46 = getelementptr inbounds %struct.kvmppc_ops, %struct.kvmppc_ops* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** %6, align 8
  %51 = getelementptr inbounds %struct.kvmppc_ops, %struct.kvmppc_ops* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @try_module_get(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %68

58:                                               ; preds = %49, %44
  %59 = load %struct.kvmppc_ops*, %struct.kvmppc_ops** %6, align 8
  %60 = load %struct.kvm*, %struct.kvm** %4, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.kvmppc_ops* %59, %struct.kvmppc_ops** %62, align 8
  %63 = load %struct.kvm*, %struct.kvm** %4, align 8
  %64 = call i32 @kvmppc_core_init_vm(%struct.kvm* %63)
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %41, %38, %28, %19
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %58, %55
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @try_module_get(i64) #1

declare dso_local i32 @kvmppc_core_init_vm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
