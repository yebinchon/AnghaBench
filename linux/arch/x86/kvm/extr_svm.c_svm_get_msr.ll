; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.msr_data = type { i32, i32, i32 }
%struct.vcpu_svm = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@X86_FEATURE_RDTSCP = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_IBRS = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_SSBD = common dso_local global i32 0, align 4
@X86_FEATURE_VIRT_SSBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.msr_data*)* @svm_get_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_get_msr(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.msr_data*, align 8
  %6 = alloca %struct.vcpu_svm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.msr_data* %1, %struct.msr_data** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %9)
  store %struct.vcpu_svm* %10, %struct.vcpu_svm** %6, align 8
  %11 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %12 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %188 [
    i32 132, label %14
    i32 137, label %23
    i32 136, label %32
    i32 135, label %38
    i32 130, label %44
    i32 143, label %55
    i32 142, label %64
    i32 141, label %73
    i32 140, label %82
    i32 139, label %91
    i32 128, label %100
    i32 129, label %107
    i32 138, label %114
    i32 147, label %136
    i32 144, label %153
    i32 145, label %182
  ]

14:                                               ; preds = %2
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %22 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %192

23:                                               ; preds = %2
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %31 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %192

32:                                               ; preds = %2
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %37 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %192

38:                                               ; preds = %2
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %43 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %192

44:                                               ; preds = %2
  %45 = load i32, i32* @X86_FEATURE_RDTSCP, align 4
  %46 = call i32 @boot_cpu_has(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %193

49:                                               ; preds = %44
  %50 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %51 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %54 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %192

55:                                               ; preds = %2
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 7
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %63 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %192

64:                                               ; preds = %2
  %65 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %66 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %65, i32 0, i32 7
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %72 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %192

73:                                               ; preds = %2
  %74 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %75 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %74, i32 0, i32 7
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %81 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %192

82:                                               ; preds = %2
  %83 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %84 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %83, i32 0, i32 7
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %90 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %192

91:                                               ; preds = %2
  %92 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %93 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %92, i32 0, i32 7
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %99 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %192

100:                                              ; preds = %2
  %101 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %102 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %106 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %192

107:                                              ; preds = %2
  %108 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %109 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %113 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %192

114:                                              ; preds = %2
  %115 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %116 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = load i32, i32* @X86_FEATURE_AMD_IBRS, align 4
  %122 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = load i32, i32* @X86_FEATURE_AMD_SSBD, align 4
  %127 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %193

130:                                              ; preds = %124, %119, %114
  %131 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %132 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %135 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %192

136:                                              ; preds = %2
  %137 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %138 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = load i32, i32* @X86_FEATURE_VIRT_SSBD, align 4
  %144 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %193

147:                                              ; preds = %141, %136
  %148 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %149 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %152 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %192

153:                                              ; preds = %2
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %155 = call i32 @guest_cpuid_family(%struct.kvm_vcpu* %154)
  store i32 %155, i32* %7, align 4
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %157 = call i32 @guest_cpuid_model(%struct.kvm_vcpu* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160, %153
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %165 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %166 = call i32 @kvm_get_msr_common(%struct.kvm_vcpu* %164, %struct.msr_data* %165)
  store i32 %166, i32* %3, align 4
  br label %193

167:                                              ; preds = %160
  %168 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %169 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 21
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load i32, i32* %8, align 4
  %174 = icmp sge i32 %173, 2
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 32
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %180 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %179, i32 0, i32 1
  store i32 30, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %175, %172, %167
  br label %192

182:                                              ; preds = %2
  %183 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %184 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %187 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %192

188:                                              ; preds = %2
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %190 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %191 = call i32 @kvm_get_msr_common(%struct.kvm_vcpu* %189, %struct.msr_data* %190)
  store i32 %191, i32* %3, align 4
  br label %193

192:                                              ; preds = %182, %181, %147, %130, %107, %100, %91, %82, %73, %64, %55, %49, %38, %32, %23, %14
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %188, %163, %146, %129, %48
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @guest_cpuid_family(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_model(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_msr_common(%struct.kvm_vcpu*, %struct.msr_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
