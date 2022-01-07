; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_ParseEntity.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_ParseEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ParseEntity: { not found\00", align 1
@num_entities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"num_entities == MAX_MAP_ENTITIES\00", align 1
@entities = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseEntity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load i32, i32* @qtrue, align 4
  %5 = call i32 @GetToken(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @qfalse, align 4
  store i32 %8, i32* %1, align 4
  br label %51

9:                                                ; preds = %0
  %10 = load i32, i32* @token, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i64, i64* @num_entities, align 8
  %17 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entities, align 8
  %23 = load i64, i64* @num_entities, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %3, align 8
  %25 = load i64, i64* @num_entities, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @num_entities, align 8
  br label %27

27:                                               ; preds = %48, %21
  %28 = load i32, i32* @qtrue, align 4
  %29 = call i32 @GetToken(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @token, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %49

38:                                               ; preds = %33
  %39 = call %struct.TYPE_5__* (...) @ParseEpair()
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %2, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  br label %48

48:                                               ; preds = %38
  br i1 true, label %27, label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* @qtrue, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %7
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @GetToken(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local %struct.TYPE_5__* @ParseEpair(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
