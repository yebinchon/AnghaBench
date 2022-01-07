; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_3ds.c_GetMeshShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_3ds.c_GetMeshShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"models/mapobjects/%s/%s\00", align 1
@PICO_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"3DS mesh is missing shader name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @GetMeshShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetMeshShader(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [255 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1025 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = bitcast [255 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 255, i1 false)
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %16 = call i32 @GetASCIIZ(%struct.TYPE_5__* %14, i8* %15, i32 255)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = call i32 @_pico_first_token(i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %26 = call i32* @PicoFindShader(i32 %24, i8* %25, i32 1)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %29
  %35 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 0
  %36 = call i32 @memset(i8* %35, i32 0, i32 1025)
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @PicoGetShaderMapName(i32* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 0
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 0
  %46 = call i8* @_pico_nopath(i8* %45)
  store i8* %46, i8** %12, align 8
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strncpy(i8* %47, i8* %48, i32 128)
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcpy(i8* %54, i8* %57)
  br label %59

59:                                               ; preds = %53, %41
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %61 = call i32 @_pico_strlwr(i8* %60)
  %62 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %67 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @PicoSetSurfaceShader(i64 %70, i32* %71)
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %59, %34
  br label %74

74:                                               ; preds = %73, %29, %19
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @PICO_WARNING, align 4
  %79 = call i32 @_pico_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = call i32 @GetWord(%struct.TYPE_5__* %81)
  store i32 %82, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %90, %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = call i32 @GetWord(%struct.TYPE_5__* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %83

93:                                               ; preds = %83
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetASCIIZ(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @_pico_first_token(i8*) #2

declare dso_local i32* @PicoFindShader(i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @PicoGetShaderMapName(i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @_pico_nopath(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @_pico_strlwr(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @PicoSetSurfaceShader(i64, i32*) #2

declare dso_local i32 @_pico_printf(i32, i8*) #2

declare dso_local i32 @GetWord(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
