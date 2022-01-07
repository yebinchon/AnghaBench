; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invlpg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_invlpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { %struct.TYPE_5__*, i32 (%struct.kvm_vcpu*, i32, i32)*, i32 }
%struct.TYPE_5__ = type { i32 }

@KVM_MMU_NUM_PREV_ROOTS = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_invlpg(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  store %struct.kvm_mmu* %10, %struct.kvm_mmu** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i64 @is_noncanonical_address(i32 %11, %struct.kvm_vcpu* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %17, i32 0, i32 1
  %19 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %19(%struct.kvm_vcpu* %20, i32 %21, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %57, %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @KVM_MMU_NUM_PREV_ROOTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @VALID_PAGE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %42, i32 0, i32 1
  %44 = load i32 (%struct.kvm_vcpu*, i32, i32)*, i32 (%struct.kvm_vcpu*, i32, i32)** %43, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %44(%struct.kvm_vcpu* %45, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %41, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %62, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 %63(%struct.kvm_vcpu* %64, i32 %65)
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %60, %15
  ret void
}

declare dso_local i64 @is_noncanonical_address(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @VALID_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
