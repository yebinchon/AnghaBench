; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_fill_powernow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_fill_powernow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32, i64, i32, i64, %struct.cpufreq_frequency_table* }
%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.pst_s = type { i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Only %d pstates usable (use ACPI driver for full range\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"PST out of sequence\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"no p states to transition\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cfid 0x%x, cvid 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"currfid/vid do not match PST, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, %struct.pst_s*, i32)* @fill_powernow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_powernow_table(%struct.powernow_k8_data* %0, %struct.pst_s* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powernow_k8_data*, align 8
  %6 = alloca %struct.pst_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %5, align 8
  store %struct.pst_s* %1, %struct.pst_s** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %12 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %17 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %21 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %24 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %3
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %29 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %33, i64 %36
  %38 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %40, i64 %42
  %44 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %39, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %222

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %57 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %222

64:                                               ; preds = %55
  %65 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %66 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @check_pst_table(%struct.powernow_k8_data* %65, %struct.pst_s* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %222

73:                                               ; preds = %64
  %74 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %75 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = mul i64 8, %78
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.cpufreq_frequency_table* @kzalloc(i32 %80, i32 %81)
  store %struct.cpufreq_frequency_table* %82, %struct.cpufreq_frequency_table** %8, align 8
  %83 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %84 = icmp ne %struct.cpufreq_frequency_table* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %222

88:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %136, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %92 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %89
  %96 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %96, i64 %98
  %100 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %103, i64 %105
  %107 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %108, i64 %110
  %112 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 8
  %115 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %115, i64 %117
  %119 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %114
  store i32 %121, i32* %119, align 4
  %122 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %122, i64 %124
  %126 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @find_khz_freq_from_fid(i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %131, i64 %133
  %135 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %134, i32 0, i32 1
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %95
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %89

139:                                              ; preds = %89
  %140 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %141 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %142 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %143 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %141, i64 %145
  %147 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %146, i32 0, i32 1
  store i32 %140, i32* %147, align 4
  %148 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %149 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %150 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %148, i64 %152
  %154 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %153, i32 0, i32 0
  store i32 0, i32* %154, align 4
  %155 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %156 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %139
  %159 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %160 = call i32 @kfree(%struct.cpufreq_frequency_table* %159)
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %222

163:                                              ; preds = %139
  %164 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %165 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %168 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %166, i32 %169)
  %171 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %172 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %173 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %172, i32 0, i32 5
  store %struct.cpufreq_frequency_table* %171, %struct.cpufreq_frequency_table** %173, align 8
  %174 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %175 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @topology_core_cpumask(i64 %176)
  %178 = call i64 @cpumask_first(i32 %177)
  %179 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %180 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %163
  %184 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %185 = call i32 @print_basics(%struct.powernow_k8_data* %184)
  br label %186

186:                                              ; preds = %183, %163
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %217, %186
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %190 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ult i32 %188, %191
  br i1 %192, label %193, label %220

193:                                              ; preds = %187
  %194 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %194, i64 %196
  %198 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %201 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %193
  %205 = load %struct.pst_s*, %struct.pst_s** %6, align 8
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %205, i64 %207
  %209 = getelementptr inbounds %struct.pst_s, %struct.pst_s* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %212 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  br label %222

216:                                              ; preds = %204, %193
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %9, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %187

220:                                              ; preds = %187
  %221 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %220, %215, %158, %85, %70, %60, %47
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @check_pst_table(%struct.powernow_k8_data*, %struct.pst_s*, i32) #1

declare dso_local %struct.cpufreq_frequency_table* @kzalloc(i32, i32) #1

declare dso_local i32 @find_khz_freq_from_fid(i32) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i32 @kfree(%struct.cpufreq_frequency_table*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @cpumask_first(i32) #1

declare dso_local i32 @topology_core_cpumask(i64) #1

declare dso_local i32 @print_basics(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
