; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_SendClientGameState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_SendClientGameState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_15__*, i64** }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_14__, i32, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SV_SendClientGameState() for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Going from CS_CONNECTED to CS_PRIMED for %s\0A\00", align 1
@CS_PRIMED = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@svc_gamestate = common dso_local global i32 0, align 4
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@svc_configstring = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@svc_baseline = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@svc_EOF = common dso_local global i32 0, align 4
@svs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @SV_SendClientGameState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_SendClientGameState(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load i32, i32* @MAX_MSGLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @CS_PRIMED, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @qfalse, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = mul nuw i64 4, %10
  %36 = trunc i64 %35 to i32
  %37 = call i32 @MSG_Init(i32* %6, i32* %12, i32 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = call i32 @MSG_WriteLong(i32* %6, %struct.TYPE_17__* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = call i32 @SV_UpdateServerCommandsToClient(%struct.TYPE_17__* %42, i32* %6)
  %44 = load i32, i32* @svc_gamestate, align 4
  %45 = call i32 @MSG_WriteByte(i32* %6, i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = call i32 @MSG_WriteLong(i32* %6, %struct.TYPE_17__* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %75, %1
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sv, i32 0, i32 2), align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64*, i64** %55, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load i32, i32* @svc_configstring, align 4
  %65 = call i32 @MSG_WriteByte(i32* %6, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @MSG_WriteShort(i32* %6, i32 %66)
  %68 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sv, i32 0, i32 2), align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @MSG_WriteBigString(i32* %6, i64* %72)
  br label %74

74:                                               ; preds = %63, %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %50

78:                                               ; preds = %50
  %79 = call i32 @Com_Memset(%struct.TYPE_16__* %5, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %101, %78
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @MAX_GENTITIES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sv, i32 0, i32 1), align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %4, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @svc_baseline, align 4
  %97 = call i32 @MSG_WriteByte(i32* %6, i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = load i32, i32* @qtrue, align 4
  %100 = call i32 @MSG_WriteDeltaEntity(i32* %6, %struct.TYPE_16__* %5, %struct.TYPE_16__* %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %80

104:                                              ; preds = %80
  %105 = load i32, i32* @svc_EOF, align 4
  %106 = call i32 @MSG_WriteByte(i32* %6, i32 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @svs, i32 0, i32 0), align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i64 %110
  %112 = call i32 @MSG_WriteLong(i32* %6, %struct.TYPE_17__* %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sv, i32 0, i32 0), align 8
  %114 = call i32 @MSG_WriteLong(i32* %6, %struct.TYPE_17__* %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = call i32 @SV_SendMessageToClient(i32* %6, %struct.TYPE_17__* %115)
  %117 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #2

declare dso_local i32 @MSG_Init(i32*, i32*, i32) #2

declare dso_local i32 @MSG_WriteLong(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @SV_UpdateServerCommandsToClient(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @MSG_WriteByte(i32*, i32) #2

declare dso_local i32 @MSG_WriteShort(i32*, i32) #2

declare dso_local i32 @MSG_WriteBigString(i32*, i64*) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @MSG_WriteDeltaEntity(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @SV_SendMessageToClient(i32*, %struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
