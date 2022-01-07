; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_ase.c_ConvertShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_ase.c_ConvertShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8*, double*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WARNING: NULL shader in BSP\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.tga\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09*MATERIAL\09%d\09{\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09\09*MATERIAL_NAME\09\22%s\22\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\09\09*MATERIAL_CLASS\09\22Standard\22\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\09\09*MATERIAL_DIFFUSE\09%f\09%f\09%f\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\09\09*MATERIAL_SHADING Phong\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09\09*MAP_DIFFUSE\09{\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09\09\09*MAP_NAME\09\22%s\22\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\09\09\09*MAP_CLASS\09\22Bitmap\22\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09\09\09*MAP_SUBNO\091\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\09\09\09*MAP_AMOUNT\091.0\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09\09\09*MAP_TYPE\09Screen\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\09\09\09*BITMAP\09\22..\\%s\22\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\09\09\09*BITMAP_FILTER\09Pyramidal\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\09\09}\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\09}\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32)* @ConvertShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertShader(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.TYPE_7__* @ShaderInfoForShader(i8* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @SYS_WRN, align 4
  %18 = call i32 @Sys_FPrintf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %115

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 42
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i8* %30, i8* %35)
  br label %43

37:                                               ; preds = %19
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %58, %43
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  store i8 92, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %45

61:                                               ; preds = %45
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load double*, double** %74, align 8
  %76 = getelementptr inbounds double, double* %75, i64 0
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load double*, double** %79, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  %82 = load double, double* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load double*, double** %84, align 8
  %86 = getelementptr inbounds double, double* %85, i64 2
  %87 = load double, double* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), double %77, double %82, double %87)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %107)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %61, %16
  ret void
}

declare dso_local %struct.TYPE_7__* @ShaderInfoForShader(i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
