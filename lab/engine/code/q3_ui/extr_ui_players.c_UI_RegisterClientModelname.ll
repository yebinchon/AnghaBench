; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_RegisterClientModelname.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_RegisterClientModelname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"models/players/%s/lower.md3\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to load model file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"models/players/%s/upper.md3\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"models/players/%s/head.md3\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to load skin file: %s : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"models/players/%s/animation.cfg\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to load animation file %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_RegisterClientModelname(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @MAX_QPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i32, i32* @MAX_QPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i8* null, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = trunc i64 %13 to i32
  %35 = call i32 @Q_strncpyz(i8* %15, i8* %33, i32 %34)
  %36 = call i8* @strchr(i8* %15, i8 signext 47)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = trunc i64 %17 to i32
  %41 = call i32 @Q_strncpyz(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %48

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = trunc i64 %17 to i32
  %46 = call i32 @Q_strncpyz(i8* %18, i8* %44, i32 %45)
  %47 = load i8*, i8** %10, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %42, %39
  %49 = trunc i64 %20 to i32
  %50 = call i32 @Com_sprintf(i8* %21, i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %51 = call i8* @trap_R_RegisterModel(i8* %21)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

61:                                               ; preds = %48
  %62 = trunc i64 %20 to i32
  %63 = call i32 @Com_sprintf(i8* %21, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %64 = call i8* @trap_R_RegisterModel(i8* %21)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %73 = load i32, i32* @qfalse, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

74:                                               ; preds = %61
  %75 = trunc i64 %20 to i32
  %76 = call i32 @Com_sprintf(i8* %21, i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %77 = call i8* @trap_R_RegisterModel(i8* %21)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %86 = load i32, i32* @qfalse, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

87:                                               ; preds = %74
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = call i32 @UI_RegisterClientSkin(%struct.TYPE_5__* %88, i8* %15, i8* %18)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = call i32 @UI_RegisterClientSkin(%struct.TYPE_5__* %92, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %15, i8* %18)
  %97 = load i32, i32* @qfalse, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %87
  %100 = trunc i64 %20 to i32
  %101 = call i32 @Com_sprintf(i8* %21, i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %15)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = call i32 @UI_ParseAnimationFile(i8* %21, %struct.TYPE_5__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %21)
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @qtrue, align 4
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %105, %95, %84, %71, %58, %30
  %111 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @UI_RegisterClientSkin(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @UI_ParseAnimationFile(i8*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
