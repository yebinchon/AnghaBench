; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_InitMover.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_InitMover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { float, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1 1 1\00", align 1
@Use_BinaryMover = common dso_local global i32 0, align 4
@Reached_BinaryMover = common dso_local global i32 0, align 4
@MOVER_POS1 = common dso_local global i32 0, align 4
@SVF_USE_CURRENT_ORIGIN = common dso_local global i32 0, align 4
@ET_MOVER = common dso_local global i32 0, align 4
@TR_STATIONARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitMover(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @G_ModelIndex(i64 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %1
  %27 = call i64 @G_SpawnString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @G_SoundIndex(i8* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = call i64 @G_SpawnFloat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), float* %5)
  store i64 %36, i64* %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @G_SpawnVector(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %41, %35
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 255
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 255
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 255, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 255
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 255, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 255
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 255
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 255, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load float, float* %5, align 4
  %70 = fdiv float %69, 4.000000e+00
  %71 = fptosi float %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 255
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 255, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %76, %78
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 24
  %85 = or i32 %82, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %75, %41
  %90 = load i32, i32* @Use_BinaryMover, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @Reached_BinaryMover, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @MOVER_POS1, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @SVF_USE_CURRENT_ORIGIN, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ET_MOVER, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @VectorCopy(i32 %109, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = call i32 @trap_LinkEntity(%struct.TYPE_10__* %115)
  %117 = load i32, i32* @TR_STATIONARY, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @VectorCopy(i32 %124, i32 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @VectorSubtract(i32 %133, i32 %136, i32* %137)
  %139 = load i32*, i32** %3, align 8
  %140 = call float @VectorLength(i32* %139)
  store float %140, float* %4, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %89
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 100, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %89
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @VectorScale(i32* %149, i32 %152, i32 %157)
  %159 = load float, float* %4, align 4
  %160 = fmul float %159, 1.000000e+03
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sitofp i32 %163 to float
  %165 = fdiv float %160, %164
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store float %165, float* %169, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load float, float* %173, align 4
  %175 = fcmp ole float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %148
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store float 1.000000e+00, float* %180, align 4
  br label %181

181:                                              ; preds = %176, %148
  ret void
}

declare dso_local i32 @G_ModelIndex(i64) #1

declare dso_local i64 @G_SpawnString(i8*, i8*, i8**) #1

declare dso_local i32 @G_SoundIndex(i8*) #1

declare dso_local i64 @G_SpawnFloat(i8*, i8*, float*) #1

declare dso_local i64 @G_SpawnVector(i8*, i8*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_10__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local float @VectorLength(i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
