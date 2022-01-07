; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_rm_h_page_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_rm_h_page_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }

@SZ_4K = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@H_TOO_HARD = common dso_local global i64 0, align 8
@H_ICACHE_INVALIDATE = common dso_local global i64 0, align 8
@H_ICACHE_SYNCHRONIZE = common dso_local global i64 0, align 8
@H_ZERO_PAGE = common dso_local global i64 0, align 8
@H_COPY_PAGE = common dso_local global i64 0, align 8
@H_PAGE_SET_LOANED = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_rm_h_page_init(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.kvm*, %struct.kvm** %14, align 8
  store %struct.kvm* %15, %struct.kvm** %10, align 8
  %16 = load i64, i64* @SZ_4K, align 8
  %17 = sub i64 %16, 1
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @H_SUCCESS, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.kvm*, %struct.kvm** %10, align 8
  %20 = call i64 @kvm_is_radix(%struct.kvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %23, i64* %5, align 8
  br label %79

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @H_ICACHE_INVALIDATE, align 8
  %27 = load i64, i64* @H_ICACHE_SYNCHRONIZE, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @H_ZERO_PAGE, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @H_COPY_PAGE, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @H_PAGE_SET_LOANED, align 8
  %34 = or i64 %32, %33
  %35 = xor i64 %34, -1
  %36 = and i64 %25, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i64, i64* @H_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %79

40:                                               ; preds = %24
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @H_COPY_PAGE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %40
  %56 = load i64, i64* @H_PARAMETER, align 8
  store i64 %56, i64* %5, align 8
  br label %79

57:                                               ; preds = %50, %45
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @H_COPY_PAGE, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @kvmppc_do_h_page_init_copy(%struct.kvm_vcpu* %63, i64 %64, i64 %65)
  store i64 %66, i64* %12, align 8
  br label %77

67:                                               ; preds = %57
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @H_ZERO_PAGE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @kvmppc_do_h_page_init_zero(%struct.kvm_vcpu* %73, i64 %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %55, %38, %22
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_do_h_page_init_copy(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i64 @kvmppc_do_h_page_init_zero(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
