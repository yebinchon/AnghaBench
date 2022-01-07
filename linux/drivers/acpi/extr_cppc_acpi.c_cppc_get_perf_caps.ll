; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_get_perf_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_get_perf_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_pcc_data = type { i32 }
%struct.cppc_perf_caps = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cpc_desc = type { %struct.cpc_register_resource* }
%struct.cpc_register_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpc_desc_ptr = common dso_local global i32 0, align 4
@cpu_pcc_subspace_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No CPC descriptor for CPU:%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HIGHEST_PERF = common dso_local global i64 0, align 8
@LOWEST_PERF = common dso_local global i64 0, align 8
@LOW_NON_LINEAR_PERF = common dso_local global i64 0, align 8
@NOMINAL_PERF = common dso_local global i64 0, align 8
@LOWEST_FREQ = common dso_local global i64 0, align 8
@NOMINAL_FREQ = common dso_local global i64 0, align 8
@GUARANTEED_PERF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid pcc_ss_id\0A\00", align 1
@pcc_data = common dso_local global %struct.cppc_pcc_data** null, align 8
@CMD_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cppc_get_perf_caps(i32 %0, %struct.cppc_perf_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cppc_perf_caps*, align 8
  %6 = alloca %struct.cpc_desc*, align 8
  %7 = alloca %struct.cpc_register_resource*, align 8
  %8 = alloca %struct.cpc_register_resource*, align 8
  %9 = alloca %struct.cpc_register_resource*, align 8
  %10 = alloca %struct.cpc_register_resource*, align 8
  %11 = alloca %struct.cpc_register_resource*, align 8
  %12 = alloca %struct.cpc_register_resource*, align 8
  %13 = alloca %struct.cpc_register_resource*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.cppc_pcc_data*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cppc_perf_caps* %1, %struct.cppc_perf_caps** %5, align 8
  %25 = load i32, i32* @cpc_desc_ptr, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.cpc_desc* @per_cpu(i32 %25, i32 %26)
  store %struct.cpc_desc* %27, %struct.cpc_desc** %6, align 8
  store %struct.cpc_register_resource* null, %struct.cpc_register_resource** %12, align 8
  store %struct.cpc_register_resource* null, %struct.cpc_register_resource** %13, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %28 = load i32, i32* @cpu_pcc_subspace_idx, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.cpc_desc* @per_cpu(i32 %28, i32 %29)
  %31 = ptrtoint %struct.cpc_desc* %30 to i32
  store i32 %31, i32* %21, align 4
  store %struct.cppc_pcc_data* null, %struct.cppc_pcc_data** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %32 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %33 = icmp ne %struct.cpc_desc* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %215

39:                                               ; preds = %2
  %40 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %41 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %40, i32 0, i32 0
  %42 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %41, align 8
  %43 = load i64, i64* @HIGHEST_PERF, align 8
  %44 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %42, i64 %43
  store %struct.cpc_register_resource* %44, %struct.cpc_register_resource** %7, align 8
  %45 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %46 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %45, i32 0, i32 0
  %47 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %46, align 8
  %48 = load i64, i64* @LOWEST_PERF, align 8
  %49 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %47, i64 %48
  store %struct.cpc_register_resource* %49, %struct.cpc_register_resource** %8, align 8
  %50 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %51 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %50, i32 0, i32 0
  %52 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %51, align 8
  %53 = load i64, i64* @LOW_NON_LINEAR_PERF, align 8
  %54 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %52, i64 %53
  store %struct.cpc_register_resource* %54, %struct.cpc_register_resource** %9, align 8
  %55 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %56 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %55, i32 0, i32 0
  %57 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %56, align 8
  %58 = load i64, i64* @NOMINAL_PERF, align 8
  %59 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %57, i64 %58
  store %struct.cpc_register_resource* %59, %struct.cpc_register_resource** %10, align 8
  %60 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %61 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %60, i32 0, i32 0
  %62 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %61, align 8
  %63 = load i64, i64* @LOWEST_FREQ, align 8
  %64 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %62, i64 %63
  store %struct.cpc_register_resource* %64, %struct.cpc_register_resource** %12, align 8
  %65 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %66 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %65, i32 0, i32 0
  %67 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %66, align 8
  %68 = load i64, i64* @NOMINAL_FREQ, align 8
  %69 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %67, i64 %68
  store %struct.cpc_register_resource* %69, %struct.cpc_register_resource** %13, align 8
  %70 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %71 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %70, i32 0, i32 0
  %72 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %71, align 8
  %73 = load i64, i64* @GUARANTEED_PERF, align 8
  %74 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %72, i64 %73
  store %struct.cpc_register_resource* %74, %struct.cpc_register_resource** %11, align 8
  %75 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %76 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %39
  %79 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %8, align 8
  %80 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %78
  %83 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %9, align 8
  %84 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %10, align 8
  %88 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %12, align 8
  %92 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %13, align 8
  %96 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %94, %90, %86, %82, %78, %39
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %215

105:                                              ; preds = %98
  %106 = load %struct.cppc_pcc_data**, %struct.cppc_pcc_data*** @pcc_data, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %106, i64 %108
  %110 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %109, align 8
  store %struct.cppc_pcc_data* %110, %struct.cppc_pcc_data** %22, align 8
  store i32 1, i32* %24, align 4
  %111 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %22, align 8
  %112 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %111, i32 0, i32 0
  %113 = call i32 @down_write(i32* %112)
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* @CMD_READ, align 4
  %116 = call i64 @send_pcc_cmd(i32 %114, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %23, align 4
  br label %206

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %94
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %125 = call i32 @cpc_read(i32 %123, %struct.cpc_register_resource* %124, i8** %14)
  %126 = load i8*, i8** %14, align 8
  %127 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %128 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %8, align 8
  %131 = call i32 @cpc_read(i32 %129, %struct.cpc_register_resource* %130, i8** %15)
  %132 = load i8*, i8** %15, align 8
  %133 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %134 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %10, align 8
  %137 = call i32 @cpc_read(i32 %135, %struct.cpc_register_resource* %136, i8** %17)
  %138 = load i8*, i8** %17, align 8
  %139 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %140 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %11, align 8
  %142 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %122
  %147 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %11, align 8
  %148 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i64 @IS_NULL_REG(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146, %122
  %153 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %154 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %153, i32 0, i32 3
  store i8* null, i8** %154, align 8
  br label %162

155:                                              ; preds = %146
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %11, align 8
  %158 = call i32 @cpc_read(i32 %156, %struct.cpc_register_resource* %157, i8** %16)
  %159 = load i8*, i8** %16, align 8
  %160 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %161 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %155, %152
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %9, align 8
  %165 = call i32 @cpc_read(i32 %163, %struct.cpc_register_resource* %164, i8** %18)
  %166 = load i8*, i8** %18, align 8
  %167 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %168 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %162
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i8*, i8** %17, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %18, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %177, %174, %171, %162
  %181 = load i32, i32* @EFAULT, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %23, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %12, align 8
  %185 = call i64 @CPC_SUPPORTED(%struct.cpc_register_resource* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* %4, align 4
  %189 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %12, align 8
  %190 = call i32 @cpc_read(i32 %188, %struct.cpc_register_resource* %189, i8** %19)
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %13, align 8
  %193 = call i64 @CPC_SUPPORTED(%struct.cpc_register_resource* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %13, align 8
  %198 = call i32 @cpc_read(i32 %196, %struct.cpc_register_resource* %197, i8** %20)
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i8*, i8** %19, align 8
  %201 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %202 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** %20, align 8
  %204 = load %struct.cppc_perf_caps*, %struct.cppc_perf_caps** %5, align 8
  %205 = getelementptr inbounds %struct.cppc_perf_caps, %struct.cppc_perf_caps* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %199, %118
  %207 = load i32, i32* %24, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %22, align 8
  %211 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %210, i32 0, i32 0
  %212 = call i32 @up_write(i32* %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* %23, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %101, %34
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.cpc_desc* @per_cpu(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @CPC_IN_PCC(%struct.cpc_register_resource*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @send_pcc_cmd(i32, i32) #1

declare dso_local i32 @cpc_read(i32, %struct.cpc_register_resource*, i8**) #1

declare dso_local i64 @IS_NULL_REG(i32*) #1

declare dso_local i64 @CPC_SUPPORTED(%struct.cpc_register_resource*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
