; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_radix_translate_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_mmu_radix_translate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvmppc_pte = type { i32 }
%struct.prtb_entry = type { i32 }

@PRTS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRTB_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_radix_translate_table(%struct.kvm_vcpu* %0, i32 %1, %struct.kvmppc_pte* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_pte*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.kvm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.prtb_entry, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.kvmppc_pte* %2, %struct.kvmppc_pte** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load %struct.kvm*, %struct.kvm** %21, align 8
  store %struct.kvm* %22, %struct.kvm** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PRTS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp sgt i32 %25, 24
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %71

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PRTS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = add nsw i32 %33, 12
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  store i64 %36, i64* %16, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = load i64, i64* %16, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %71

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PRTB_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = add i64 %49, %52
  store i64 %53, i64* %17, align 8
  %54 = load %struct.kvm*, %struct.kvm** %14, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @kvm_read_guest(%struct.kvm* %54, i64 %55, %struct.prtb_entry* %19, i32 4)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %71

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.prtb_entry, %struct.prtb_entry* %19, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be64_to_cpu(i32 %63)
  store i64 %64, i64* %18, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @kvmppc_mmu_walk_radix_tree(%struct.kvm_vcpu* %65, i32 %66, %struct.kvmppc_pte* %67, i64 %68, i32* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %61, %59, %42, %27
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @kvm_read_guest(%struct.kvm*, i64, %struct.prtb_entry*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @kvmppc_mmu_walk_radix_tree(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
