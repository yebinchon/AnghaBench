; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_deliverable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_deliverable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_10__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@IRQ_PEND_EXT_MASK = common dso_local global i64 0, align 8
@IRQ_PEND_IO_MASK = common dso_local global i64 0, align 8
@CR0_EXTERNAL_CALL_SUBMASK = common dso_local global i32 0, align 4
@IRQ_PEND_EXT_EXTERNAL = common dso_local global i32 0, align 4
@CR0_EMERGENCY_SIGNAL_SUBMASK = common dso_local global i32 0, align 4
@IRQ_PEND_EXT_EMERGENCY = common dso_local global i32 0, align 4
@CR0_CLOCK_COMPARATOR_SUBMASK = common dso_local global i32 0, align 4
@IRQ_PEND_EXT_CLOCK_COMP = common dso_local global i32 0, align 4
@CR0_CPU_TIMER_SUBMASK = common dso_local global i32 0, align 4
@IRQ_PEND_EXT_CPU_TIMER = common dso_local global i32 0, align 4
@CR0_SERVICE_SIGNAL_SUBMASK = common dso_local global i32 0, align 4
@IRQ_PEND_EXT_SERVICE = common dso_local global i32 0, align 4
@IRQ_PEND_MCHK_MASK = common dso_local global i64 0, align 8
@IRQ_PEND_MCHK_REP = common dso_local global i32 0, align 4
@IRQ_PEND_SIGP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @deliverable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @deliverable_irqs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i64 @pending_irqs(%struct.kvm_vcpu* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %150

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i64 @psw_extint_disabled(%struct.kvm_vcpu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i64, i64* @IRQ_PEND_EXT_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i64 @psw_ioint_disabled(%struct.kvm_vcpu* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @IRQ_PEND_IO_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %4, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @disable_iscs(%struct.kvm_vcpu* %29, i64 %30)
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CR0_EXTERNAL_CALL_SUBMASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @IRQ_PEND_EXT_EXTERNAL, align 4
  %46 = call i32 @__clear_bit(i32 %45, i64* %4)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CR0_EMERGENCY_SIGNAL_SUBMASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @IRQ_PEND_EXT_EMERGENCY, align 4
  %61 = call i32 @__clear_bit(i32 %60, i64* %4)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CR0_CLOCK_COMPARATOR_SUBMASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @IRQ_PEND_EXT_CLOCK_COMP, align 4
  %76 = call i32 @__clear_bit(i32 %75, i64* %4)
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CR0_CPU_TIMER_SUBMASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @IRQ_PEND_EXT_CPU_TIMER, align 4
  %91 = call i32 @__clear_bit(i32 %90, i64* %4)
  br label %92

92:                                               ; preds = %89, %77
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CR0_SERVICE_SIGNAL_SUBMASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* @IRQ_PEND_EXT_SERVICE, align 4
  %106 = call i32 @__clear_bit(i32 %105, i64* %4)
  br label %107

107:                                              ; preds = %104, %92
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = call i64 @psw_mchk_disabled(%struct.kvm_vcpu* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i64, i64* @IRQ_PEND_MCHK_MASK, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %4, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 14
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %132, %139
  %141 = and i32 %124, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %116
  %144 = load i32, i32* @IRQ_PEND_MCHK_REP, align 4
  %145 = call i32 @__clear_bit(i32 %144, i64* %4)
  br label %146

146:                                              ; preds = %143, %116
  %147 = load i32, i32* @IRQ_PEND_SIGP_STOP, align 4
  %148 = call i32 @__clear_bit(i32 %147, i64* %4)
  %149 = load i64, i64* %4, align 8
  store i64 %149, i64* %2, align 8
  br label %150

150:                                              ; preds = %146, %9
  %151 = load i64, i64* %2, align 8
  ret i64 %151
}

declare dso_local i64 @pending_irqs(%struct.kvm_vcpu*) #1

declare dso_local i64 @psw_extint_disabled(%struct.kvm_vcpu*) #1

declare dso_local i64 @psw_ioint_disabled(%struct.kvm_vcpu*) #1

declare dso_local i64 @disable_iscs(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i64 @psw_mchk_disabled(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
