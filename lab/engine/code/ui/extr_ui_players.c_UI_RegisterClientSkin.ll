; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RegisterClientSkin.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RegisterClientSkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"models/players/%s/%s/lower_%s.skin\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"models/players/%s/lower_%s.skin\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"models/players/characters/%s/%s/lower_%s.skin\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/lower_%s.skin\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"models/players/%s/%s/upper_%s.skin\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"models/players/%s/upper_%s.skin\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"models/players/characters/%s/%s/upper_%s.skin\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/upper_%s.skin\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"skin\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*)* @UI_RegisterClientSkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_RegisterClientSkin(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %6
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = trunc i64 %18 to i32
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %32)
  br label %39

34:                                               ; preds = %23, %6
  %35 = trunc i64 %18 to i32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = call i8* @trap_R_RegisterSkin(i8* %20)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i8*, i8** %13, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = trunc i64 %18 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  br label %66

61:                                               ; preds = %50, %47
  %62 = trunc i64 %18 to i32
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = call i8* @trap_R_RegisterSkin(i8* %20)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %39
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = trunc i64 %18 to i32
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %81, i8* %82)
  br label %89

84:                                               ; preds = %73, %70
  %85 = trunc i64 %18 to i32
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = call i8* @trap_R_RegisterSkin(i8* %20)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %120, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %13, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** %13, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = trunc i64 %18 to i32
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %107, i8* %108, i8* %109)
  br label %116

111:                                              ; preds = %100, %97
  %112 = trunc i64 %18 to i32
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %113, i8* %114)
  br label %116

116:                                              ; preds = %111, %105
  %117 = call i8* @trap_R_RegisterSkin(i8* %20)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %89
  %121 = trunc i64 %18 to i32
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i64 @UI_FindClientHeadFile(i8* %20, i32 %121, i8* %122, i8* %123, i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = call i8* @trap_R_RegisterSkin(i8* %20)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %120
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %141, %136, %131
  %147 = load i32, i32* @qfalse, align 4
  store i32 %147, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @qtrue, align 4
  store i32 %149, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterSkin(i8*) #2

declare dso_local i64 @UI_FindClientHeadFile(i8*, i32, i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
