; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invpcid_gva.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invpcid_gva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { %struct.TYPE_6__*, i32 (%struct.kvm_vcpu*, i32, i32)*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@KVM_MMU_NUM_PREV_ROOTS = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_invpcid_gva(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_mmu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.kvm_mmu*, %struct.kvm_mmu** %12, align 8
  store %struct.kvm_mmu* %13, %struct.kvm_mmu** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = call i64 @kvm_get_active_pcid(%struct.kvm_vcpu* %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 1
  %21 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %20, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %21(%struct.kvm_vcpu* %22, i32 %23, i32 %26)
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %18, %3
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @KVM_MMU_NUM_PREV_ROOTS, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @VALID_PAGE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @kvm_get_pcid(%struct.kvm_vcpu* %45, i32 %52)
  %54 = icmp eq i64 %44, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %43
  %56 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %56, i32 0, i32 1
  %58 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %57, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %62 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %58(%struct.kvm_vcpu* %59, i32 %60, i32 %67)
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %55, %43, %33
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %29

73:                                               ; preds = %29
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %78, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 %79(%struct.kvm_vcpu* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  ret void
}

declare dso_local i64 @kvm_get_active_pcid(%struct.kvm_vcpu*) #1

declare dso_local i64 @VALID_PAGE(i32) #1

declare dso_local i64 @kvm_get_pcid(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
