; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_init_vhint_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_init_vhint_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32, i64 }
%struct.platform_device = type { i32 }
%struct.tegra_bpmp = type { i32 }
%struct.mrq_cpu_vhint_request = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.cpu_vhint_data = type { i32, i32, i64*, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MRQ_CPU_VHINT = common dso_local global i32 0, align 4
@EDVD_CORE_VOLT_FREQ_V_SHIFT = common dso_local global i32 0, align 4
@EDVD_CORE_VOLT_FREQ_F_SHIFT = common dso_local global i64 0, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpufreq_frequency_table* (%struct.platform_device*, %struct.tegra_bpmp*, i32)* @init_vhint_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpufreq_frequency_table* @init_vhint_table(%struct.platform_device* %0, %struct.tegra_bpmp* %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_frequency_table*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca %struct.mrq_cpu_vhint_request, align 8
  %10 = alloca %struct.tegra_bpmp_message, align 8
  %11 = alloca %struct.cpu_vhint_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.cpufreq_frequency_table*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.tegra_bpmp* %1, %struct.tegra_bpmp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_coherent(i32 %24, i32 56, i32* %16, i32 %25)
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.cpufreq_frequency_table* @ERR_PTR(i32 %31)
  store %struct.cpufreq_frequency_table* %32, %struct.cpufreq_frequency_table** %4, align 8
  br label %221

33:                                               ; preds = %3
  %34 = load i8*, i8** %17, align 8
  %35 = bitcast i8* %34 to %struct.cpu_vhint_data*
  store %struct.cpu_vhint_data* %35, %struct.cpu_vhint_data** %11, align 8
  %36 = bitcast %struct.mrq_cpu_vhint_request* %9 to %struct.tegra_bpmp_message*
  %37 = call i32 @memset(%struct.tegra_bpmp_message* %36, i32 0, i32 32)
  %38 = load i32, i32* %16, align 4
  %39 = getelementptr inbounds %struct.mrq_cpu_vhint_request, %struct.mrq_cpu_vhint_request* %9, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.mrq_cpu_vhint_request, %struct.mrq_cpu_vhint_request* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = call i32 @memset(%struct.tegra_bpmp_message* %10, i32 0, i32 32)
  %43 = load i32, i32* @MRQ_CPU_VHINT, align 4
  %44 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = bitcast %struct.mrq_cpu_vhint_request* %9 to %struct.tegra_bpmp_message*
  %46 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %10, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.tegra_bpmp_message* %45, %struct.tegra_bpmp_message** %47, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %10, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 32, i32* %49, align 8
  %50 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %51 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %50, %struct.tegra_bpmp_message* %10)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.cpufreq_frequency_table* @ERR_PTR(i32 %55)
  store %struct.cpufreq_frequency_table* %56, %struct.cpufreq_frequency_table** %8, align 8
  br label %213

57:                                               ; preds = %33
  %58 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %59 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %105, %57
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %64 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %62, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %61
  %68 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %69 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %18, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %77 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %18, align 8
  %82 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %83 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %67
  br label %105

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* %18, align 8
  %92 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %93 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %91, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %105

102:                                              ; preds = %90, %87
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %101, %86
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %61

108:                                              ; preds = %61
  %109 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.cpufreq_frequency_table* @devm_kcalloc(i32* %110, i32 %112, i32 16, i32 %113)
  store %struct.cpufreq_frequency_table* %114, %struct.cpufreq_frequency_table** %8, align 8
  %115 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %116 = icmp ne %struct.cpufreq_frequency_table* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.cpufreq_frequency_table* @ERR_PTR(i32 %119)
  store %struct.cpufreq_frequency_table* %120, %struct.cpufreq_frequency_table** %8, align 8
  br label %213

121:                                              ; preds = %108
  %122 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %123 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %203, %121
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %128 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %126, %129
  br i1 %130, label %131, label %206

131:                                              ; preds = %125
  %132 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %133 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %139 = load i64, i64* %20, align 8
  %140 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %141 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %131
  %145 = load i64, i64* %20, align 8
  %146 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %147 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %131
  br label %203

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i64, i64* %20, align 8
  %156 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %157 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %155, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %203

166:                                              ; preds = %154, %151
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @EDVD_CORE_VOLT_FREQ_V_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* %21, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %21, align 4
  %172 = load i64, i64* %20, align 8
  %173 = load i64, i64* @EDVD_CORE_VOLT_FREQ_F_SHIFT, align 8
  %174 = shl i64 %172, %173
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = or i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %21, align 4
  %179 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %179, i64 %182
  store %struct.cpufreq_frequency_table* %183, %struct.cpufreq_frequency_table** %19, align 8
  %184 = load i32, i32* %21, align 4
  %185 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %186 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %188 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %20, align 8
  %191 = mul nsw i64 %189, %190
  %192 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %193 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = sdiv i64 %191, %194
  %196 = load %struct.cpu_vhint_data*, %struct.cpu_vhint_data** %11, align 8
  %197 = getelementptr inbounds %struct.cpu_vhint_data, %struct.cpu_vhint_data* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = sdiv i64 %195, %198
  %200 = sdiv i64 %199, 1000
  %201 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %202 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %166, %165, %150
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %125

206:                                              ; preds = %125
  %207 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %208 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %208, i64 %210
  %212 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %211, i32 0, i32 1
  store i64 %207, i64* %212, align 8
  br label %213

213:                                              ; preds = %206, %117, %54
  %214 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %215 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %17, align 8
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @dma_free_coherent(i32 %216, i32 56, i8* %217, i32 %218)
  %220 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  store %struct.cpufreq_frequency_table* %220, %struct.cpufreq_frequency_table** %4, align 8
  br label %221

221:                                              ; preds = %213, %29
  %222 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  ret %struct.cpufreq_frequency_table* %222
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local %struct.cpufreq_frequency_table* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

declare dso_local %struct.cpufreq_frequency_table* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
