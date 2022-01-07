; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_MapList_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_MapList_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"levelshots/%s_small\00", align 1
@MAX_MAPS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Too many maps, last one replaced!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @MapList_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapList_Parse(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i32, i32* @qtrue, align 4
  %7 = call i8* @COM_ParseExt(i8** %5, i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 123
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %2, align 4
  br label %153

15:                                               ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %15, %152
  %17 = load i8**, i8*** %3, align 8
  %18 = load i32, i32* @qtrue, align 4
  %19 = call i8* @COM_ParseExt(i8** %17, i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @Q_stricmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @qtrue, align 4
  store i32 %24, i32* %2, align 4
  br label %153

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %153

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 123
  br i1 %37, label %38, label %152

38:                                               ; preds = %32
  %39 = load i8**, i8*** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 7
  %44 = call i32 @String_Parse(i8** %39, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load i8**, i8*** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = call i32 @String_Parse(i8** %47, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i8**, i8*** %3, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = call i32 @Int_Parse(i8** %55, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54, %46, %38
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %2, align 4
  br label %153

64:                                               ; preds = %54
  %65 = load i8**, i8*** %3, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = call i32 @String_Parse(i8** %65, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @qfalse, align 4
  store i32 %73, i32* %2, align 4
  br label %153

74:                                               ; preds = %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %126
  %80 = load i8**, i8*** %3, align 8
  %81 = load i32, i32* @qtrue, align 4
  %82 = call i8* @COM_ParseExt(i8** %80, i32 %81)
  store i8* %82, i8** %4, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %125

88:                                               ; preds = %79
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 57
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 48
  %100 = shl i32 1, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  %107 = load i8**, i8*** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 48
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = call i32 @Int_Parse(i8** %107, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %94
  %123 = load i32, i32* @qfalse, align 4
  store i32 %123, i32* %2, align 4
  br label %153

124:                                              ; preds = %94
  br label %126

125:                                              ; preds = %88, %79
  br label %127

126:                                              ; preds = %124
  br label %79

127:                                              ; preds = %125
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 -1, i32* %131, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = call i32 @trap_R_RegisterShaderNoMip(i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  store i32 %138, i32* %142, align 4
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %144 = load i64, i64* @MAX_MAPS, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %127
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  br label %151

149:                                              ; preds = %127
  %150 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %146
  br label %152

152:                                              ; preds = %151, %32
  br label %16

153:                                              ; preds = %122, %72, %62, %30, %23, %13
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @String_Parse(i8**, i32*) #1

declare dso_local i32 @Int_Parse(i8**, i32*) #1

declare dso_local i32 @trap_R_RegisterShaderNoMip(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
