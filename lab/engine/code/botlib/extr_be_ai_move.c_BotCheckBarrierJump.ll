; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotCheckBarrierJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotCheckBarrierJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64*, float, i32, i32, i32 }
%struct.TYPE_8__ = type { i64*, double, i64 }

@sv_maxbarrier = common dso_local global %struct.TYPE_10__* null, align 8
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@sv_maxstep = common dso_local global %struct.TYPE_9__* null, align 8
@MFL_BARRIERJUMP = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotCheckBarrierJump(%struct.TYPE_7__* %0, i64* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store float %2, float* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = call i32 @VectorCopy(i64* %17, i64* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_maxbarrier, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i32, i32* @PRESENCE_NORMAL, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_8__* sret %12, i64* %29, i64* %30, i32 %31, i32 %34)
  %35 = bitcast %struct.TYPE_8__* %11 to i8*
  %36 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %4, align 4
  br label %180

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %46, %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_maxstep, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %4, align 4
  br label %180

59:                                               ; preds = %42
  %60 = load i64*, i64** %6, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64 0, i64* %71, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = call i32 @VectorNormalize(i64* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load float, float* %78, align 8
  %80 = load float, float* %7, align 4
  %81 = fmul float %79, %80
  %82 = fpext float %81 to double
  %83 = fmul double %82, 5.000000e-01
  %84 = fptrunc double %83 to float
  %85 = load i64*, i64** %9, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = call i32 @VectorMA(i64* %76, float %84, i64* %85, i64* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = call i32 @VectorCopy(i64* %89, i64* %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  store i64 %95, i64* %97, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i32, i32* @PRESENCE_NORMAL, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_8__* sret %13, i64* %98, i64* %99, i32 %100, i32 %103)
  %104 = bitcast %struct.TYPE_8__* %11 to i8*
  %105 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 24, i1 false)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %59
  %110 = load i32, i32* @qfalse, align 4
  store i32 %110, i32* %4, align 4
  br label %180

111:                                              ; preds = %59
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = call i32 @VectorCopy(i64* %113, i64* %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = call i32 @VectorCopy(i64* %117, i64* %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  store i64 %124, i64* %126, align 8
  %127 = load i64*, i64** %8, align 8
  %128 = load i64*, i64** %10, align 8
  %129 = load i32, i32* @PRESENCE_NORMAL, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_8__* sret %14, i64* %127, i64* %128, i32 %129, i32 %132)
  %133 = bitcast %struct.TYPE_8__* %11 to i8*
  %134 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %111
  %139 = load i32, i32* @qfalse, align 4
  store i32 %139, i32* %4, align 4
  br label %180

140:                                              ; preds = %111
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %142 = load double, double* %141, align 8
  %143 = fcmp oge double %142, 1.000000e+00
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @qfalse, align 4
  store i32 %145, i32* %4, align 4
  br label %180

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %150, %155
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_maxstep, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %146
  %162 = load i32, i32* @qfalse, align 4
  store i32 %162, i32* %4, align 4
  br label %180

163:                                              ; preds = %146
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @EA_Jump(i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = load float, float* %7, align 4
  %173 = call i32 @EA_Move(i32 %170, i64* %171, float %172)
  %174 = load i32, i32* @MFL_BARRIERJUMP, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @qtrue, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %163, %161, %144, %138, %109, %57, %40
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_8__* sret, i64*, i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorNormalize(i64*) #1

declare dso_local i32 @VectorMA(i64*, float, i64*, i64*) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
