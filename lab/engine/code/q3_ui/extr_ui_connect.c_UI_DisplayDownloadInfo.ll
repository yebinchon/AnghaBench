; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_connect.c_UI_DisplayDownloadInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_connect.c_UI_DisplayDownloadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UI_DisplayDownloadInfo.dlText = internal global [13 x i8] c"Downloading:\00", align 1
@UI_DisplayDownloadInfo.etaText = internal global [21 x i8] c"Estimated time left:\00", align 16
@UI_DisplayDownloadInfo.xferText = internal global [15 x i8] c"Transfer rate:\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cl_downloadSize\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cl_downloadCount\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cl_downloadTime\00", align 1
@color_white = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s (%d%%)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"estimating\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"(%s of %s copied)\00", align 1
@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"(%s copied)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s/Sec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @UI_DisplayDownloadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DisplayDownloadInfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i32, i32* @UI_LEFT, align 4
  %17 = load i32, i32* @UI_SMALLFONT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UI_DROPSHADOW, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  %22 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  %23 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = call i32 @UI_ProportionalStringWidth(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UI_DisplayDownloadInfo.dlText, i64 0, i64 0))
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @UI_ProportionalSizeScale(i32 %25)
  %27 = mul nsw i32 %24, %26
  store i32 %27, i32* %12, align 4
  %28 = call i32 @UI_ProportionalStringWidth(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @UI_DisplayDownloadInfo.etaText, i64 0, i64 0))
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @UI_ProportionalSizeScale(i32 %29)
  %31 = mul nsw i32 %28, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = call i32 @UI_ProportionalStringWidth(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @UI_DisplayDownloadInfo.xferText, i64 0, i64 0))
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @UI_ProportionalSizeScale(i32 %39)
  %41 = mul nsw i32 %38, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 16
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @color_white, align 4
  %52 = call i32 @UI_DrawProportionalString(i32 8, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UI_DisplayDownloadInfo.dlText, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @color_white, align 4
  %55 = call i32 @UI_DrawProportionalString(i32 8, i32 160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @UI_DisplayDownloadInfo.etaText, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @color_white, align 4
  %58 = call i32 @UI_DrawProportionalString(i32 8, i32 224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @UI_DisplayDownloadInfo.xferText, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float %64, 1.000000e+02
  %66 = load i32, i32* %3, align 4
  %67 = sitofp i32 %66 to float
  %68 = fdiv float %65, %67
  %69 = fptosi float %68 to i32
  %70 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %69)
  store i8* %70, i8** %14, align 8
  br label %73

71:                                               ; preds = %47
  %72 = load i8*, i8** %2, align 8
  store i8* %72, i8** %14, align 8
  br label %73

73:                                               ; preds = %71, %61
  %74 = load i32, i32* %12, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @color_white, align 4
  %78 = call i32 @UI_DrawProportionalString(i32 %74, i32 128, i8* %75, i32 %76, i32 %77)
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @UI_ReadableSize(i8* %79, i32 64, i32 %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @UI_ReadableSize(i8* %82, i32 64, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 4096
  br i1 %86, label %90, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87, %73
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @color_white, align 4
  %94 = call i32 @UI_DrawProportionalString(i32 %91, i32 160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %98 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %97)
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @color_white, align 4
  %101 = call i32 @UI_DrawProportionalString(i32 %95, i32 192, i8* %98, i32 %99, i32 %100)
  br label %188

102:                                              ; preds = %87
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %105, 1000
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sdiv i32 %112, 1000
  %114 = sdiv i32 %109, %113
  store i32 %114, i32* %10, align 4
  br label %116

115:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @UI_ReadableSize(i8* %117, i32 64, i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sdiv i32 %126, %127
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %4, align 4
  %131 = sdiv i32 %130, 1024
  %132 = load i32, i32* %15, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %3, align 4
  %135 = sdiv i32 %134, 1024
  %136 = sdiv i32 %133, %135
  %137 = sub nsw i32 %129, %136
  %138 = mul nsw i32 %137, 1000
  store i32 %138, i32* %15, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @UI_PrintTime(i8* %139, i32 64, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @color_white, align 4
  %146 = call i32 @UI_DrawProportionalString(i32 %142, i32 160, i8* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %150 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %148, i8* %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @color_white, align 4
  %153 = call i32 @UI_DrawProportionalString(i32 %147, i32 192, i8* %150, i32 %151, i32 %152)
  br label %177

154:                                              ; preds = %122, %116
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @color_white, align 4
  %158 = call i32 @UI_DrawProportionalString(i32 %155, i32 160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load i32, i32* %12, align 4
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %165 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %163, i8* %164)
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @color_white, align 4
  %168 = call i32 @UI_DrawProportionalString(i32 %162, i32 192, i8* %165, i32 %166, i32 %167)
  br label %176

169:                                              ; preds = %154
  %170 = load i32, i32* %12, align 4
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %172 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %171)
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @color_white, align 4
  %175 = call i32 @UI_DrawProportionalString(i32 %170, i32 192, i8* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %169, %161
  br label %177

177:                                              ; preds = %176, %125
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %183 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %182)
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @color_white, align 4
  %186 = call i32 @UI_DrawProportionalString(i32 %181, i32 224, i8* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %180, %177
  br label %188

188:                                              ; preds = %187, %90
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_ProportionalStringWidth(i8*) #1

declare dso_local i32 @UI_ProportionalSizeScale(i32) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i8* @va(i8*, i8*, ...) #1

declare dso_local i32 @UI_ReadableSize(i8*, i32, i32) #1

declare dso_local i32 @UI_PrintTime(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
