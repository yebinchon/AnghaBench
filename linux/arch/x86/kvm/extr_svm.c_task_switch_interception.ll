; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_task_switch_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_task_switch_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64 }

@SVM_EXITINTINFO_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_EVTINJ_VEC_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_REASON_IRET = common dso_local global i64 0, align 8
@TASK_SWITCH_IRET = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_REASON_JMP = common dso_local global i64 0, align 8
@TASK_SWITCH_JMP = common dso_local global i32 0, align 4
@TASK_SWITCH_GATE = common dso_local global i32 0, align 4
@TASK_SWITCH_CALL = common dso_local global i32 0, align 4
@SVM_EXITINFOSHIFT_TS_HAS_ERROR_CODE = common dso_local global i64 0, align 8
@SVM_EXITINTINFO_TYPE_SOFT = common dso_local global i32 0, align 4
@OF_VECTOR = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @task_switch_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_switch_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SVM_EVTINJ_VEC_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SVM_EXITINTINFO_VALID, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  %50 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %51 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SVM_EXITINFOSHIFT_TS_REASON_IRET, align 8
  %57 = shl i64 1, %56
  %58 = and i64 %55, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %1
  %61 = load i32, i32* @TASK_SWITCH_IRET, align 4
  store i32 %61, i32* %5, align 4
  br label %84

62:                                               ; preds = %1
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SVM_EXITINFOSHIFT_TS_REASON_JMP, align 8
  %70 = shl i64 1, %69
  %71 = and i64 %68, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @TASK_SWITCH_JMP, align 4
  store i32 %74, i32* %5, align 4
  br label %83

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @TASK_SWITCH_GATE, align 4
  store i32 %79, i32* %5, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @TASK_SWITCH_CALL, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %122 [
    i32 128, label %90
    i32 130, label %95
    i32 129, label %118
  ]

90:                                               ; preds = %88
  %91 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %92 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %123

95:                                               ; preds = %88
  %96 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %97 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SVM_EXITINFOSHIFT_TS_HAS_ERROR_CODE, align 8
  %103 = shl i64 1, %102
  %104 = and i64 %101, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  store i32 1, i32* %10, align 4
  %107 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %108 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %106, %95
  %115 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %116 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %115, i32 0, i32 0
  %117 = call i32 @kvm_clear_exception_queue(%struct.TYPE_11__* %116)
  br label %123

118:                                              ; preds = %88
  %119 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %120 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %119, i32 0, i32 0
  %121 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_11__* %120)
  br label %123

122:                                              ; preds = %88
  br label %123

123:                                              ; preds = %122, %118, %114, %90
  br label %124

124:                                              ; preds = %123, %84
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %143, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @SVM_EXITINTINFO_TYPE_SOFT, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %143, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 130
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @OF_VECTOR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @BP_VECTOR, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139, %135, %128, %124
  %144 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %145 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %144, i32 0, i32 0
  %146 = call i32 @skip_emulated_instruction(%struct.TYPE_11__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %164

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %139, %132
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @SVM_EXITINTINFO_TYPE_SOFT, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 -1, i32* %7, align 4
  br label %155

155:                                              ; preds = %154, %150
  %156 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %157 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %156, i32 0, i32 0
  %158 = load i64, i64* %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @kvm_task_switch(%struct.TYPE_11__* %157, i64 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %155, %148
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_11__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_11__*) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_11__*) #1

declare dso_local i32 @kvm_task_switch(%struct.TYPE_11__*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
