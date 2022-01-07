; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DisplayDownloadInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DisplayDownloadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UI_DisplayDownloadInfo.dlText = internal global [13 x i8] c"Downloading:\00", align 1
@UI_DisplayDownloadInfo.etaText = internal global [21 x i8] c"Estimated time left:\00", align 16
@UI_DisplayDownloadInfo.xferText = internal global [15 x i8] c"Transfer rate:\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"cl_downloadSize\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cl_downloadCount\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cl_downloadTime\00", align 1
@colorWhite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s (%d%%)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"estimating\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"(%s of %s copied)\00", align 1
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"(%s copied)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s/Sec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float, float, float)* @UI_DisplayDownloadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DisplayDownloadInfo(i8* %0, float %1, float %2, float %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %20 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  store i32 320, i32* %17, align 4
  %23 = load i32, i32* @colorWhite, align 4
  %24 = call i32 @UI_SetColor(i32 %23)
  %25 = load float, float* %6, align 4
  %26 = fptosi float %25 to i32
  %27 = load float, float* %7, align 4
  %28 = fadd float %27, 1.120000e+02
  %29 = load float, float* %8, align 4
  %30 = load i32, i32* @colorWhite, align 4
  %31 = call i32 @Text_PaintCenter(i32 %26, float %28, float %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UI_DisplayDownloadInfo.dlText, i64 0, i64 0), i32 0)
  %32 = load float, float* %6, align 4
  %33 = fptosi float %32 to i32
  %34 = load float, float* %7, align 4
  %35 = fadd float %34, 1.920000e+02
  %36 = load float, float* %8, align 4
  %37 = load i32, i32* @colorWhite, align 4
  %38 = call i32 @Text_PaintCenter(i32 %33, float %35, float %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @UI_DisplayDownloadInfo.etaText, i64 0, i64 0), i32 0)
  %39 = load float, float* %6, align 4
  %40 = fptosi float %39 to i32
  %41 = load float, float* %7, align 4
  %42 = fadd float %41, 2.480000e+02
  %43 = load float, float* %8, align 4
  %44 = load i32, i32* @colorWhite, align 4
  %45 = call i32 @Text_PaintCenter(i32 %40, float %42, float %43, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @UI_DisplayDownloadInfo.xferText, i64 0, i64 0), i32 0)
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sitofp i32 %50 to float
  %52 = fmul float %51, 1.000000e+02
  %53 = load i32, i32* %9, align 4
  %54 = sitofp i32 %53 to float
  %55 = fdiv float %52, %54
  %56 = fptosi float %55 to i32
  %57 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %56)
  store i8* %57, i8** %18, align 8
  br label %60

58:                                               ; preds = %4
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %18, align 8
  br label %60

60:                                               ; preds = %58, %48
  %61 = load float, float* %6, align 4
  %62 = fptosi float %61 to i32
  %63 = load float, float* %7, align 4
  %64 = fadd float %63, 1.360000e+02
  %65 = load float, float* %8, align 4
  %66 = load i32, i32* @colorWhite, align 4
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @Text_PaintCenter(i32 %62, float %64, float %65, i32 %66, i8* %67, i32 0)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @UI_ReadableSize(i8* %69, i32 64, i32 %70)
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @UI_ReadableSize(i8* %72, i32 64, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 4096
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %77, %60
  %81 = load i32, i32* %17, align 4
  %82 = load float, float* %7, align 4
  %83 = fadd float %82, 2.160000e+02
  %84 = load float, float* %8, align 4
  %85 = load i32, i32* @colorWhite, align 4
  %86 = call i32 @Text_PaintCenter(i32 %81, float %83, float %84, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %87 = load i32, i32* %17, align 4
  %88 = load float, float* %7, align 4
  %89 = fadd float %88, 1.600000e+02
  %90 = load float, float* %8, align 4
  %91 = load i32, i32* @colorWhite, align 4
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %94 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %92, i8* %93)
  %95 = call i32 @Text_PaintCenter(i32 %87, float %89, float %90, i32 %91, i8* %94, i32 0)
  br label %193

96:                                               ; preds = %77
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sdiv i32 %99, 1000
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sdiv i32 %106, 1000
  %108 = sdiv i32 %103, %107
  store i32 %108, i32* %16, align 4
  br label %110

109:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @UI_ReadableSize(i8* %111, i32 64, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %19, align 4
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sdiv i32 %125, 1024
  %127 = load i32, i32* %19, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = sdiv i32 %129, 1024
  %131 = sdiv i32 %128, %130
  %132 = sub nsw i32 %124, %131
  %133 = mul nsw i32 %132, 1000
  %134 = call i32 @UI_PrintTime(i8* %123, i32 64, i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = load float, float* %7, align 4
  %137 = fadd float %136, 2.160000e+02
  %138 = load float, float* %8, align 4
  %139 = load i32, i32* @colorWhite, align 4
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %141 = call i32 @Text_PaintCenter(i32 %135, float %137, float %138, i32 %139, i8* %140, i32 0)
  %142 = load i32, i32* %17, align 4
  %143 = load float, float* %7, align 4
  %144 = fadd float %143, 1.600000e+02
  %145 = load float, float* %8, align 4
  %146 = load i32, i32* @colorWhite, align 4
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %149 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %147, i8* %148)
  %150 = call i32 @Text_PaintCenter(i32 %142, float %144, float %145, i32 %146, i8* %149, i32 0)
  br label %180

151:                                              ; preds = %116, %110
  %152 = load i32, i32* %17, align 4
  %153 = load float, float* %7, align 4
  %154 = fadd float %153, 2.160000e+02
  %155 = load float, float* %8, align 4
  %156 = load i32, i32* @colorWhite, align 4
  %157 = call i32 @Text_PaintCenter(i32 %152, float %154, float %155, i32 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %151
  %161 = load i32, i32* %17, align 4
  %162 = load float, float* %7, align 4
  %163 = fadd float %162, 1.600000e+02
  %164 = load float, float* %8, align 4
  %165 = load i32, i32* @colorWhite, align 4
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %168 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %166, i8* %167)
  %169 = call i32 @Text_PaintCenter(i32 %161, float %163, float %164, i32 %165, i8* %168, i32 0)
  br label %179

170:                                              ; preds = %151
  %171 = load i32, i32* %17, align 4
  %172 = load float, float* %7, align 4
  %173 = fadd float %172, 1.600000e+02
  %174 = load float, float* %8, align 4
  %175 = load i32, i32* @colorWhite, align 4
  %176 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %177 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %176)
  %178 = call i32 @Text_PaintCenter(i32 %171, float %173, float %174, i32 %175, i8* %177, i32 0)
  br label %179

179:                                              ; preds = %170, %160
  br label %180

180:                                              ; preds = %179, %119
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i32, i32* %17, align 4
  %185 = load float, float* %7, align 4
  %186 = fadd float %185, 2.720000e+02
  %187 = load float, float* %8, align 4
  %188 = load i32, i32* @colorWhite, align 4
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %190 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %189)
  %191 = call i32 @Text_PaintCenter(i32 %184, float %186, float %187, i32 %188, i8* %190, i32 0)
  br label %192

192:                                              ; preds = %183, %180
  br label %193

193:                                              ; preds = %192, %80
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_SetColor(i32) #1

declare dso_local i32 @Text_PaintCenter(i32, float, float, i32, i8*, i32) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @UI_ReadableSize(i8*, i32, i32) #1

declare dso_local i32 @UI_PrintTime(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
