; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_show_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_show_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i8, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i8 0, align 1
@TASK_STOPPED = common dso_local global i8 0, align 1
@TASK_TRACED = common dso_local global i8 0, align 1
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@EXIT_DEAD = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [30 x i8] c"%px %016lx %6d %6d %c %2d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @show_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i8, align 1
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 4
  %14 = sext i8 %13 to i32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %84

17:                                               ; preds = %10
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @TASK_UNINTERRUPTIBLE, align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %82

27:                                               ; preds = %17
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @TASK_STOPPED, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %80

37:                                               ; preds = %27
  %38 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @TASK_TRACED, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %78

47:                                               ; preds = %37
  %48 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXIT_ZOMBIE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %76

55:                                               ; preds = %47
  %56 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXIT_DEAD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %74

63:                                               ; preds = %55
  %64 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 4
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @TASK_INTERRUPTIBLE, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 83, i32 63
  br label %74

74:                                               ; preds = %63, %62
  %75 = phi i32 [ 69, %62 ], [ %73, %63 ]
  br label %76

76:                                               ; preds = %74, %54
  %77 = phi i32 [ 90, %54 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %46
  %79 = phi i32 [ 67, %46 ], [ %77, %76 ]
  br label %80

80:                                               ; preds = %78, %36
  %81 = phi i32 [ 84, %36 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %26
  %83 = phi i32 [ 68, %26 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %16
  %85 = phi i32 [ 85, %16 ], [ %83, %82 ]
  br label %86

86:                                               ; preds = %84, %9
  %87 = phi i32 [ 82, %9 ], [ %85, %84 ]
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %3, align 1
  %89 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_4__* @rcu_dereference(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8, i8* %3, align 1
  %104 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %105 = call i32 @task_cpu(%struct.task_struct* %104)
  %106 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %107 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.task_struct* %89, i32 %93, i32 %96, i32 %102, i8 signext %103, i32 %105, i32 %108)
  ret void
}

declare dso_local i32 @printf(i8*, %struct.task_struct*, i32, i32, i32, i8 signext, i32, i32) #1

declare dso_local %struct.TYPE_4__* @rcu_dereference(i32) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
