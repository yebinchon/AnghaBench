; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_Svcmd_EntityList_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_Svcmd_EntityList_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@g_entities = common dso_local global %struct.TYPE_6__* null, align 8
@level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"%3i:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ET_GENERAL          \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ET_PLAYER           \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ET_ITEM             \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ET_MISSILE          \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ET_MOVER            \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ET_BEAM             \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ET_PORTAL           \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ET_SPEAKER          \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ET_PUSH_TRIGGER     \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ET_TELEPORT_TRIGGER \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ET_INVISIBLE        \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ET_GRAPPLE          \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%3i                 \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_EntityList_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_entities, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %63, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 0), align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %68

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %63

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %45 [
    i32 138, label %21
    i32 132, label %23
    i32 135, label %25
    i32 134, label %27
    i32 133, label %29
    i32 139, label %31
    i32 131, label %33
    i32 129, label %35
    i32 130, label %37
    i32 128, label %39
    i32 136, label %41
    i32 137, label %43
  ]

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %51

23:                                               ; preds = %14
  %24 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %51

25:                                               ; preds = %14
  %26 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %51

27:                                               ; preds = %14
  %28 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %51

29:                                               ; preds = %14
  %30 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %51

31:                                               ; preds = %14
  %32 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %51

33:                                               ; preds = %14
  %34 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %51

35:                                               ; preds = %14
  %36 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %51

37:                                               ; preds = %14
  %38 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %51

39:                                               ; preds = %14
  %40 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %51

41:                                               ; preds = %14
  %42 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %51

43:                                               ; preds = %14
  %44 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %51

45:                                               ; preds = %14
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = call i32 (i8*, ...) @G_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %13
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 1
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %2, align 8
  br label %4

68:                                               ; preds = %4
  ret void
}

declare dso_local i32 @G_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
