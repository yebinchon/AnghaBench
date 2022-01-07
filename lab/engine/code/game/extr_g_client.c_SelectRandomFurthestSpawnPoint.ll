; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_SelectRandomFurthestSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_SelectRandomFurthestSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_SPAWN_POINTS = common dso_local global i32 0, align 4
@classname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info_player_deathmatch\00", align 1
@FL_NO_BOTS = common dso_local global i32 0, align 4
@FL_NO_HUMANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't find a spawn point\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SelectRandomFurthestSpawnPoint(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca float, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.TYPE_8__*, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  br label %28

28:                                               ; preds = %148, %59, %38, %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = load i32, i32* @classname, align 4
  %31 = call i32 @FOFS(i32 %30)
  %32 = call %struct.TYPE_8__* @G_Find(%struct.TYPE_8__* %29, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %10, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %149

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = call i64 @SpotWouldTelefrag(%struct.TYPE_8__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %28

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FL_NO_BOTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FL_NO_HUMANS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %46
  br label %28

60:                                               ; preds = %56, %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @VectorSubtract(i32 %64, i32* %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call float @VectorLength(i32* %68)
  store float %69, float* %12, align 4
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %126, %60
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = load float, float* %12, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %24, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fcmp ogt float %75, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %74
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %19, align 4
  br label %90

90:                                               ; preds = %111, %88
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32, i32* %19, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %24, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %24, i64 %101
  store float %99, float* %102, align 4
  %103 = load i32, i32* %19, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %109
  store %struct.TYPE_8__* %107, %struct.TYPE_8__** %110, align 8
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %19, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load float, float* %12, align 4
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %24, i64 %117
  store float %115, float* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %121
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %122, align 8
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %129

125:                                              ; preds = %74
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %70

129:                                              ; preds = %114, %70
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load float, float* %12, align 4
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %24, i64 %140
  store float %138, float* %141, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %144
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %145, align 8
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %137, %133, %129
  br label %28

149:                                              ; preds = %28
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %178, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @classname, align 4
  %154 = call i32 @FOFS(i32 %153)
  %155 = call %struct.TYPE_8__* @G_Find(%struct.TYPE_8__* null, i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %155, %struct.TYPE_8__** %10, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = call i32 @G_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %152
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @VectorCopy(i32 %164, i32* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 9
  store i32 %170, i32* %168, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @VectorCopy(i32 %174, i32* %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %5, align 8
  store i32 1, i32* %20, align 4
  br label %209

178:                                              ; preds = %149
  %179 = call i32 (...) @random()
  %180 = load i32, i32* %16, align 4
  %181 = sdiv i32 %180, 2
  %182 = mul nsw i32 %179, %181
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %184
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @VectorCopy(i32 %189, i32* %190)
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 9
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %197
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @VectorCopy(i32 %202, i32* %203)
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %206
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %5, align 8
  store i32 1, i32* %20, align 4
  br label %209

209:                                              ; preds = %178, %160
  %210 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @G_Find(%struct.TYPE_8__*, i32, i8*) #2

declare dso_local i32 @FOFS(i32) #2

declare dso_local i64 @SpotWouldTelefrag(%struct.TYPE_8__*) #2

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #2

declare dso_local float @VectorLength(i32*) #2

declare dso_local i32 @G_Error(i8*) #2

declare dso_local i32 @VectorCopy(i32, i32*) #2

declare dso_local i32 @random(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
