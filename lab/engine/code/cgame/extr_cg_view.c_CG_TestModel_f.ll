; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_TestModel_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_TestModel_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@qfalse = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't register model\0A\00", align 1
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_TestModel_f() #0 {
  %1 = alloca i64*, align 8
  %2 = load i32, i32* @qfalse, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 4
  %3 = call i32 @memset(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), i32 0, i32 32)
  %4 = call i32 (...) @trap_Argc()
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %47

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 8
  %9 = call i32 @CG_Argv(i32 1)
  %10 = load i32, i32* @MAX_QPATH, align 4
  %11 = call i32 @Q_strncpyz(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 8
  %13 = call i32 @trap_R_RegisterModel(i32 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 3), align 4
  %14 = call i32 (...) @trap_Argc()
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = call i32 @CG_Argv(i32 2)
  %18 = call i32 @atof(i32 %17)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 4), align 8
  br label %19

19:                                               ; preds = %16, %7
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 3), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @CG_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %47

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2, i32 1), align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 2), align 8
  %30 = call i32 @VectorMA(i32 %25, i32 100, i32 %28, i32 %29)
  %31 = load i64*, i64** %1, align 8
  %32 = load i64, i64* @PITCH, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 180, %36
  %38 = load i64*, i64** %1, align 8
  %39 = load i64, i64* @YAW, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load i64*, i64** %1, align 8
  %42 = load i64, i64* @ROLL, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %1, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0, i32 1), align 4
  %46 = call i32 @AnglesToAxis(i64* %44, i32 %45)
  br label %47

47:                                               ; preds = %24, %22, %6
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @trap_Argc(...) #1

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

declare dso_local i32 @CG_Argv(i32) #1

declare dso_local i32 @trap_R_RegisterModel(i32) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @AnglesToAxis(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
