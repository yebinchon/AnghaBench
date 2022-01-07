; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_DropToFloor.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_DropToFloor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@CONTENTS_SOLID = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_DropToFloor(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @VectorCopy(i32* %11, i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 100
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @CONTENTS_SOLID, align 4
  %23 = call { i32*, i64 } @AAS_Trace(i32* %18, i32* %19, i32* %20, i32* %21, i32 0, i32 %22)
  %24 = bitcast %struct.TYPE_3__* %10 to { i32*, i64 }*
  %25 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i32*, i64 } %23, 0
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i32*, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.TYPE_3__* %9 to i8*
  %30 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @VectorCopy(i32* %38, i32* %39)
  %41 = load i32, i32* @qtrue, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local { i32*, i64 } @AAS_Trace(i32*, i32*, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
