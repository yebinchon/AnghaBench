; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_track_tsc_matching.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_track_tsc_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_gtod_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.kvm_arch }
%struct.kvm_arch = type { i64, i64 }

@KVM_REQ_MASTERCLOCK_UPDATE = common dso_local global i32 0, align 4
@pvclock_gtod_data = common dso_local global %struct.pvclock_gtod_data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvm_track_tsc_matching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_track_tsc_matching(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
