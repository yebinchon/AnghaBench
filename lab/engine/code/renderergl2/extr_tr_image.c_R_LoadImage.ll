; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_LoadImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i8*, i32**, i32*, i32*)*, i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i8*, i8*)* }

@qfalse = common dso_local global i64 0, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@r_ext_compressed_textures = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".dds\00", align 1
@numImageLoaders = common dso_local global i32 0, align 4
@imageLoaders = common dso_local global %struct.TYPE_6__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: %s not present, using %s instead\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadImage(i8* %0, i32** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i64, i64* @qfalse, align 8
  store i64 %23, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  %24 = load i32, i32* @MAX_QPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32**, i32*** %8, align 8
  store i32* null, i32** %28, align 8
  %29 = load i32*, i32** %9, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @GL_RGBA8, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %12, align 8
  store i32 0, i32* %33, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @MAX_QPATH, align 4
  %36 = call i32 @Q_strncpyz(i8* %27, i8* %34, i32 %35)
  %37 = call i8* @COM_GetExtension(i8* %27)
  store i8* %37, i8** %18, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_ext_compressed_textures, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %6
  %43 = load i32, i32* @MAX_QPATH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %20, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %21, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @MAX_QPATH, align 4
  %49 = call i32 @COM_StripExtension(i8* %47, i8* %46, i32 %48)
  %50 = load i32, i32* @MAX_QPATH, align 4
  %51 = call i32 @Q_strcat(i8* %46, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @R_LoadDDS(i8* %46, i32** %52, i32* %53, i32* %54, i32* %55, i32* %56)
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  store i32 1, i32* %22, align 4
  br label %63

62:                                               ; preds = %42
  store i32 0, i32* %22, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %22, align 4
  switch i32 %65, label %165 [
    i32 0, label %66
  ]

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %6
  %68 = load i8*, i8** %18, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @numImageLoaders, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i8*, i8** %18, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imageLoaders, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Q_stricmp(i8* %77, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %76
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imageLoaders, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (i8*, i32**, i32*, i32*)*, i32 (i8*, i32**, i32*, i32*)** %91, align 8
  %93 = load i32**, i32*** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 %92(i8* %27, i32** %93, i32* %94, i32* %95)
  br label %101

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %72

101:                                              ; preds = %86, %72
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @numImageLoaders, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i32**, i32*** %8, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* @qtrue, align 8
  store i64 %110, i64* %13, align 8
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %14, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* @MAX_QPATH, align 4
  %114 = call i32 @COM_StripExtension(i8* %112, i8* %27, i32 %113)
  br label %116

115:                                              ; preds = %105
  store i32 1, i32* %22, align 4
  br label %165

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %101
  br label %118

118:                                              ; preds = %117, %67
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %161, %118
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @numImageLoaders, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %161

128:                                              ; preds = %123
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imageLoaders, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @va(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %134)
  store i8* %135, i8** %19, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imageLoaders, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (i8*, i32**, i32*, i32*)*, i32 (i8*, i32**, i32*, i32*)** %140, align 8
  %142 = load i8*, i8** %19, align 8
  %143 = load i32**, i32*** %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 %141(i8* %142, i32** %143, i32* %144, i32* %145)
  %147 = load i32**, i32*** %8, align 8
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %128
  %151 = load i64, i64* %13, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %155 = load i32, i32* @PRINT_DEVELOPER, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %19, align 8
  %158 = call i32 %154(i32 %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %153, %150
  br label %164

160:                                              ; preds = %128
  br label %161

161:                                              ; preds = %160, %127
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %119

164:                                              ; preds = %159, %119
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %164, %115, %63
  %166 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %22, align 4
  switch i32 %167, label %169 [
    i32 0, label %168
    i32 1, label %168
  ]

168:                                              ; preds = %165, %165
  ret void

169:                                              ; preds = %165
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @COM_GetExtension(i8*) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @R_LoadDDS(i8*, i32**, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i32) #2

declare dso_local i8* @va(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
