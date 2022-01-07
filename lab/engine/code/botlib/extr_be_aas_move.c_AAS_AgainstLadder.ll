; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_AgainstLadder.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_AgainstLadder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@AREA_LADDER = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@FACE_LADDER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AgainstLadder(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @VectorCopy(i32* %12, i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @AAS_PointAreaNum(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @AAS_PointAreaNum(i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @AAS_PointAreaNum(i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @AAS_PointAreaNum(i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %48, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @AAS_PointAreaNum(i32* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %37
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %19
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %2, align 4
  br label %155

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AREA_LADDER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %2, align 4
  br label %155

73:                                               ; preds = %61
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PRESENCE_NORMAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @qfalse, align 4
  store i32 %84, i32* %2, align 4
  br label %155

85:                                               ; preds = %73
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %150, %85
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %153

96:                                               ; preds = %90
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @abs(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %10, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FACE_LADDER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %96
  br label %150

120:                                              ; preds = %96
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = xor i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %127
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %9, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = call i64 @DotProduct(i32 %131, i32* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = call i32 @fabsf(i64 %137)
  %139 = icmp slt i32 %138, 3
  br i1 %139, label %140, label %149

140:                                              ; preds = %120
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @abs(i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = call i64 @AAS_PointInsideFace(i64 %142, i32* %143, float 0x3FB99999A0000000)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @qtrue, align 4
  store i32 %147, i32* %2, align 4
  br label %155

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %120
  br label %150

150:                                              ; preds = %149, %119
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %90

153:                                              ; preds = %90
  %154 = load i32, i32* @qfalse, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %146, %83, %71, %59
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @fabsf(i64) #1

declare dso_local i64 @DotProduct(i32, i32*) #1

declare dso_local i64 @AAS_PointInsideFace(i64, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
