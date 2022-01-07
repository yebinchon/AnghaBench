; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_crypto_clear_masks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_crypto_clear_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CLR CRYCB:\00", align 1
@KVM_REQ_VSIE_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_crypto_clear_masks(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = getelementptr inbounds %struct.kvm, %struct.kvm* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.kvm*, %struct.kvm** %2, align 8
  %7 = call i32 @kvm_s390_vcpu_block_all(%struct.kvm* %6)
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.kvm*, %struct.kvm** %2, align 8
  %23 = call i32 @VM_EVENT(%struct.kvm* %22, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = load i32, i32* @KVM_REQ_VSIE_RESTART, align 4
  %26 = call i32 @kvm_s390_sync_request_broadcast(%struct.kvm* %24, i32 %25)
  %27 = load %struct.kvm*, %struct.kvm** %2, align 8
  %28 = call i32 @kvm_s390_vcpu_unblock_all(%struct.kvm* %27)
  %29 = load %struct.kvm*, %struct.kvm** %2, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_s390_vcpu_block_all(%struct.kvm*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i8*) #1

declare dso_local i32 @kvm_s390_sync_request_broadcast(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_s390_vcpu_unblock_all(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
