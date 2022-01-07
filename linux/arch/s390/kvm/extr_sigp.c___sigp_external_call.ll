; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_external_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c___sigp_external_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_s390_irq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KVM_S390_INT_EXTERNAL_CALL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SIGP_STATUS_EXT_CALL_PENDING = common dso_local global i32 0, align 4
@SIGP_CC_STATUS_STORED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sent sigp ext call to cpu %x\00", align 1
@SIGP_CC_ORDER_CODE_ACCEPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*)* @__sigp_external_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sigp_external_call(%struct.kvm_vcpu* %0, %struct.kvm_vcpu* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_s390_irq, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %8, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %8, i32 0, i32 1
  %17 = load i32, i32* @KVM_S390_INT_EXTERNAL_CALL, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %19 = call i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu* %18, %struct.kvm_s390_irq* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, -4294967296
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* @SIGP_STATUS_EXT_CALL_PENDING, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @SIGP_CC_STATUS_STORED, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %39, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @SIGP_CC_ORDER_CODE_ACCEPTED, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %24
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu*, %struct.kvm_s390_irq*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
