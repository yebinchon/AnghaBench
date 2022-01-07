; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_setup_tsc_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_setup_tsc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_hv }
%struct.kvm_hv = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pvclock_vcpu_time_info = type { i32 }

@HV_REFERENCE_TSC_PAGE = common dso_local global i32 0, align 4
@tsc_sequence = common dso_local global i32 0, align 4
@HV_X64_MSR_TSC_REFERENCE_ENABLE = common dso_local global i32 0, align 4
@HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_hv_setup_tsc_page(%struct.kvm* %0, %struct.pvclock_vcpu_time_info* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %5 = alloca %struct.kvm_hv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.pvclock_vcpu_time_info* %1, %struct.pvclock_vcpu_time_info** %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.kvm_hv* %10, %struct.kvm_hv** %5, align 8
  %11 = call i32 @BUILD_BUG_ON(i32 0)
  %12 = load i32, i32* @HV_REFERENCE_TSC_PAGE, align 4
  %13 = load i32, i32* @tsc_sequence, align 4
  %14 = call i64 @offsetof(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HV_X64_MSR_TSC_REFERENCE_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HV_X64_MSR_TSC_REFERENCE_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  br label %101

38:                                               ; preds = %25
  %39 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.kvm*, %struct.kvm** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @gfn_to_gpa(i32 %45)
  %47 = call i32 @kvm_read_guest(%struct.kvm* %44, i32 %46, i32* %6, i32 4)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %101

51:                                               ; preds = %38
  %52 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.kvm*, %struct.kvm** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @gfn_to_gpa(i32 %56)
  %58 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %58, i32 0, i32 2
  %60 = call i64 @kvm_write_guest(%struct.kvm* %55, i32 %57, %struct.TYPE_5__* %59, i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %101

63:                                               ; preds = %51
  %64 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %65 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %65, i32 0, i32 2
  %67 = call i32 @compute_tsc_page_parameters(%struct.pvclock_vcpu_time_info* %64, %struct.TYPE_5__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %101

70:                                               ; preds = %63
  %71 = call i32 (...) @smp_wmb()
  %72 = load %struct.kvm*, %struct.kvm** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @gfn_to_gpa(i32 %73)
  %75 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %75, i32 0, i32 2
  %77 = call i64 @kvm_write_guest(%struct.kvm* %72, i32 %74, %struct.TYPE_5__* %76, i32 4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %101

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %80
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = call i32 (...) @smp_wmb()
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %93 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.kvm*, %struct.kvm** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @gfn_to_gpa(i32 %96)
  %98 = load %struct.kvm_hv*, %struct.kvm_hv** %5, align 8
  %99 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %98, i32 0, i32 2
  %100 = call i64 @kvm_write_guest(%struct.kvm* %95, i32 %97, %struct.TYPE_5__* %99, i32 4)
  br label %101

101:                                              ; preds = %89, %79, %69, %62, %50, %37
  %102 = load %struct.kvm*, %struct.kvm** %3, align 8
  %103 = getelementptr inbounds %struct.kvm, %struct.kvm* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %101, %24
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_read_guest(%struct.kvm*, i32, i32*, i32) #1

declare dso_local i32 @gfn_to_gpa(i32) #1

declare dso_local i64 @kvm_write_guest(%struct.kvm*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @compute_tsc_page_parameters(%struct.pvclock_vcpu_time_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
