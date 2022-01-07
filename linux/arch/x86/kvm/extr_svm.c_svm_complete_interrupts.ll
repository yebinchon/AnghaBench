; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_complete_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_complete_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, i64, %struct.TYPE_16__, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@HF_IRET_MASK = common dso_local global i32 0, align 4
@HF_NMI_MASK = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VEC_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_TYPE_MASK = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @svm_complete_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_complete_interrupts(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %18 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HF_IRET_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %1
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 2
  %30 = call i64 @kvm_rip_read(%struct.TYPE_16__* %29)
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load i32, i32* @HF_NMI_MASK, align 4
  %37 = load i32, i32* @HF_IRET_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %39
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @KVM_REQ_EVENT, align 4
  %47 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %48 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %47, i32 0, i32 2
  %49 = call i32 @kvm_make_request(i32 %46, %struct.TYPE_16__* %48)
  br label %50

50:                                               ; preds = %35, %27, %1
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %52 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 2
  %57 = call i32 @kvm_clear_exception_queue(%struct.TYPE_16__* %56)
  %58 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %59 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %58, i32 0, i32 2
  %60 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_16__* %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SVM_EXITINTINFO_VALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %142

66:                                               ; preds = %50
  %67 = load i32, i32* @KVM_REQ_EVENT, align 4
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %69 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %68, i32 0, i32 2
  %70 = call i32 @kvm_make_request(i32 %67, %struct.TYPE_16__* %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SVM_EXITINTINFO_VEC_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  switch i32 %77, label %141 [
    i32 128, label %78
    i32 130, label %83
    i32 129, label %136
  ]

78:                                               ; preds = %66
  %79 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %80 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %142

83:                                               ; preds = %66
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @kvm_exception_is_soft(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @BP_VECTOR, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %96 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %95, i32 0, i32 2
  %97 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %98 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @kvm_is_linear_rip(%struct.TYPE_16__* %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %94
  %103 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %104 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %103, i32 0, i32 2
  %105 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %106 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %105, i32 0, i32 2
  %107 = call i64 @kvm_rip_read(%struct.TYPE_16__* %106)
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = sub nsw i64 %107, %109
  %111 = call i32 @kvm_rip_write(%struct.TYPE_16__* %104, i64 %110)
  br label %112

112:                                              ; preds = %102, %94, %91, %87
  br label %142

113:                                              ; preds = %83
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @SVM_EXITINTINFO_VALID_ERR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %120 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %119, i32 0, i32 3
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %7, align 4
  %125 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %126 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %125, i32 0, i32 2
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @kvm_requeue_exception_e(%struct.TYPE_16__* %126, i32 %127, i32 %128)
  br label %135

130:                                              ; preds = %113
  %131 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %132 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %131, i32 0, i32 2
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @kvm_requeue_exception(%struct.TYPE_16__* %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %118
  br label %142

136:                                              ; preds = %66
  %137 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %138 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %137, i32 0, i32 2
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @kvm_queue_interrupt(%struct.TYPE_16__* %138, i32 %139, i32 0)
  br label %142

141:                                              ; preds = %66
  br label %142

142:                                              ; preds = %65, %141, %136, %135, %112, %78
  ret void
}

declare dso_local i64 @kvm_rip_read(%struct.TYPE_16__*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_16__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_16__*) #1

declare dso_local i32 @kvm_exception_is_soft(i32) #1

declare dso_local i32 @kvm_is_linear_rip(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @kvm_requeue_exception_e(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @kvm_requeue_exception(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
