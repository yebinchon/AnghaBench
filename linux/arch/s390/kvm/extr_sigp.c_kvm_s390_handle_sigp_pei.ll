; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_kvm_s390_handle_sigp_pei.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_kvm_s390_handle_sigp_pei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SIGP_EXTERNAL_CALL = common dso_local global i64 0, align 8
@SIGP_CC_ORDER_CODE_ACCEPTED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_sigp_pei(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %4, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i64 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu* %26, i32* null)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @trace_kvm_s390_handle_sigp_pei(%struct.kvm_vcpu* %28, i64 %29, i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @SIGP_EXTERNAL_CALL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %1
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.kvm_vcpu* @kvm_get_vcpu_by_id(i32 %38, i32 %39)
  store %struct.kvm_vcpu* %40, %struct.kvm_vcpu** %6, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %42 = icmp eq %struct.kvm_vcpu* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = call i32 @kvm_s390_vcpu_wakeup(%struct.kvm_vcpu* %45)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = load i32, i32* @SIGP_CC_ORDER_CODE_ACCEPTED, align 4
  %49 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %35
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @trace_kvm_s390_handle_sigp_pei(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu_by_id(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_s390_vcpu_wakeup(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
