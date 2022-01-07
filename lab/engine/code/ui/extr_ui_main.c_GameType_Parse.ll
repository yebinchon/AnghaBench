; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_GameType_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_GameType_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MAX_GAMETYPES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Too many net game types, last one replace!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Too many game types, last one replace!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64)* @GameType_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GameType_Parse(i8** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i64, i64* @qtrue, align 8
  %9 = call i8* @COM_ParseExt(i8** %7, i64 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 123
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @qfalse, align 8
  store i64 %16, i64* %3, align 8
  br label %122

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  br label %22

21:                                               ; preds = %17
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %121
  %24 = load i8**, i8*** %4, align 8
  %25 = load i64, i64* @qtrue, align 8
  %26 = call i8* @COM_ParseExt(i8** %24, i64 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @qtrue, align 8
  store i64 %31, i64* %3, align 8
  br label %122

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @qfalse, align 8
  store i64 %38, i64* %3, align 8
  br label %122

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 123
  br i1 %44, label %45, label %121

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i8**, i8*** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 3), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @String_Parse(i8** %49, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i8**, i8*** %4, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 3), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @Int_Parse(i8** %57, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56, %48
  %65 = load i64, i64* @qfalse, align 8
  store i64 %65, i64* %3, align 8
  br label %122

66:                                               ; preds = %56
  br label %86

67:                                               ; preds = %45
  %68 = load i8**, i8*** %4, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 2), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = call i32 @String_Parse(i8** %68, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load i8**, i8*** %4, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 2), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @Int_Parse(i8** %76, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75, %67
  %84 = load i64, i64* @qfalse, align 8
  store i64 %84, i64* %3, align 8
  br label %122

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %91 = load i64, i64* @MAX_GAMETYPES, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  br label %98

96:                                               ; preds = %89
  %97 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  br label %109

99:                                               ; preds = %86
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %101 = load i64, i64* @MAX_GAMETYPES, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  br label %108

106:                                              ; preds = %99
  %107 = call i32 @Com_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %98
  %110 = load i8**, i8*** %4, align 8
  %111 = load i64, i64* @qtrue, align 8
  %112 = call i8* @COM_ParseExt(i8** %110, i64 %111)
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 125
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* @qfalse, align 8
  store i64 %119, i64* %3, align 8
  br label %122

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %39
  br label %23

122:                                              ; preds = %118, %83, %64, %37, %30, %15
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i8* @COM_ParseExt(i8**, i64) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @String_Parse(i8**, i32*) #1

declare dso_local i32 @Int_Parse(i8**, i32*) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
