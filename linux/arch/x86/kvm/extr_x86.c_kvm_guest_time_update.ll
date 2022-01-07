; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_guest_time_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_guest_time_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__*, %struct.kvm_vcpu_arch }
%struct.TYPE_4__ = type { %struct.kvm_arch }
%struct.kvm_arch = type { i32, i64, i64, i32, i64 }
%struct.kvm_vcpu_arch = type { i64, %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@cpu_tsc_khz = common dso_local global i32 0, align 4
@KVM_REQ_CLOCK_UPDATE = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PVCLOCK_TSC_STABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_guest_time_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_guest_time_update(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu_arch*, align 8
  %7 = alloca %struct.kvm_arch*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 1
  store %struct.kvm_vcpu_arch* %15, %struct.kvm_vcpu_arch** %6, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.kvm_arch* %19, %struct.kvm_arch** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.kvm_arch*, %struct.kvm_arch** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.kvm_arch*, %struct.kvm_arch** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.kvm_arch*, %struct.kvm_arch** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.kvm_arch*, %struct.kvm_arch** %7, align 8
  %33 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.kvm_arch*, %struct.kvm_arch** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %36, i32 0, i32 3
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load i32, i32* @cpu_tsc_khz, align 4
  %42 = call i64 @__this_cpu_read(i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  %51 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @kvm_make_request(i32 %51, %struct.kvm_vcpu* %52)
  store i32 1, i32* %2, align 4
  br label %167

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i64 (...) @rdtsc()
  store i64 %58, i64* %10, align 8
  %59 = call i64 (...) @ktime_get_boottime_ns()
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @kvm_read_l1_tsc(%struct.kvm_vcpu* %61, i64 %62)
  store i64 %63, i64* %9, align 8
  %64 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @compute_guest_tsc(%struct.kvm_vcpu* %69, i64 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 @adjust_tsc_offset_guest(%struct.kvm_vcpu* %76, i64 %79)
  %81 = load i64, i64* %13, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @local_irq_restore(i64 %84)
  %86 = load i64, i64* @kvm_has_tsc_control, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @kvm_scale_tsc(%struct.kvm_vcpu* %89, i64 %90)
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %92
  %102 = load i32, i32* @NSEC_PER_SEC, align 4
  %103 = load i64, i64* %5, align 8
  %104 = mul i64 %103, 1000
  %105 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = call i32 @kvm_get_time_scale(i32 %102, i64 %104, i32* %107, i32* %110)
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %101, %92
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %120, %126
  %128 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  store i32 0, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %115
  %137 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %115
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = call i32 @kvm_setup_pvclock_page(%struct.kvm_vcpu* %150)
  br label %152

152:                                              ; preds = %149, %140
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.TYPE_4__* %156, i32 0)
  %158 = icmp eq %struct.kvm_vcpu* %153, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %6, align 8
  %164 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %163, i32 0, i32 1
  %165 = call i32 @kvm_hv_setup_tsc_page(%struct.TYPE_4__* %162, %struct.TYPE_5__* %164)
  br label %166

166:                                              ; preds = %159, %152
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %48
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #1

declare dso_local i64 @kvm_read_l1_tsc(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @compute_guest_tsc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @adjust_tsc_offset_guest(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_scale_tsc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_get_time_scale(i32, i64, i32*, i32*) #1

declare dso_local i32 @kvm_setup_pvclock_page(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kvm_hv_setup_tsc_page(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
