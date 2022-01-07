; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_slbie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_slbie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_slb = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"KVM MMU: slbie(0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"KVM MMU: slbie(0x%llx, 0x%llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_mmu_book3s_64_slbie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_mmu_book3s_64_slbie(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_slb*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.kvmppc_slb* @kvmppc_mmu_book3s_64_find_slbe(%struct.kvm_vcpu* %9, i32 %10)
  store %struct.kvmppc_slb* %11, %struct.kvmppc_slb** %5, align 8
  %12 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %13 = icmp ne %struct.kvmppc_slb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %18 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %22 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %24 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %26 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %5, align 8
  %28 = call i64 @kvmppc_slb_sid_shift(%struct.kvmppc_slb* %27)
  %29 = shl i64 1, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @kvmppc_mmu_flush_segment(%struct.kvm_vcpu* %31, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local %struct.kvmppc_slb* @kvmppc_mmu_book3s_64_find_slbe(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvmppc_slb_sid_shift(%struct.kvmppc_slb*) #1

declare dso_local i32 @kvmppc_mmu_flush_segment(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
