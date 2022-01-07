; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_LoadImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*, i32**, i32*, i32*)*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i8*, i8*)* }

@qfalse = common dso_local global i64 0, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@numImageLoaders = common dso_local global i32 0, align 4
@imageLoaders = common dso_local global %struct.TYPE_4__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"WARNING: %s not present, using %s instead\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadImage(i8* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32**, i32*** %6, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @MAX_QPATH, align 4
  %27 = call i32 @Q_strncpyz(i8* %21, i8* %25, i32 %26)
  %28 = call i8* @COM_GetExtension(i8* %21)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @numImageLoaders, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @imageLoaders, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Q_stricmp(i8* %38, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @imageLoaders, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (i8*, i32**, i32*, i32*)*, i32 (i8*, i32**, i32*, i32*)** %52, align 8
  %54 = load i32**, i32*** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 %53(i8* %21, i32** %54, i32* %55, i32* %56)
  br label %62

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %33

62:                                               ; preds = %47, %33
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @numImageLoaders, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32**, i32*** %6, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i64, i64* @qtrue, align 8
  store i64 %71, i64* %9, align 8
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @MAX_QPATH, align 4
  %75 = call i32 @COM_StripExtension(i8* %73, i8* %21, i32 %74)
  br label %77

76:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  br label %126

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %122, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @numImageLoaders, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %122

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @imageLoaders, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @va(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %95)
  store i8* %96, i8** %15, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @imageLoaders, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (i8*, i32**, i32*, i32*)*, i32 (i8*, i32**, i32*, i32*)** %101, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load i32**, i32*** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 %102(i8* %103, i32** %104, i32* %105, i32* %106)
  %108 = load i32**, i32*** %6, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %89
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %116 = load i32, i32* @PRINT_DEVELOPER, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 %115(i32 %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %114, %111
  br label %125

121:                                              ; preds = %89
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %80

125:                                              ; preds = %120, %80
  store i32 0, i32* %16, align 4
  br label %126

126:                                              ; preds = %125, %76
  %127 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %16, align 4
  switch i32 %128, label %130 [
    i32 0, label %129
    i32 1, label %129
  ]

129:                                              ; preds = %126, %126
  ret void

130:                                              ; preds = %126
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @COM_GetExtension(i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i32) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i8* @va(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
