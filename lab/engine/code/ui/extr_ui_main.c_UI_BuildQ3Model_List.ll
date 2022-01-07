; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildQ3Model_List.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_BuildQ3Model_List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32* }

@MAX_QPATH = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"models/players\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_PLAYERMODELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"models/players/%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"icon_blue\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"icon_red\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"icon_default\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"models/players/%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_BuildQ3Model_List to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildQ3Model_List() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @MAX_QPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %21 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 2048)
  store i32 %21, i32* %1, align 4
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %153, %0
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %29 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %161

33:                                               ; preds = %31
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %47, %38, %33
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %53
  br label %153

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %66 = call i32 @trap_FS_GetFileList(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 2048)
  store i32 %66, i32* %2, align 4
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %67, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %144, %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %74 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %152

78:                                               ; preds = %76
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = trunc i64 %17 to i32
  %83 = call i32 @COM_StripExtension(i8* %81, i8* %19, i32 %82)
  %84 = call i64 @Q_stricmpn(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %78
  %87 = call i64 @Q_stricmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %143, label %89

89:                                               ; preds = %86
  %90 = call i64 @Q_stricmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %143, label %92

92:                                               ; preds = %89
  %93 = call i64 @Q_stricmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %96, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %97)
  br label %104

99:                                               ; preds = %92
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %19, i64 5
  %103 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %100, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %99, %95
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %111 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 1), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @Q_stricmp(i8* %110, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 1, i32* %13, align 4
  br label %123

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %105

123:                                              ; preds = %118, %105
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %123
  %127 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 1), align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %133 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %131, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %8, align 8
  %135 = call i8* (i8*, i8*, ...) @va(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %134, i8* %19)
  %136 = call i32 @trap_R_RegisterShaderNoMip(i8* %135)
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 2), align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %126, %123
  br label %143

143:                                              ; preds = %142, %89, %86, %78
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i8*, i8** %9, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %9, align 8
  br label %68

152:                                              ; preds = %76
  br label %153

153:                                              ; preds = %152, %61
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i8*, i8** %8, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %8, align 8
  br label %23

161:                                              ; preds = %31
  %162 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @va(i8*, i8*, ...) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @trap_R_RegisterShaderNoMip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
