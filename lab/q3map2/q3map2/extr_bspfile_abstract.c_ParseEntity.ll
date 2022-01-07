; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_ParseEntity.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_ParseEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ParseEntity: { not found\00", align 1
@numEntities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"numEntities == MAX_MAP_ENTITIES\00", align 1
@entities = common dso_local global %struct.TYPE_6__* null, align 8
@mapEnt = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseEntity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32, i32* @qtrue, align 4
  %4 = call i32 @GetToken(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @qfalse, align 4
  store i32 %7, i32* %1, align 4
  br label %49

8:                                                ; preds = %0
  %9 = load i32, i32* @token, align 4
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i64, i64* @numEntities, align 8
  %16 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entities, align 8
  %22 = load i64, i64* @numEntities, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** @mapEnt, align 8
  %24 = load i64, i64* @numEntities, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @numEntities, align 8
  br label %26

26:                                               ; preds = %20, %37
  %27 = load i32, i32* @qtrue, align 4
  %28 = call i32 @GetToken(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @token, align 4
  %34 = call i32 @EPAIR_STRCMP(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %47

37:                                               ; preds = %32
  %38 = call %struct.TYPE_5__* (...) @ParseEPair()
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %2, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapEnt, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapEnt, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  br label %26

47:                                               ; preds = %36
  %48 = load i32, i32* @qtrue, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %6
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @GetToken(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @EPAIR_STRCMP(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ParseEPair(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
