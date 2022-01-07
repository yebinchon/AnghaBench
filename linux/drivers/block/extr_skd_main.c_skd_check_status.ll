; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sns_info = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.skd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fit_comp_error_info = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"key/asc/ascq/fruc %02x/%02x/%02x/%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\0A\00", align 1
@skd_chkstat_table = common dso_local global %struct.sns_info* null, align 8
@SKD_CHECK_STATUS_REPORT_SMART_ALERT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"SMART Alert: sense key/asc/ascq %02x/%02x/%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"status check: error\0A\00", align 1
@SKD_CHECK_STATUS_REPORT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"status check good default\0A\00", align 1
@SKD_CHECK_STATUS_REPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*, i64, %struct.fit_comp_error_info*)* @skd_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_check_status(%struct.skd_device* %0, i64 %1, %struct.fit_comp_error_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fit_comp_error_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sns_info*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.fit_comp_error_info* %2, %struct.fit_comp_error_info** %7, align 8
  %10 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %11 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %15 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %18 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %21 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %24 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, i64, i64, i64, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %19, i64 %22, i32 %25)
  %27 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %28 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %32 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %36 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %39 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %42 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %45 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34, i64 %37, i64 %40, i64 %43, i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %161, %3
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sns_info*, %struct.sns_info** @skd_chkstat_table, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.sns_info* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %164

53:                                               ; preds = %48
  %54 = load %struct.sns_info*, %struct.sns_info** @skd_chkstat_table, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %54, i64 %56
  store %struct.sns_info* %57, %struct.sns_info** %9, align 8
  %58 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %59 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 16
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %65 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %68 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %161

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %75 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %82 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %161

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %89 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %95 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %98 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %161

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %105 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %111 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %114 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %161

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %121 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %127 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %130 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %161

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %119
  %136 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %137 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SKD_CHECK_STATUS_REPORT_SMART_ALERT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %143 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %147 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %150 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.fit_comp_error_info*, %struct.fit_comp_error_info** %7, align 8
  %153 = getelementptr inbounds %struct.fit_comp_error_info, %struct.fit_comp_error_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i32*, i8*, i64, i64, i64, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %148, i64 %151, i64 %154)
  br label %156

156:                                              ; preds = %141, %135
  %157 = load %struct.sns_info*, %struct.sns_info** %9, align 8
  %158 = getelementptr inbounds %struct.sns_info, %struct.sns_info* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %4, align 4
  br label %181

161:                                              ; preds = %133, %117, %101, %85, %71
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %48

164:                                              ; preds = %48
  %165 = load i64, i64* %6, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %169 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i32, i32* @SKD_CHECK_STATUS_REPORT_ERROR, align 4
  store i32 %173, i32* %4, align 4
  br label %181

174:                                              ; preds = %164
  %175 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %176 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* @SKD_CHECK_STATUS_REPORT_GOOD, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %174, %167, %156
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sns_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
