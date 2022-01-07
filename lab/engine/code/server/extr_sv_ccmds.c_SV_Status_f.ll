; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_Status_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_Status_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@com_sv_running = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"map: %s\0A\00", align 1
@sv_mapname = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"cl score ping name            address                                 rate \0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"-- ----- ---- --------------- --------------------------------------- -----\0A\00", align 1
@svs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_13__* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%2i \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%5i \00", align 1
@PERS_SCORE = common dso_local global i64 0, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"CON \00", align 1
@CS_ZOMBIE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"ZMB \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%4i \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"^7%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" %5i\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_Status_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_Status_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_sv_running, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %126

14:                                               ; preds = %0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_mapname, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  br label %22

22:                                               ; preds = %119, %14
  %23 = load i32, i32* %1, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_maxclients, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %119

34:                                               ; preds = %28
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call %struct.TYPE_10__* @SV_GameClientNum(i32 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @PERS_SCORE, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CS_CONNECTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %76

53:                                               ; preds = %34
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CS_ZOMBIE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %75

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 9999
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  br label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 9999, %70 ]
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %59
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SV_Strlen(i32 %83)
  %85 = sub nsw i32 16, %84
  store i32 %85, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %90, %76
  %87 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %86, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @NET_AdrToString(i32 %98)
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sub nsw i32 39, %103
  store i32 %104, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %109, %94
  %106 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %105, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %116)
  %118 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %33
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 1
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %4, align 8
  br label %22

124:                                              ; preds = %22
  %125 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %12
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @SV_GameClientNum(i32) #1

declare dso_local i32 @SV_Strlen(i32) #1

declare dso_local i8* @NET_AdrToString(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
