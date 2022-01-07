; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_write_compare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_write_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@kvm_mips_callbacks = common dso_local global %struct.TYPE_4__* null, align 8
@CONFIG_KVM_MIPS_VZ = common dso_local global i32 0, align 4
@CAUSEF_TI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mips_write_compare(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mips_coproc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mips_coproc*, %struct.mips_coproc** %16, align 8
  store %struct.mips_coproc* %17, %struct.mips_coproc** %7, align 8
  %18 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  %19 = call i64 @kvm_read_c0_guest_compare(%struct.mips_coproc* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %10, align 8
  %23 = call i32 @ktime_set(i32 0, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %125

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %33, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = call i32 %34(%struct.kvm_vcpu* %35)
  %37 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @kvm_write_c0_guest_compare(%struct.mips_coproc* %37, i64 %38)
  br label %125

40:                                               ; preds = %3
  %41 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = call i32 (...) @preempt_disable()
  %49 = load i64, i64* %5, align 8
  %50 = call i64 (...) @read_c0_count()
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @write_c0_gtoffset(i64 %51)
  %53 = call i32 (...) @back_to_back_c0_hazard()
  br label %54

54:                                               ; preds = %47, %44, %40
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = call i32 @kvm_mips_count_disabled(%struct.kvm_vcpu* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = call i32 @kvm_mips_freeze_hrtimer(%struct.kvm_vcpu* %60, i64* %13)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_mips_callbacks, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %67, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 %68(%struct.kvm_vcpu* %69)
  br label %79

71:                                               ; preds = %62
  %72 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %73 = call i64 @IS_ENABLED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  %77 = call i64 @kvm_read_c0_guest_cause(%struct.mips_coproc* %76)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %65
  %80 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @kvm_write_c0_guest_compare(%struct.mips_coproc* %80, i64 %81)
  %83 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %84 = call i64 @IS_ENABLED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (...) @preempt_enable()
  br label %91

91:                                               ; preds = %89, %86
  %92 = call i32 (...) @back_to_back_c0_hazard()
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @CAUSEF_TI, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @kvm_write_c0_guest_cause(%struct.mips_coproc* %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %95, %91
  br label %105

105:                                              ; preds = %104, %79
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu* %109, i32 %110, i64 %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* @CONFIG_KVM_MIPS_VZ, align 4
  %115 = call i64 @IS_ENABLED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i64, i64* %10, align 8
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i64, i64* %5, align 8
  %122 = call i64 (...) @read_c0_count()
  %123 = sub nsw i64 %121, %122
  %124 = call i32 @write_c0_gtoffset(i64 %123)
  br label %125

125:                                              ; preds = %30, %31, %120, %117, %113
  ret void
}

declare dso_local i64 @kvm_read_c0_guest_compare(%struct.mips_coproc*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @kvm_write_c0_guest_compare(%struct.mips_coproc*, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @write_c0_gtoffset(i64) #1

declare dso_local i64 @read_c0_count(...) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @kvm_mips_count_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_freeze_hrtimer(%struct.kvm_vcpu*, i64*) #1

declare dso_local i64 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kvm_write_c0_guest_cause(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
