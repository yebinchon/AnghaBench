; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_hwmon_dev.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_hwmon_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@HCBUFSIZ_TINY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Temp:%3dc \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Fan:%3d%% \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Util:%3d%% \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Core:%4dMHz \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Mem:%4dMHz \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Bus:%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_hwmon_dev(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %24
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  %26 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %27 = call i64 @hcmalloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %31 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %3, align 8
  br label %197

38:                                               ; preds = %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %3, align 8
  br label %197

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hc_thread_mutex_lock(i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @hm_get_temperature_with_devices_idx(%struct.TYPE_14__* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @hm_get_fanspeed_with_devices_idx(%struct.TYPE_14__* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @hm_get_utilization_with_devices_idx(%struct.TYPE_14__* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @hm_get_corespeed_with_devices_idx(%struct.TYPE_14__* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @hm_get_memoryspeed_with_devices_idx(%struct.TYPE_14__* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @hm_get_buslanes_with_devices_idx(%struct.TYPE_14__* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %45
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = load i32, i32* %10, align 4
  %83 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %77, i64 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %73, %45
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = load i32, i32* %11, align 4
  %101 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %95, i64 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %91, %88
  %107 = load i32, i32* %12, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %114, %116
  %118 = load i32, i32* %12, align 4
  %119 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %113, i64 %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %109, %106
  %125 = load i32, i32* %13, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 %132, %134
  %136 = load i32, i32* %13, align 4
  %137 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %131, i64 %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %127, %124
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %150, %152
  %154 = load i32, i32* %14, align 4
  %155 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %149, i64 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %145, %142
  %161 = load i32, i32* %15, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %168, %170
  %172 = load i32, i32* %15, align 4
  %173 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %167, i64 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %163, %160
  %179 = load i32, i32* %16, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i8*, i8** %8, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 0, i8* %186, align 1
  br label %191

187:                                              ; preds = %178
  %188 = load i8*, i8** %8, align 8
  %189 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %190 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %188, i64 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %191

191:                                              ; preds = %187, %181
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @hc_thread_mutex_unlock(i32 %194)
  %196 = load i8*, i8** %8, align 8
  store i8* %196, i8** %3, align 8
  br label %197

197:                                              ; preds = %191, %43, %36
  %198 = load i8*, i8** %3, align 8
  ret i8* %198
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @hc_thread_mutex_lock(i32) #1

declare dso_local i32 @hm_get_temperature_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hm_get_fanspeed_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hm_get_utilization_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hm_get_corespeed_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hm_get_memoryspeed_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hm_get_buslanes_with_devices_idx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @hc_thread_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
