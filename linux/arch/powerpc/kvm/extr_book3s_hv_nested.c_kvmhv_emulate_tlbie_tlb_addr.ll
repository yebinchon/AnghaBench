; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_tlb_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_emulate_tlbie_tlb_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvm_nested_guest = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i64)* @kvmhv_emulate_tlbie_tlb_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_emulate_tlbie_tlb_addr(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca %struct.kvm_nested_guest*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ap_to_shift(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %9, align 8
  %22 = shl i64 %21, 12
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %77

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = sub i64 %31, 1
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %15, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %15, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = sub nsw i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  store i64 %40, i64* %12, align 8
  %41 = load %struct.kvm*, %struct.kvm** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.kvm_nested_guest* @kvmhv_get_nested(%struct.kvm* %41, i32 %42, i32 0)
  store %struct.kvm_nested_guest* %43, %struct.kvm_nested_guest** %11, align 8
  %44 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %45 = icmp ne %struct.kvm_nested_guest* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %77

47:                                               ; preds = %28
  %48 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %49 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  br label %51

51:                                               ; preds = %68, %47
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %53 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @kvmhv_invalidate_shadow_pte(%struct.kvm_vcpu* %52, %struct.kvm_nested_guest* %53, i64 %54, i32* %14)
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = sub nsw i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = shl i64 1, %59
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %51
  %69 = load i64, i64* %12, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %51, label %71

71:                                               ; preds = %68
  %72 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %73 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %11, align 8
  %76 = call i32 @kvmhv_put_nested(%struct.kvm_nested_guest* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %46, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @ap_to_shift(i32) #1

declare dso_local %struct.kvm_nested_guest* @kvmhv_get_nested(%struct.kvm*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvmhv_invalidate_shadow_pte(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvmhv_put_nested(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
