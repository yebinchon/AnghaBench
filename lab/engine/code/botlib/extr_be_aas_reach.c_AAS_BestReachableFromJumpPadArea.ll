; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_BestReachableFromJumpPadArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_BestReachableFromJumpPadArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@MAX_EPAIRKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bot_visualizejumppads\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"trigger_push\00", align 1
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"trigger_push not in any jump pad area\0A\00", align 1
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_BestReachableFromJumpPadArea(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %26 = load i32, i32* @MAX_EPAIRKEY, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %23, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %24, align 8
  %30 = call i32 @LibVarValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @VectorAdd(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @VectorAdd(i32 %35, i32 %36, i32 %37)
  %39 = call i32 @AAS_NextBSPEntity(i32 0)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %145, %3
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %148

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAX_EPAIRKEY, align 4
  %46 = call i32 @AAS_ValueForBSPEpairKey(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %145

49:                                               ; preds = %43
  %50 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %145

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @AAS_GetJumpPadInfo(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %145

62:                                               ; preds = %53
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @PRESENCE_CROUCH, align 4
  %66 = call %struct.TYPE_8__* @AAS_LinkEntityClientBBox(i32 %63, i32 %64, i32 -1, i32 %65)
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %21, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %22, align 8
  br label %68

68:                                               ; preds = %79, %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @AAS_AreaJumpPad(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %22, align 8
  br label %68

83:                                               ; preds = %77, %68
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @botimport, i32 0, i32 0), align 8
  %88 = load i32, i32* @PRT_MESSAGE, align 4
  %89 = call i32 %87(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %91 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %90)
  br label %145

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @VectorSet(i32 %93, i32 0, i32 0, i32 0)
  %95 = call i32 @Com_Memset(%struct.TYPE_9__* %20, i32 0, i32 4)
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @PRESENCE_NORMAL, align 4
  %98 = load i32, i32* @qfalse, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @AAS_ClientMovementHitBBox(%struct.TYPE_9__* %20, i32 -1, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 0, i32 30, float 0x3FB99999A0000000, i32 %101, i32 %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 30
  br i1 %107, label %108, label %142

108:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %12, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %22, align 8
  br label %110

110:                                              ; preds = %134, %108
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %112 = icmp ne %struct.TYPE_8__* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @AAS_AreaJumpPad(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %134

120:                                              ; preds = %113
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call float @AAS_AreaVolume(i32 %123)
  store float %124, float* %11, align 4
  %125 = load float, float* %11, align 4
  %126 = load float, float* %12, align 4
  %127 = fcmp oge float %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %10, align 4
  %132 = load float, float* %11, align 4
  store float %132, float* %12, align 4
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133, %119
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %22, align 8
  br label %110

138:                                              ; preds = %110
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %140 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %139)
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %149

142:                                              ; preds = %92
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %144 = call i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__* %143)
  br label %145

145:                                              ; preds = %142, %86, %61, %52, %48
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @AAS_NextBSPEntity(i32 %146)
  store i32 %147, i32* %8, align 4
  br label %40

148:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %149

149:                                              ; preds = %148, %138
  %150 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LibVarValue(i8*, i8*) #2

declare dso_local i32 @VectorAdd(i32, i32, i32) #2

declare dso_local i32 @AAS_NextBSPEntity(i32) #2

declare dso_local i32 @AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AAS_GetJumpPadInfo(i32, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_8__* @AAS_LinkEntityClientBBox(i32, i32, i32, i32) #2

declare dso_local i64 @AAS_AreaJumpPad(i32) #2

declare dso_local i32 @AAS_UnlinkFromAreas(%struct.TYPE_8__*) #2

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @AAS_ClientMovementHitBBox(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #2

declare dso_local float @AAS_AreaVolume(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
