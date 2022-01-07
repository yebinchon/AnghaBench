; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_sin.c_Sin_ParseBSPEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_sin.c_Sin_ParseBSPEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i64, i32 }

@entities = common dso_local global %struct.TYPE_6__* null, align 8
@nummapbrushes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"worldspawn\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"func_areaportal\00", align 1
@c_areaportals = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sin_ParseBSPEntity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entities, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load i32, i32* @nummapbrushes, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i8* @ValueForKey(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 42
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @atoi(i8* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %21, %1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @GetVectorForKey(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i8* @ValueForKey(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i32 @Sin_ParseBSPBrushes(%struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = call i8* @ValueForKey(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @c_areaportals, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* @c_areaportals, align 8
  %61 = load i64, i64* @c_areaportals, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  store i32 1, i32* %2, align 4
  br label %65

64:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @ValueForKey(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Sin_ParseBSPBrushes(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
