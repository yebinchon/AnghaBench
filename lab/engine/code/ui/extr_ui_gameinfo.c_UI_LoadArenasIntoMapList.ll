; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_gameinfo.c_UI_LoadArenasIntoMapList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_gameinfo.c_UI_LoadArenasIntoMapList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i8* }

@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ui_numArenas = common dso_local global i32 0, align 4
@ui_arenaInfos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"levelshots/%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ffa\00", align 1
@GT_FFA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"tourney\00", align 1
@GT_TOURNAMENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ctf\00", align 1
@GT_CTF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"oneflag\00", align 1
@GT_1FCTF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@GT_OBELISK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"harvester\00", align 1
@GT_HARVESTER = common dso_local global i32 0, align 4
@MAX_MAPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_LoadArenasIntoMapList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %158, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @ui_numArenas, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %161

7:                                                ; preds = %3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load i32*, i32** @ui_arenaInfos, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @Info_ValueForKey(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = call i8* @String_Alloc(i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i8* %18, i8** %22, align 8
  %23 = load i32*, i32** @ui_arenaInfos, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @Info_ValueForKey(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i8* @String_Alloc(i8* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i8* %29, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = call i8* @String_Alloc(i8* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i8* %44, i8** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load i32*, i32** @ui_arenaInfos, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @Info_ValueForKey(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %2, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %7
  %63 = load i8*, i8** %2, align 8
  %64 = call i64 @strstr(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @GT_FFA, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %66, %62
  %76 = load i8*, i8** %2, align 8
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* @GT_TOURNAMENT, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %79, %75
  %89 = load i8*, i8** %2, align 8
  %90 = call i64 @strstr(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @GT_CTF, align 4
  %94 = shl i32 1, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %92, %88
  %102 = load i8*, i8** %2, align 8
  %103 = call i64 @strstr(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @GT_1FCTF, align 4
  %107 = shl i32 1, %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %105, %101
  %115 = load i8*, i8** %2, align 8
  %116 = call i64 @strstr(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* @GT_OBELISK, align 4
  %120 = shl i32 1, %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %118, %114
  %128 = load i8*, i8** %2, align 8
  %129 = call i64 @strstr(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32, i32* @GT_HARVESTER, align 4
  %133 = shl i32 1, %132
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %133
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %131, %127
  br label %150

141:                                              ; preds = %7
  %142 = load i32, i32* @GT_FFA, align 4
  %143 = shl i32 1, %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %141, %140
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %154 = load i64, i64* @MAX_MAPS, align 8
  %155 = icmp uge i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %161

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %1, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %1, align 4
  br label %3

161:                                              ; preds = %156, %3
  ret void
}

declare dso_local i8* @String_Alloc(i8*) #1

declare dso_local i8* @Info_ValueForKey(i32, i8*) #1

declare dso_local i8* @va(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
