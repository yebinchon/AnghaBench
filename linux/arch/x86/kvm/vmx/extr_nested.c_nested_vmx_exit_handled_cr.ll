; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_cr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@CPU_BASED_CR3_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_LOAD_EXITING = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4
@CPU_BASED_CR3_STORE_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_STORE_EXITING = common dso_local global i32 0, align 4
@LMSW_SOURCE_DATA_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_exit_handled_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_exit_handled_cr(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %10 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %11 = call i64 @vmcs_readl(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = and i64 %12, 15
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = lshr i64 %15, 4
  %17 = and i64 %16, 3
  switch i64 %17, label %187 [
    i64 0, label %18
    i64 2, label %113
    i64 1, label %131
    i64 3, label %152
  ]

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = lshr i64 %19, 8
  %21 = and i64 %20, 15
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @kvm_register_readl(%struct.kvm_vcpu* %23, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %112 [
    i32 0, label %27
    i32 3, label %40
    i32 4, label %92
    i32 8, label %105
  ]

27:                                               ; preds = %18
  %28 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %29 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %33 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = xor i64 %31, %34
  %36 = and i64 %30, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %188

39:                                               ; preds = %27
  br label %112

40:                                               ; preds = %18
  %41 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %42 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %47 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %84, label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %53 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %58 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %84, label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %64 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %69 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %75 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 4
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %80 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %67, %56, %45
  store i32 0, i32* %3, align 4
  br label %188

85:                                               ; preds = %78, %73
  %86 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %87 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %88 = call i32 @nested_cpu_has(%struct.vmcs12* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %188

91:                                               ; preds = %85
  br label %112

92:                                               ; preds = %18
  %93 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %94 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %97 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = xor i64 %98, %99
  %101 = and i64 %95, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %188

104:                                              ; preds = %92
  br label %112

105:                                              ; preds = %18
  %106 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %107 = load i32, i32* @CPU_BASED_CR8_LOAD_EXITING, align 4
  %108 = call i32 @nested_cpu_has(%struct.vmcs12* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %188

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %18, %111, %104, %91, %39
  br label %187

113:                                              ; preds = %2
  %114 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %115 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @X86_CR0_TS, align 4
  %118 = sext i32 %117 to i64
  %119 = and i64 %116, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %123 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @X86_CR0_TS, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %124, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %188

130:                                              ; preds = %121, %113
  br label %187

131:                                              ; preds = %2
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %151 [
    i32 3, label %133
    i32 8, label %142
  ]

133:                                              ; preds = %131
  %134 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %135 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %188

141:                                              ; preds = %133
  br label %151

142:                                              ; preds = %131
  %143 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %144 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CPU_BASED_CR8_STORE_EXITING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %188

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %131, %150, %141
  br label %187

152:                                              ; preds = %2
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @LMSW_SOURCE_DATA_SHIFT, align 8
  %155 = lshr i64 %153, %154
  %156 = and i64 %155, 15
  store i64 %156, i64* %9, align 8
  %157 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %158 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = and i64 %159, 14
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %163 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = xor i64 %161, %164
  %166 = and i64 %160, %165
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  store i32 1, i32* %3, align 4
  br label %188

169:                                              ; preds = %152
  %170 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %171 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = and i64 %172, 1
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %177 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = and i64 %178, 1
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %175
  %182 = load i64, i64* %9, align 8
  %183 = and i64 %182, 1
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %3, align 4
  br label %188

186:                                              ; preds = %181, %175, %169
  br label %187

187:                                              ; preds = %2, %186, %151, %130, %112
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %185, %168, %149, %140, %129, %110, %103, %90, %84, %38
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i64 @kvm_register_readl(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
