; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_SetConfigstring.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_init.c_SV_SetConfigstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SV_SetConfigstring: bad index %i\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sv = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SS_GAME = common dso_local global i64 0, align 8
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_12__* null, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@CS_PRIMED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@SVF_NOSERVERINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SetConfigstring(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @ERR_DROP, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @Com_Error(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i8* %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %109

31:                                               ; preds = %21
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @Z_Free(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @CopyString(i8* %38)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 2), align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 0), align 8
  %45 = load i64, i64* @SS_GAME, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sv, i32 0, i32 1), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %47, %31
  store i32 0, i32* %5, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %6, align 8
  br label %52

52:                                               ; preds = %103, %50
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CS_ACTIVE, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CS_PRIMED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* @qtrue, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %64
  br label %103

79:                                               ; preds = %58
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @CS_SERVERINFO, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SVF_NOSERVERINFO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %103

99:                                               ; preds = %88, %83, %79
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @SV_SendConfigstring(%struct.TYPE_10__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %98, %78
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 1
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %6, align 8
  br label %52

108:                                              ; preds = %52
  br label %109

109:                                              ; preds = %30, %108, %47
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @Z_Free(i32) #1

declare dso_local i32 @CopyString(i8*) #1

declare dso_local i32 @SV_SendConfigstring(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
