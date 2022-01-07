; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_db_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_db_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_8__*, %struct.kvm_vcpu, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.kvm_vcpu = type { i32, %struct.kvm_run* }
%struct.kvm_run = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @db_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  store %struct.kvm_run* %9, %struct.kvm_run** %4, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 1
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %5, align 8
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %17 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 1
  %29 = load i32, i32* @DB_VECTOR, align 4
  %30 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %28, i32 %29)
  store i32 1, i32* %2, align 4
  br label %80

31:                                               ; preds = %21, %1
  %32 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %33 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %38 = call i32 @disable_nmi_singlestep(%struct.vcpu_svm* %37)
  %39 = load i32, i32* @KVM_REQ_EVENT, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %41 = call i32 @kvm_make_request(i32 %39, %struct.kvm_vcpu* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %48 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %42
  %53 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %54 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %62, %68
  %70 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i64 %69, i64* %73, align 8
  %74 = load i32, i32* @DB_VECTOR, align 4
  %75 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %80

79:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %52, %26
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @disable_nmi_singlestep(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
