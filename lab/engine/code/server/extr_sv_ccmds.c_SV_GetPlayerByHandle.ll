; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_GetPlayerByHandle.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_GetPlayerByHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64 }

@com_sv_running = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"No player specified.\0A\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_8__* null, align 8
@svs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Player %s is not on the server\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @SV_GetPlayerByHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @SV_GetPlayerByHandle() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_sv_running, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %118

12:                                               ; preds = %0
  %13 = call i32 (...) @Cmd_Argc()
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %118

17:                                               ; preds = %12
  %18 = call i8* @Cmd_Argv(i32 1)
  store i8* %18, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %38, %17
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 57
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi i1 [ false, %19 ], [ %34, %27 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %19

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_maxclients, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %2, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %1, align 8
  br label %118

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %53, %48
  br label %72

72:                                               ; preds = %71, %41
  store i32 0, i32* %3, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %2, align 8
  br label %74

74:                                               ; preds = %110, %72
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_maxclients, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %110

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @Q_stricmp(i8* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %1, align 8
  br label %118

95:                                               ; preds = %86
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @Q_strncpyz(i8* %96, i8* %99, i32 64)
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %102 = call i32 @Q_CleanStr(i8* %101)
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @Q_stricmp(i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %95
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %1, align 8
  br label %118

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 1
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %2, align 8
  br label %74

115:                                              ; preds = %74
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %116)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %118

118:                                              ; preds = %115, %107, %93, %68, %15, %11
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %119
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Q_CleanStr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
