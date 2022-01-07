; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.h_kvm_s390_inject_prog_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.h_kvm_s390_inject_prog_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_s390_pgm_info = type { i32 }
%struct.kvm_s390_irq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kvm_s390_pgm_info }

@KVM_S390_PROGRAM_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_s390_pgm_info*)* @kvm_s390_inject_prog_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %0, %struct.kvm_s390_pgm_info* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_s390_pgm_info*, align 8
  %5 = alloca %struct.kvm_s390_irq, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_s390_pgm_info* %1, %struct.kvm_s390_pgm_info** %4, align 8
  %6 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.kvm_s390_pgm_info*, %struct.kvm_s390_pgm_info** %4, align 8
  %9 = bitcast %struct.kvm_s390_pgm_info* %7 to i8*
  %10 = bitcast %struct.kvm_s390_pgm_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 1
  %12 = load i32, i32* @KVM_S390_PROGRAM_INT, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu* %13, %struct.kvm_s390_irq* %5)
  ret i32 %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu*, %struct.kvm_s390_irq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
