; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_SelectRandomTeamSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_SelectRandomTeamSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TEAM_BEGIN = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"team_CTF_redplayer\00", align 1
@TEAM_BLUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"team_CTF_blueplayer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"team_CTF_redspawn\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"team_CTF_bluespawn\00", align 1
@FL_NO_BOTS = common dso_local global i32 0, align 4
@FL_NO_HUMANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SelectRandomTeamSpawnPoint(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store float 0.000000e+00, float* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TEAM_BEGIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @TEAM_RED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %27

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @TEAM_BLUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %26

25:                                               ; preds = %20
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %92

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %19
  br label %41

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @TEAM_RED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @TEAM_BLUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %39

38:                                               ; preds = %33
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %92

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %89, %79, %69, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @FOFS(i8* %44)
  %46 = load i8*, i8** %11, align 8
  %47 = call %struct.TYPE_6__* @G_Find(%struct.TYPE_6__* %43, i32 %45, i8* %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %8, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %90

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FL_NO_BOTS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FL_NO_HUMANS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %56
  br label %42

70:                                               ; preds = %66, %59
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = call i64 @SpotWouldTelefrag(%struct.TYPE_6__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = icmp eq %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %9, align 8
  br label %79

79:                                               ; preds = %77, %74
  br label %42

80:                                               ; preds = %70
  %81 = load float, float* %10, align 4
  %82 = fadd float %81, 1.000000e+00
  store float %82, float* %10, align 4
  %83 = call float (...) @random()
  %84 = load float, float* %10, align 4
  %85 = fmul float %83, %84
  %86 = fcmp ole float %85, 1.000000e+00
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %9, align 8
  br label %89

89:                                               ; preds = %87, %80
  br label %42

90:                                               ; preds = %42
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %4, align 8
  br label %92

92:                                               ; preds = %90, %38, %25
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %93
}

declare dso_local %struct.TYPE_6__* @G_Find(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @FOFS(i8*) #1

declare dso_local i64 @SpotWouldTelefrag(%struct.TYPE_6__*) #1

declare dso_local float @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
