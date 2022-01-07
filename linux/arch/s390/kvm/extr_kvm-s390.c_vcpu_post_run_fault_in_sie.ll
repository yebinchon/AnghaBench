; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_vcpu_post_run_fault_in_sie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_vcpu_post_run_fault_in_sie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.kvm_s390_pgm_info, %struct.TYPE_5__* }
%struct.kvm_s390_pgm_info = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PGM_ADDRESSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fault in sie instruction\00", align 1
@KVM_S390_PGM_FLAGS_ILC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vcpu_post_run_fault_in_sie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_post_run_fault_in_sie(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_s390_pgm_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %4, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %4, i32 0, i32 1
  %10 = load i32, i32* @PGM_ADDRESSING, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %11, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call i32 @trace_kvm_s390_sie_fault(%struct.kvm_vcpu* %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @read_guest_instr(%struct.kvm_vcpu* %15, i32 %22, i32* %5, i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @insn_length(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = bitcast %struct.kvm_s390_pgm_info* %4 to i8*
  %38 = bitcast %struct.kvm_s390_pgm_info* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 8, i1 false)
  store i32 4, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @KVM_S390_PGM_FLAGS_ILC_VALID, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.kvm_s390_pgm_info, %struct.kvm_s390_pgm_info* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @kvm_s390_forward_psw(%struct.kvm_vcpu* %45, i32 %46)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu* %48, %struct.kvm_s390_pgm_info* %4)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %28
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i8*) #1

declare dso_local i32 @trace_kvm_s390_sie_fault(%struct.kvm_vcpu*) #1

declare dso_local i32 @read_guest_instr(%struct.kvm_vcpu*, i32, i32*, i32) #1

declare dso_local i32 @insn_length(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kvm_s390_forward_psw(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_irq(%struct.kvm_vcpu*, %struct.kvm_s390_pgm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
