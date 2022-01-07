; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_write_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_write_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__, %struct.kvm* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i64, i32, i64, i64 }
%struct.msr_data = type { i64, i64 }

@X86_FEATURE_TSC_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_write_tsc(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.msr_data*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.msr_data* %1, %struct.msr_data** %4, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %5, align 8
  %20 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %21 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.kvm*, %struct.kvm** %5, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @raw_spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @kvm_compute_tsc_offset(%struct.kvm_vcpu* %28, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = call i64 (...) @ktime_get_boottime_ns()
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.kvm*, %struct.kvm** %5, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %2
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %48 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %81

52:                                               ; preds = %46, %43
  %53 = load %struct.kvm*, %struct.kvm** %5, align 8
  %54 = getelementptr inbounds %struct.kvm, %struct.kvm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @nsec_to_cycles(%struct.kvm_vcpu* %57, i64 %58)
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %14, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 1000
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %14, align 8
  %77 = icmp sgt i64 %75, %76
  br label %78

78:                                               ; preds = %72, %52
  %79 = phi i1 [ false, %52 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %51
  br label %82

82:                                               ; preds = %81, %2
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %82
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.kvm*, %struct.kvm** %5, align 8
  %92 = getelementptr inbounds %struct.kvm, %struct.kvm* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %90, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %85
  %97 = call i32 (...) @kvm_check_tsc_unstable()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.kvm*, %struct.kvm** %5, align 8
  %101 = getelementptr inbounds %struct.kvm, %struct.kvm* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %6, align 8
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @nsec_to_cycles(%struct.kvm_vcpu* %105, i64 %106)
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %12, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %12, align 8
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i64 @kvm_compute_tsc_offset(%struct.kvm_vcpu* %111, i64 %112)
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %104, %99
  store i32 1, i32* %10, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.kvm*, %struct.kvm** %5, align 8
  %120 = getelementptr inbounds %struct.kvm, %struct.kvm* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %118, %122
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %11, align 4
  br label %143

125:                                              ; preds = %85, %82
  %126 = load %struct.kvm*, %struct.kvm** %5, align 8
  %127 = getelementptr inbounds %struct.kvm, %struct.kvm* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.kvm*, %struct.kvm** %5, align 8
  %133 = getelementptr inbounds %struct.kvm, %struct.kvm* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 9
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.kvm*, %struct.kvm** %5, align 8
  %137 = getelementptr inbounds %struct.kvm, %struct.kvm* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 8
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.kvm*, %struct.kvm** %5, align 8
  %141 = getelementptr inbounds %struct.kvm, %struct.kvm* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  store i64 %139, i64* %142, align 8
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %125, %114
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.kvm*, %struct.kvm** %5, align 8
  %146 = getelementptr inbounds %struct.kvm, %struct.kvm* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.kvm*, %struct.kvm** %5, align 8
  %150 = getelementptr inbounds %struct.kvm, %struct.kvm* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i64 %148, i64* %151, align 8
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %153 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load %struct.kvm*, %struct.kvm** %5, align 8
  %158 = getelementptr inbounds %struct.kvm, %struct.kvm* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store i64 %156, i64* %159, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %162 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  store i64 %160, i64* %163, align 8
  %164 = load %struct.kvm*, %struct.kvm** %5, align 8
  %165 = getelementptr inbounds %struct.kvm, %struct.kvm* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i64 %167, i64* %170, align 8
  %171 = load %struct.kvm*, %struct.kvm** %5, align 8
  %172 = getelementptr inbounds %struct.kvm, %struct.kvm* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  store i64 %174, i64* %177, align 8
  %178 = load %struct.kvm*, %struct.kvm** %5, align 8
  %179 = getelementptr inbounds %struct.kvm, %struct.kvm* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 8
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  store i64 %181, i64* %184, align 8
  %185 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %186 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %143
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %191 = load i32, i32* @X86_FEATURE_TSC_ADJUST, align 4
  %192 = call i64 @guest_cpuid_has(%struct.kvm_vcpu* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %196 = load i64, i64* %6, align 8
  %197 = call i32 @update_ia32_tsc_adjust_msr(%struct.kvm_vcpu* %195, i64 %196)
  br label %198

198:                                              ; preds = %194, %189, %143
  %199 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %200 = load i64, i64* %6, align 8
  %201 = call i32 @kvm_vcpu_write_tsc_offset(%struct.kvm_vcpu* %199, i64 %200)
  %202 = load %struct.kvm*, %struct.kvm** %5, align 8
  %203 = getelementptr inbounds %struct.kvm, %struct.kvm* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 7
  %205 = load i64, i64* %9, align 8
  %206 = call i32 @raw_spin_unlock_irqrestore(i32* %204, i64 %205)
  %207 = load %struct.kvm*, %struct.kvm** %5, align 8
  %208 = getelementptr inbounds %struct.kvm, %struct.kvm* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 5
  %210 = call i32 @spin_lock(i32* %209)
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %198
  %214 = load %struct.kvm*, %struct.kvm** %5, align 8
  %215 = getelementptr inbounds %struct.kvm, %struct.kvm* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 6
  store i64 0, i64* %216, align 8
  br label %227

217:                                              ; preds = %198
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load %struct.kvm*, %struct.kvm** %5, align 8
  %222 = getelementptr inbounds %struct.kvm, %struct.kvm* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %220, %217
  br label %227

227:                                              ; preds = %226, %213
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %229 = call i32 @kvm_track_tsc_matching(%struct.kvm_vcpu* %228)
  %230 = load %struct.kvm*, %struct.kvm** %5, align 8
  %231 = getelementptr inbounds %struct.kvm, %struct.kvm* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 5
  %233 = call i32 @spin_unlock(i32* %232)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @kvm_compute_tsc_offset(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #1

declare dso_local i64 @nsec_to_cycles(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_check_tsc_unstable(...) #1

declare dso_local i64 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @update_ia32_tsc_adjust_msr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_vcpu_write_tsc_offset(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_track_tsc_matching(%struct.kvm_vcpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
