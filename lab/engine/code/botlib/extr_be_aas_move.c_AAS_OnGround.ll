; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_OnGround.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_OnGround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { double, i32*, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_OnGround(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @VectorCopy(i32* %13, i32* %14)
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 10
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  call void @AAS_TraceClientBBox(%struct.TYPE_6__* sret %12, i32* %20, i32* %21, i32 %22, i32 %23)
  %24 = bitcast %struct.TYPE_6__* %8 to i8*
  %25 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 32, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %4, align 4
  br label %64

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fcmp oge double %33, 1.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %40, %44
  %46 = icmp sgt i32 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %4, align 4
  br label %64

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_7__* @AAS_PlaneFromNum(i32 %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @DotProduct(i32 %55, i32* %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aassettings, i32 0, i32 0), align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @qtrue, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %47, %35, %29
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local void @AAS_TraceClientBBox(%struct.TYPE_6__* sret, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_7__* @AAS_PlaneFromNum(i32) #1

declare dso_local i64 @DotProduct(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
