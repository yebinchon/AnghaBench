; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_load_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_load_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_AIL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_core_vcpu_load_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_vcpu_load_pr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %6 = call i64 @cpu_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %10 = call i64 @cpu_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* @SPRN_LPCR, align 4
  %14 = load i32, i32* @SPRN_LPCR, align 4
  %15 = call i32 @mfspr(i32 %14)
  %16 = load i32, i32* @LPCR_AIL, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @mtspr(i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %12, %8, %2
  %21 = call i32 (...) @smp_processor_id()
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i64 @kvmppc_is_split_real(%struct.kvm_vcpu* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = call i32 @kvmppc_fixup_split_real(%struct.kvm_vcpu* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvmppc_restore_tm_pr(%struct.kvm_vcpu* %31)
  ret void
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @kvmppc_is_split_real(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_fixup_split_real(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_restore_tm_pr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
