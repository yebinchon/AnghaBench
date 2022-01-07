; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawConnectScreen.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawConnectScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Connect\00", align 1
@qtrue = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Loading %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Starting up...\00", align 1
@ITEM_TEXTSTYLE_SHADOWEDMORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Connecting to %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@lastConnState = common dso_local global i32 0, align 4
@lastLoadingText = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Awaiting connection...%i\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Awaiting challenge...%i\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"cl_downloadName\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Awaiting gamestate...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawConnectScreen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @MAX_INFO_VALUE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = call i32* @Menus_FindByName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @qtrue, align 4
  %28 = call i32 @Menu_Paint(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22, %1
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store float 3.200000e+02, float* %8, align 4
  store float 1.300000e+02, float* %9, align 4
  store float 5.000000e-01, float* %10, align 4
  br label %34

33:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %152

34:                                               ; preds = %32
  %35 = call i32 @trap_GetClientState(%struct.TYPE_3__* %4)
  %36 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i32, i32* @CS_SERVERINFO, align 4
  %38 = trunc i64 %16 to i32
  %39 = call i64 @trap_GetConfigString(i32 %37, i8* %18, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load float, float* %8, align 4
  %43 = load float, float* %9, align 4
  %44 = load float, float* %10, align 4
  %45 = load i32, i32* @colorWhite, align 4
  %46 = call i8* @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i8* @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 @Text_PaintCenter(float %42, float %43, float %44, i32 %45, i8* %47, i32 0)
  br label %49

49:                                               ; preds = %41, %34
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @Q_stricmp(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load float, float* %8, align 4
  %56 = load float, float* %9, align 4
  %57 = fadd float %56, 4.800000e+01
  %58 = load float, float* %10, align 4
  %59 = load i32, i32* @colorWhite, align 4
  %60 = load i32, i32* @ITEM_TEXTSTYLE_SHADOWEDMORE, align 4
  %61 = call i32 @Text_PaintCenter(float %55, float %57, float %58, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %75

62:                                               ; preds = %49
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @Com_sprintf(i8* %63, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load float, float* %8, align 4
  %68 = load float, float* %9, align 4
  %69 = fadd float %68, 4.800000e+01
  %70 = load float, float* %10, align 4
  %71 = load i32, i32* @colorWhite, align 4
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %73 = load i32, i32* @ITEM_TEXTSTYLE_SHADOWEDMORE, align 4
  %74 = call i32 @Text_PaintCenter(float %67, float %69, float %70, i32 %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %54
  %76 = load float, float* %8, align 4
  %77 = load float, float* %10, align 4
  %78 = load i32, i32* @colorWhite, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @Info_ValueForKey(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %82 = call i32 @Text_PaintCenter(float %76, float 6.000000e+02, float %77, i32 %78, i8* %81, i32 0)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 131
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load float, float* %8, align 4
  %88 = load float, float* %9, align 4
  %89 = fadd float %88, 1.760000e+02
  %90 = load float, float* %10, align 4
  %91 = load i32, i32* @colorWhite, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @Text_PaintCenter_AutoWrapped(float %87, float %89, i32 630, i32 20, float %90, i32 %91, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %86, %75
  %96 = load i32, i32* @lastConnState, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** @lastLoadingText, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %100, %95
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* @lastConnState, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %137 [
    i32 130, label %108
    i32 132, label %112
    i32 131, label %116
    i32 129, label %135
    i32 128, label %136
  ]

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  store i8* %111, i8** %3, align 8
  br label %138

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  store i8* %115, i8** %3, align 8
  br label %138

116:                                              ; preds = %103
  %117 = load i32, i32* @MAX_INFO_VALUE, align 4
  %118 = zext i32 %117 to i64
  %119 = call i8* @llvm.stacksave()
  store i8* %119, i8** %13, align 8
  %120 = alloca i8, i64 %118, align 16
  store i64 %118, i64* %14, align 8
  %121 = trunc i64 %118 to i32
  %122 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %120, i32 %121)
  %123 = load i8, i8* %120, align 16
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load float, float* %8, align 4
  %127 = load float, float* %9, align 4
  %128 = load float, float* %10, align 4
  %129 = call i32 @UI_DisplayDownloadInfo(i8* %120, float %126, float %127, float %128)
  store i32 1, i32* %12, align 4
  br label %131

130:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %130, %125
  %132 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %12, align 4
  switch i32 %133, label %152 [
    i32 0, label %134
  ]

134:                                              ; preds = %131
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %138

135:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %152

136:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %152

137:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %152

138:                                              ; preds = %134, %112, %108
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @Q_stricmp(i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load float, float* %8, align 4
  %145 = load float, float* %9, align 4
  %146 = fadd float %145, 8.000000e+01
  %147 = load float, float* %10, align 4
  %148 = load i32, i32* @colorWhite, align 4
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 @Text_PaintCenter(float %144, float %146, float %147, i32 %148, i8* %149, i32 0)
  br label %151

151:                                              ; preds = %143, %138
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %151, %137, %136, %135, %131, %33
  %153 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %12, align 4
  switch i32 %154, label %156 [
    i32 0, label %155
    i32 1, label %155
  ]

155:                                              ; preds = %152, %152
  ret void

156:                                              ; preds = %152
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @Menus_FindByName(i8*) #2

declare dso_local i32 @Menu_Paint(i32*, i32) #2

declare dso_local i32 @trap_GetClientState(%struct.TYPE_3__*) #2

declare dso_local i64 @trap_GetConfigString(i32, i8*, i32) #2

declare dso_local i32 @Text_PaintCenter(float, float, float, i32, i8*, i32) #2

declare dso_local i8* @va(i8*, i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @Q_stricmp(i32, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @Text_PaintCenter_AutoWrapped(float, float, i32, i32, float, i32, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @UI_DisplayDownloadInfo(i8*, float, float, float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
