; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_e500_emul_ehpriv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_e500_emul_ehpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@DEBUG_EXITS = common dso_local global i32 0, align 4
@EMULATE_EXIT_USER = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32*)* @kvmppc_e500_emul_ehpriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_emul_ehpriv(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_oc(i32 %11)
  switch i32 %12, label %35 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %15 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = load i32, i32* @DEBUG_EXITS, align 4
  %32 = call i32 @kvmppc_account_exit(%struct.kvm_vcpu* %30, i32 %31)
  %33 = load i32, i32* @EMULATE_EXIT_USER, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 0, i32* %34, align 4
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %13
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @get_oc(i32) #1

declare dso_local i32 @kvmppc_account_exit(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
