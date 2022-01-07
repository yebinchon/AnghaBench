; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_MoverDown.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_MoverDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_4__ = type { i32, i64* }

@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no entity with model %d\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MoverDown(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64* null, i64** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 65535
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @AAS_BSPModelMinsMaxsOrigin(i32 %13, i64* %14, i64* %15, i64* %16, i64* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i64*, i64** %7, align 8
  %21 = call i32 @AAS_OriginOfMoverWithModelNum(i32 %19, i64* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %25 = load i32, i32* @PRT_MESSAGE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %24(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @qtrue, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @AAS_BSPModelMinsMaxsOrigin(i32, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @AAS_OriginOfMoverWithModelNum(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
