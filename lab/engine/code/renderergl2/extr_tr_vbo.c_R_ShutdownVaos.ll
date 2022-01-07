; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_ShutdownVaos.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_ShutdownVaos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*)* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i64, i64 }

@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"------- R_ShutdownVaos -------\0A\00", align 1
@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ShutdownVaos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %4 = load i32, i32* @PRINT_ALL, align 4
  %5 = call i32 %3(i32 %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @R_BindNullVao()
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %44, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 1), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = call i32 @qglDeleteVertexArrays(i32 1, i64* %23)
  br label %25

25:                                               ; preds = %21, %11
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @qglDeleteBuffers(i32 1, i64* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @qglDeleteBuffers(i32 1, i64* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %7

47:                                               ; preds = %7
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @R_BindNullVao(...) #1

declare dso_local i32 @qglDeleteVertexArrays(i32, i64*) #1

declare dso_local i32 @qglDeleteBuffers(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
