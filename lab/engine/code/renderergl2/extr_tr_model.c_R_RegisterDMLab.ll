; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_R_RegisterDMLab.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model.c_R_RegisterDMLab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i8*)*, i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@MD3_MAX_LODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MOD_MESH = common dso_local global i32 0, align 4
@MOD_BAD = common dso_local global i32 0, align 4
@PRINT_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_RegisterDMLab(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = add nsw i32 %12, 20
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %61, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MD3_MAX_LODS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = trunc i64 %14 to i32
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %16, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  br label %34

30:                                               ; preds = %22
  %31 = trunc i64 %14 to i32
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %16, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @R_DMLabToMD3(i8* %35, %struct.TYPE_9__** %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i32*
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @R_LoadMD3(%struct.TYPE_8__* %39, i32 %40, i32* %42, i32 %45, i8* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i64 %47, i64* %10, align 8
  %48 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = call i32 %48(%struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %38, %34
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %60

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %18

64:                                               ; preds = %59, %18
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @MOD_MESH, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @MOD_BAD, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @R_DMLabToMD3(i8*, %struct.TYPE_9__**) #2

declare dso_local i64 @R_LoadMD3(%struct.TYPE_8__*, i32, i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
