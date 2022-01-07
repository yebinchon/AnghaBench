; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddLocalEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AddLocalEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64 }

@cg_activeLocalEntities = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"Bad leType: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddLocalEntities() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_activeLocalEntities, i32 0, i32 2), align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %1, align 8
  br label %4

4:                                                ; preds = %54, %0
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %6 = icmp ne %struct.TYPE_17__* %5, @cg_activeLocalEntities
  br i1 %6, label %7, label %56

7:                                                ; preds = %4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %2, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %18 = call i32 @CG_FreeLocalEntity(%struct.TYPE_17__* %17)
  br label %54

19:                                               ; preds = %7
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %23 [
    i32 133, label %28
    i32 128, label %29
    i32 140, label %32
    i32 137, label %35
    i32 132, label %38
    i32 139, label %41
    i32 138, label %44
    i32 131, label %47
    i32 130, label %50
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CG_Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %53

28:                                               ; preds = %19
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %31 = call i32 @CG_AddSpriteExplosion(%struct.TYPE_17__* %30)
  br label %53

32:                                               ; preds = %19
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %34 = call i32 @CG_AddExplosion(%struct.TYPE_17__* %33)
  br label %53

35:                                               ; preds = %19
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %37 = call i32 @CG_AddFragment(%struct.TYPE_17__* %36)
  br label %53

38:                                               ; preds = %19
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %40 = call i32 @CG_AddMoveScaleFade(%struct.TYPE_17__* %39)
  br label %53

41:                                               ; preds = %19
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %43 = call i32 @CG_AddFadeRGB(%struct.TYPE_17__* %42)
  br label %53

44:                                               ; preds = %19
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %46 = call i32 @CG_AddFallScaleFade(%struct.TYPE_17__* %45)
  br label %53

47:                                               ; preds = %19
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %49 = call i32 @CG_AddScaleFade(%struct.TYPE_17__* %48)
  br label %53

50:                                               ; preds = %19
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %52 = call i32 @CG_AddScorePlum(%struct.TYPE_17__* %51)
  br label %53

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29, %28, %23
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %1, align 8
  br label %4

56:                                               ; preds = %4
  ret void
}

declare dso_local i32 @CG_FreeLocalEntity(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Error(i8*, i32) #1

declare dso_local i32 @CG_AddSpriteExplosion(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddExplosion(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddFragment(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddMoveScaleFade(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddFadeRGB(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddFallScaleFade(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddScaleFade(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_AddScorePlum(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
