; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_frequency_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_frequency_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"ph2 null fid transition 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"ph2 (cpu%d): starting, currfid 0x%x, currvid 0x%x, reqfid 0x%x\0A\00", align 1
@LO_FID_TABLE_TOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"ph2: mismatch, failed fid transition, curr 0x%x, req 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ph2: vid changed, save 0x%x, curr 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"ph2 complete, currfid 0x%x, currvid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i32)* @core_frequency_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_frequency_transition(%struct.powernow_k8_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powernow_k8_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %12 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %15 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %21 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %183

24:                                               ; preds = %2
  %25 = call i32 (...) @smp_processor_id()
  %26 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %27 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %30 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @convert_fid_to_vco_fid(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %37 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @convert_fid_to_vco_fid(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  br label %51

47:                                               ; preds = %24
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @LO_FID_TABLE_TOP, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %58 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LO_FID_TABLE_TOP, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %56, %51
  br label %64

64:                                               ; preds = %138, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %140

67:                                               ; preds = %64
  %68 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %69 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  br label %75

74:                                               ; preds = %67
  store i32 2, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = phi i32 [ 1, %73 ], [ 2, %74 ]
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %79 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %75
  %83 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %84 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LO_FID_TABLE_TOP, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %90 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %91 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i64 @write_new_fid(%struct.powernow_k8_data* %89, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %183

98:                                               ; preds = %88
  br label %110

99:                                               ; preds = %82
  %100 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %101 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %102 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @convert_fid_to_vco_fid(i32 %103)
  %105 = add nsw i32 2, %104
  %106 = call i64 @write_new_fid(%struct.powernow_k8_data* %100, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %183

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %98
  br label %122

111:                                              ; preds = %75
  %112 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %113 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %114 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i64 @write_new_fid(%struct.powernow_k8_data* %112, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %183

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %124 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @convert_fid_to_vco_fid(i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %131, %132
  br label %138

134:                                              ; preds = %122
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %135, %136
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %133, %130 ], [ %137, %134 ]
  store i32 %139, i32* %8, align 4
  br label %64

140:                                              ; preds = %64
  %141 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i64 @write_new_fid(%struct.powernow_k8_data* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %183

146:                                              ; preds = %140
  %147 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %148 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %183

151:                                              ; preds = %146
  %152 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %153 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %159 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %161)
  store i32 1, i32* %3, align 4
  br label %183

163:                                              ; preds = %151
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %166 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %172 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %173)
  store i32 1, i32* %3, align 4
  br label %183

175:                                              ; preds = %163
  %176 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %177 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %4, align 8
  %180 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %181)
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %175, %169, %157, %150, %145, %120, %108, %97, %19
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @convert_fid_to_vco_fid(i32) #1

declare dso_local i64 @write_new_fid(%struct.powernow_k8_data*, i32) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
