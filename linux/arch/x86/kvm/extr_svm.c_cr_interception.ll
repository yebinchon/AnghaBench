; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_cr_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_cr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64 }

@X86_FEATURE_DECODEASSISTS = common dso_local global i32 0, align 4
@CR_VALID = common dso_local global i32 0, align 4
@SVM_EXITINFO_REG_MASK = common dso_local global i32 0, align 4
@SVM_EXIT_CR0_SEL_WRITE = common dso_local global i64 0, align 8
@SVM_EXIT_WRITE_CR0 = common dso_local global i32 0, align 4
@SVM_EXIT_READ_CR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unhandled write to CR%d\00", align 1
@UD_VECTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unhandled read from CR%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @cr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %8 = load i32, i32* @X86_FEATURE_DECODEASSISTS, align 4
  %9 = call i32 @static_cpu_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = call i32 @emulate_on_interception(%struct.vcpu_svm* %12)
  store i32 %13, i32* %2, align 4
  br label %150

14:                                               ; preds = %1
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CR_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = call i32 @emulate_on_interception(%struct.vcpu_svm* %28)
  store i32 %29, i32* %2, align 4
  br label %150

30:                                               ; preds = %14
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SVM_EXITINFO_REG_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SVM_EXIT_CR0_SEL_WRITE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load i32, i32* @SVM_EXIT_WRITE_CR0, align 4
  %49 = load i32, i32* @SVM_EXIT_READ_CR0, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %5, align 4
  br label %62

51:                                               ; preds = %30
  %52 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %53 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @SVM_EXIT_READ_CR0, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %51, %47
  store i32 0, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 16
  br i1 %64, label %65, label %108

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 16
  store i32 %67, i32* %5, align 4
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %69 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @kvm_register_read(%struct.TYPE_19__* %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* %5, align 4
  switch i32 %72, label %100 [
    i32 0, label %73
    i32 3, label %85
    i32 4, label %90
    i32 8, label %95
  ]

73:                                               ; preds = %65
  %74 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @check_selective_cr0_intercepted(%struct.vcpu_svm* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %80 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @kvm_set_cr0(%struct.TYPE_19__* %80, i64 %81)
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %150

84:                                               ; preds = %78
  br label %107

85:                                               ; preds = %65
  %86 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %87 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %86, i32 0, i32 0
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @kvm_set_cr3(%struct.TYPE_19__* %87, i64 %88)
  store i32 %89, i32* %7, align 4
  br label %107

90:                                               ; preds = %65
  %91 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %92 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %91, i32 0, i32 0
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @kvm_set_cr4(%struct.TYPE_19__* %92, i64 %93)
  store i32 %94, i32* %7, align 4
  br label %107

95:                                               ; preds = %65
  %96 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %97 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %96, i32 0, i32 0
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @kvm_set_cr8(%struct.TYPE_19__* %97, i64 %98)
  store i32 %99, i32* %7, align 4
  br label %107

100:                                              ; preds = %65
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %104 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %103, i32 0, i32 0
  %105 = load i32, i32* @UD_VECTOR, align 4
  %106 = call i32 @kvm_queue_exception(%struct.TYPE_19__* %104, i32 %105)
  store i32 1, i32* %2, align 4
  br label %150

107:                                              ; preds = %95, %90, %85, %84
  br label %145

108:                                              ; preds = %62
  %109 = load i32, i32* %5, align 4
  switch i32 %109, label %132 [
    i32 0, label %110
    i32 2, label %114
    i32 3, label %120
    i32 4, label %124
    i32 8, label %128
  ]

110:                                              ; preds = %108
  %111 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %112 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %111, i32 0, i32 0
  %113 = call i64 @kvm_read_cr0(%struct.TYPE_19__* %112)
  store i64 %113, i64* %6, align 8
  br label %139

114:                                              ; preds = %108
  %115 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %116 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %6, align 8
  br label %139

120:                                              ; preds = %108
  %121 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %122 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %121, i32 0, i32 0
  %123 = call i64 @kvm_read_cr3(%struct.TYPE_19__* %122)
  store i64 %123, i64* %6, align 8
  br label %139

124:                                              ; preds = %108
  %125 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %126 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %125, i32 0, i32 0
  %127 = call i64 @kvm_read_cr4(%struct.TYPE_19__* %126)
  store i64 %127, i64* %6, align 8
  br label %139

128:                                              ; preds = %108
  %129 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %130 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %129, i32 0, i32 0
  %131 = call i64 @kvm_get_cr8(%struct.TYPE_19__* %130)
  store i64 %131, i64* %6, align 8
  br label %139

132:                                              ; preds = %108
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %136 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %135, i32 0, i32 0
  %137 = load i32, i32* @UD_VECTOR, align 4
  %138 = call i32 @kvm_queue_exception(%struct.TYPE_19__* %136, i32 %137)
  store i32 1, i32* %2, align 4
  br label %150

139:                                              ; preds = %128, %124, %120, %114, %110
  %140 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %141 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %140, i32 0, i32 0
  %142 = load i32, i32* %4, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @kvm_register_write(%struct.TYPE_19__* %141, i32 %142, i64 %143)
  br label %145

145:                                              ; preds = %139, %107
  %146 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %147 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %146, i32 0, i32 0
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @kvm_complete_insn_gp(%struct.TYPE_19__* %147, i32 %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %132, %100, %83, %27, %11
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @emulate_on_interception(%struct.vcpu_svm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kvm_register_read(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @check_selective_cr0_intercepted(%struct.vcpu_svm*, i64) #1

declare dso_local i32 @kvm_set_cr0(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @kvm_set_cr4(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @kvm_set_cr8(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @kvm_read_cr0(%struct.TYPE_19__*) #1

declare dso_local i64 @kvm_read_cr3(%struct.TYPE_19__*) #1

declare dso_local i64 @kvm_read_cr4(%struct.TYPE_19__*) #1

declare dso_local i64 @kvm_get_cr8(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_register_write(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @kvm_complete_insn_gp(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
