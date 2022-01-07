; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_AddCEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_AddCEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@ET_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad entity type: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @CG_AddCEntity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddCEntity(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %3 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ET_EVENTS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = call i32 @CG_CalcEntityLerpPositions(%struct.TYPE_17__* %11)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = call i32 @CG_EntityEffects(%struct.TYPE_17__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %19 [
    i32 137, label %25
    i32 131, label %25
    i32 128, label %25
    i32 139, label %26
    i32 133, label %29
    i32 136, label %32
    i32 135, label %35
    i32 134, label %38
    i32 140, label %41
    i32 132, label %44
    i32 130, label %47
    i32 138, label %50
    i32 129, label %53
  ]

19:                                               ; preds = %10
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CG_Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %56

25:                                               ; preds = %10, %10, %10
  br label %56

26:                                               ; preds = %10
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = call i32 @CG_General(%struct.TYPE_17__* %27)
  br label %56

29:                                               ; preds = %10
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = call i32 @CG_Player(%struct.TYPE_17__* %30)
  br label %56

32:                                               ; preds = %10
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call i32 @CG_Item(%struct.TYPE_17__* %33)
  br label %56

35:                                               ; preds = %10
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = call i32 @CG_Missile(%struct.TYPE_17__* %36)
  br label %56

38:                                               ; preds = %10
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = call i32 @CG_Mover(%struct.TYPE_17__* %39)
  br label %56

41:                                               ; preds = %10
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = call i32 @CG_Beam(%struct.TYPE_17__* %42)
  br label %56

44:                                               ; preds = %10
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = call i32 @CG_Portal(%struct.TYPE_17__* %45)
  br label %56

47:                                               ; preds = %10
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = call i32 @CG_Speaker(%struct.TYPE_17__* %48)
  br label %56

50:                                               ; preds = %10
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = call i32 @CG_Grapple(%struct.TYPE_17__* %51)
  br label %56

53:                                               ; preds = %10
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = call i32 @CG_TeamBase(%struct.TYPE_17__* %54)
  br label %56

56:                                               ; preds = %9, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %25, %19
  ret void
}

declare dso_local i32 @CG_CalcEntityLerpPositions(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_EntityEffects(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Error(i8*, i32) #1

declare dso_local i32 @CG_General(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Player(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Item(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Missile(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Mover(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Beam(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Portal(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Speaker(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_Grapple(%struct.TYPE_17__*) #1

declare dso_local i32 @CG_TeamBase(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
