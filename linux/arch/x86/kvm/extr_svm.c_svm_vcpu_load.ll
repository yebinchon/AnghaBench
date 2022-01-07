; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vcpu_svm = type { i64, i64, i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.svm_cpu_data = type { i64 }

@svm_data = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@NR_HOST_SAVE_USER_MSRS = common dso_local global i32 0, align 4
@host_save_user_msrs = common dso_local global i32* null, align 8
@X86_FEATURE_TSCRATEMSR = common dso_local global i32 0, align 4
@current_tsc_ratio = common dso_local global i32 0, align 4
@MSR_AMD64_TSC_RATIO = common dso_local global i32 0, align 4
@X86_FEATURE_RDTSCP = common dso_local global i32 0, align 4
@MSR_TSC_AUX = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @svm_vcpu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_vcpu_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_svm*, align 8
  %6 = alloca %struct.svm_cpu_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %9)
  store %struct.vcpu_svm* %10, %struct.vcpu_svm** %5, align 8
  %11 = load i32, i32* @svm_data, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.svm_cpu_data* @per_cpu(i32 %11, i32 %12)
  store %struct.svm_cpu_data* %13, %struct.svm_cpu_data** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %26 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mark_all_dirty(i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @fs, align 4
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @savesegment(i32 %30, i32 %34)
  %36 = load i32, i32* @gs, align 4
  %37 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %38 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @savesegment(i32 %36, i32 %40)
  %42 = call i32 (...) @kvm_read_ldt()
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %64, %29
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NR_HOST_SAVE_USER_MSRS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32*, i32** @host_save_user_msrs, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rdmsrl(i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* @X86_FEATURE_TSCRATEMSR, align 4
  %69 = call i64 @static_cpu_has(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @current_tsc_ratio, align 4
  %78 = call i64 @__this_cpu_read(i32 %77)
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* @current_tsc_ratio, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @__this_cpu_write(i32 %81, i64 %82)
  %84 = load i32, i32* @MSR_AMD64_TSC_RATIO, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @wrmsrl(i32 %84, i64 %85)
  br label %87

87:                                               ; preds = %80, %71
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* @X86_FEATURE_RDTSCP, align 4
  %90 = call i64 @static_cpu_has(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @MSR_TSC_AUX, align 4
  %94 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %95 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @wrmsrl(i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %6, align 8
  %100 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %103 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %108 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %6, align 8
  %111 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = call i32 (...) @indirect_branch_prediction_barrier()
  br label %113

113:                                              ; preds = %106, %98
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @avic_vcpu_load(%struct.kvm_vcpu* %114, i32 %115)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local %struct.svm_cpu_data* @per_cpu(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mark_all_dirty(i64) #1

declare dso_local i32 @savesegment(i32, i32) #1

declare dso_local i32 @kvm_read_ldt(...) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @static_cpu_has(i32) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i32 @indirect_branch_prediction_barrier(...) #1

declare dso_local i32 @avic_vcpu_load(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
