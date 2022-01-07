; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_clear_tlb1_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_clear_tlb1_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvmppc_vcpu_e500 = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@host_tlb_params = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*)* @clear_tlb1_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_tlb1_bitmap(%struct.kvmppc_vcpu_e500* %0) #0 {
  %2 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %2, align 8
  %3 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %4 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i64 %10, i32 0, i32 %19)
  br label %21

21:                                               ; preds = %7, %1
  %22 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %28 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @host_tlb_params, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i64 %29, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
