; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_invalid_guest_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_invalid_guest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_8__, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@CPU_BASED_VIRTUAL_INTR_PENDING = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KVM_INTERNAL_ERROR_EMULATION = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_invalid_guest_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_invalid_guest_state(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %4, align 8
  store i32 130, i32* %6, align 4
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %24 = call i32 @exec_controls_get(%struct.vcpu_vmx* %23)
  %25 = load i32, i32* @CPU_BASED_VIRTUAL_INTR_PENDING, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %117, %19
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %38, label %118

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i64 @vmx_interrupt_allowed(%struct.kvm_vcpu* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %47 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %46, i32 0, i32 2
  %48 = call i32 @handle_interrupt_window(i32* %47)
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %41, %38
  %50 = load i32, i32* @KVM_REQ_EVENT, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i64 @kvm_test_request(i32 %50, %struct.kvm_vcpu* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %119

55:                                               ; preds = %49
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %119

60:                                               ; preds = %55
  %61 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %62 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %67 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @KVM_INTERNAL_ERROR_EMULATION, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  store i32 0, i32* %2, align 4
  br label %119

95:                                               ; preds = %71, %65, %60
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = call i32 @kvm_vcpu_halt(%struct.kvm_vcpu* %105)
  store i32 %106, i32* %2, align 4
  br label %119

107:                                              ; preds = %95
  %108 = load i32, i32* @current, align 4
  %109 = call i64 @signal_pending(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 1, i32* %2, align 4
  br label %119

112:                                              ; preds = %107
  %113 = call i64 (...) @need_resched()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @schedule()
  br label %117

117:                                              ; preds = %115, %112
  br label %27

118:                                              ; preds = %36
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %111, %101, %78, %59, %54, %45
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @exec_controls_get(%struct.vcpu_vmx*) #1

declare dso_local i64 @vmx_interrupt_allowed(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_interrupt_window(i32*) #1

declare dso_local i64 @kvm_test_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_halt(%struct.kvm_vcpu*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
