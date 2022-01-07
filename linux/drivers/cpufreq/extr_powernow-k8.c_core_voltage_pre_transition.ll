; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_voltage_pre_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_core_voltage_pre_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [71 x i8] c"ph1 (cpu%d): start, currfid 0x%x, currvid 0x%x, reqvid 0x%x, rvo 0x%x\0A\00", align 1
@LO_FID_TABLE_TOP = common dso_local global i64 0, align 8
@MSR_FIDVID_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ph1 maxvid=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ph1: curr 0x%x, req vid 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ph1: changing vid for rvo, req 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ph1 err, currfid changed 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"ph1 complete, currfid 0x%x, currvid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i64, i64)* @core_voltage_pre_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_voltage_pre_transition(%struct.powernow_k8_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powernow_k8_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %14 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %17 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  store i64 1, i64* %12, align 8
  %19 = call i32 (...) @smp_processor_id()
  %20 = sext i32 %19 to i64
  %21 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %22 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %25 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %29 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23, i64 %26, i64 %27, i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @LO_FID_TABLE_TOP, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @LO_FID_TABLE_TOP, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i64 2, i64* %12, align 8
  br label %40

40:                                               ; preds = %39, %35, %3
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = mul nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* @MSR_FIDVID_STATUS, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @rdmsr(i32 %44, i64 %45, i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = ashr i64 %48, 16
  %50 = and i64 31, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %40
  br label %59

59:                                               ; preds = %80, %58
  %60 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %61 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %67 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %75 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @decrease_vid_code_by_step(%struct.powernow_k8_data* %71, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %149

80:                                               ; preds = %65
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %124, %81
  %83 = load i64, i64* %8, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %88 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 %86, %89
  %91 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %92 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load i64, i64* %6, align 8
  %96 = icmp sgt i64 %94, %95
  br label %97

97:                                               ; preds = %85, %82
  %98 = phi i1 [ false, %82 ], [ %96, %85 ]
  br i1 %98, label %99, label %125

99:                                               ; preds = %97
  %100 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %101 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i64 0, i64* %8, align 8
  br label %124

106:                                              ; preds = %99
  %107 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %108 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  %112 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %113 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %114 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call i64 @decrease_vid_code_by_step(%struct.powernow_k8_data* %112, i32 %117, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  store i32 1, i32* %4, align 4
  br label %149

121:                                              ; preds = %106
  %122 = load i64, i64* %8, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %121, %105
  br label %82

125:                                              ; preds = %97
  %126 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %127 = call i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 1, i32* %4, align 4
  br label %149

130:                                              ; preds = %125
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %133 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %138 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %139)
  store i32 1, i32* %4, align 4
  br label %149

141:                                              ; preds = %130
  %142 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %143 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %146 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %144, i64 %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %141, %136, %129, %120, %79
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @rdmsr(i32, i64, i64) #1

declare dso_local i64 @decrease_vid_code_by_step(%struct.powernow_k8_data*, i32, i32) #1

declare dso_local i64 @query_current_values_with_pending_wait(%struct.powernow_k8_data*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
