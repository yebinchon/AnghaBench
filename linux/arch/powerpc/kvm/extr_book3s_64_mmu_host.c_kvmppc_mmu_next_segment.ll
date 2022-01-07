; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_next_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_next_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_book3s_shadow_vcpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SLB_ESID_V = common dso_local global i32 0, align 4
@ESID_MASK = common dso_local global i32 0, align 4
@mmu_slb_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvmppc_mmu_next_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_mmu_next_segment(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %10)
  store %struct.kvmppc_book3s_shadow_vcpu* %11, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  store i32 64, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %20 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SLB_ESID_V, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %8, align 4
  br label %48

32:                                               ; preds = %18
  %33 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %34 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ESID_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %9, align 4
  br label %79

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %9, align 4
  br label %79

57:                                               ; preds = %52
  %58 = load i32, i32* @mmu_slb_size, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @mmu_slb_size, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %64 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = call i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %73 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %76 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %71, %55, %45
  %80 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %81 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu*) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
