; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_get_yield_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_get_yield_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.lppaca = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvmppc_get_yield_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_get_yield_count(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lppaca*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lppaca*
  store %struct.lppaca* %14, %struct.lppaca** %4, align 8
  %15 = load %struct.lppaca*, %struct.lppaca** %4, align 8
  %16 = icmp ne %struct.lppaca* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.lppaca*, %struct.lppaca** %4, align 8
  %19 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
