; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_flush_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_flush_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_book3s_shadow_vcpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SLB_ESID_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_flush_segment(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %10)
  store %struct.kvmppc_book3s_shadow_vcpu* %11, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %54, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %17 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %22 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SLB_ESID_V, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %20
  %33 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %34 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %47 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %32, %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %7, align 8
  %59 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %58)
  ret void
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
