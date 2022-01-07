; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_get_video_frame.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_get_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_22__, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { float, i64, i64 }
%struct.TYPE_23__ = type { double, i64, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_19__*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { double, i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AV_SYNC_VIDEO_MASTER = common dso_local global i64 0, align 8
@AV_NOSYNC_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)* @get_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_frame(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %6, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = call i32 @ffp_video_statistic_l(%struct.TYPE_24__* %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = call i32 @decoder_decode_frame(%struct.TYPE_24__* %15, %struct.TYPE_18__* %17, %struct.TYPE_25__* %18, i32* null)
  store i32 %19, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %162

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %160

25:                                               ; preds = %22
  %26 = load double, double* @NAN, align 8
  store double %26, double* %8, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load double, double* @AV_NOPTS_VALUE, align 8
  %31 = fcmp une double %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call double @av_q2d(i32 %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fmul double %38, %41
  store double %42, double* %8, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = call i32 @av_guess_sample_aspect_ratio(i32 %46, %struct.TYPE_19__* %49, %struct.TYPE_25__* %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %43
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %159

63:                                               ; preds = %58
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = call i64 @get_master_sync_type(%struct.TYPE_23__* %64)
  %66 = load i64, i64* @AV_SYNC_VIDEO_MASTER, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %159

68:                                               ; preds = %63, %43
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = load double, double* @AV_NOPTS_VALUE, align 8
  %78 = fcmp une double %76, %77
  br i1 %78, label %79, label %158

79:                                               ; preds = %68
  %80 = load double, double* %8, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = call double @get_master_clock(%struct.TYPE_23__* %81)
  %83 = fsub double %80, %82
  store double %83, double* %9, align 8
  %84 = load double, double* %9, align 8
  %85 = call i32 @isnan(double %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %157, label %87

87:                                               ; preds = %79
  %88 = load double, double* %9, align 8
  %89 = call i64 @fabs(double %88)
  %90 = load i64, i64* @AV_NOSYNC_THRESHOLD, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %157

92:                                               ; preds = %87
  %93 = load double, double* %9, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = fsub double %93, %96
  %98 = fcmp olt double %97, 0.000000e+00
  br i1 %98, label %99, label %157

99:                                               ; preds = %92
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %99
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %109
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %156

134:                                              ; preds = %115
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = sitofp i64 %143 to float
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sitofp i64 %148 to float
  %150 = fdiv float %144, %149
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  store float %150, float* %153, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %155 = call i32 @av_frame_unref(%struct.TYPE_25__* %154)
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %134, %131
  br label %157

157:                                              ; preds = %156, %109, %99, %92, %87, %79
  br label %158

158:                                              ; preds = %157, %68
  br label %159

159:                                              ; preds = %158, %63, %58
  br label %160

160:                                              ; preds = %159, %22
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %21
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @ffp_video_statistic_l(%struct.TYPE_24__*) #1

declare dso_local i32 @decoder_decode_frame(%struct.TYPE_24__*, %struct.TYPE_18__*, %struct.TYPE_25__*, i32*) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @av_guess_sample_aspect_ratio(i32, %struct.TYPE_19__*, %struct.TYPE_25__*) #1

declare dso_local i64 @get_master_sync_type(%struct.TYPE_23__*) #1

declare dso_local double @get_master_clock(%struct.TYPE_23__*) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
