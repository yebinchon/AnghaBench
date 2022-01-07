; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_traps.c_bad_super_trap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_traps.c_bad_super_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16, i32, i32 }

@vec_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"*** %s ***   FORMAT=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"*** Exception %d ***   FORMAT=%X\0A\00", align 1
@VEC_ADDRERR = common dso_local global i32 0, align 4
@CPU_IS_020_OR_030 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"SSW=%#06x  \00", align 1
@RC = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [43 x i8] c"Pipe stage C instruction fault at %#010lx\0A\00", align 1
@RB = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [43 x i8] c"Pipe stage B instruction fault at %#010lx\0A\00", align 1
@DF = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [42 x i8] c"Data %s fault at %#010lx in %s (pc=%#lx)\0A\00", align 1
@RW = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@space_names = common dso_local global i32* null, align 8
@DFC = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [26 x i8] c"Current process id is %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"BAD KERNEL TRAP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_super_trap(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.frame* %0, %struct.frame** %2, align 8
  %5 = load %struct.frame*, %struct.frame** %2, align 8
  %6 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 2
  %10 = and i32 %9, 255
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @console_verbose()
  %12 = load i32, i32* %3, align 4
  %13 = load i32*, i32** @vec_names, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32*, i32** @vec_names, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.frame*, %struct.frame** %2, align 8
  %23 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.frame*, %struct.frame** %2, align 8
  %30 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @VEC_ADDRERR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %142

38:                                               ; preds = %34
  %39 = load i64, i64* @CPU_IS_020_OR_030, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %142

41:                                               ; preds = %38
  %42 = load %struct.frame*, %struct.frame** %2, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 4
  store i16 %46, i16* %4, align 2
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @RC, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %41
  %57 = load %struct.frame*, %struct.frame** %2, align 8
  %58 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.frame*, %struct.frame** %2, align 8
  %64 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 2
  br label %75

68:                                               ; preds = %56
  %69 = load %struct.frame*, %struct.frame** %2, align 8
  %70 = getelementptr inbounds %struct.frame, %struct.frame* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 2
  br label %75

75:                                               ; preds = %68, %62
  %76 = phi i32 [ %67, %62 ], [ %74, %68 ]
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %41
  %79 = load i16, i16* %4, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @RB, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %78
  %86 = load %struct.frame*, %struct.frame** %2, align 8
  %87 = getelementptr inbounds %struct.frame, %struct.frame* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.frame*, %struct.frame** %2, align 8
  %93 = getelementptr inbounds %struct.frame, %struct.frame* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 4
  br label %103

97:                                               ; preds = %85
  %98 = load %struct.frame*, %struct.frame** %2, align 8
  %99 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi i32 [ %96, %91 ], [ %102, %97 ]
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103, %78
  %107 = load i16, i16* %4, align 2
  %108 = zext i16 %107 to i32
  %109 = load i16, i16* @DF, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %106
  %114 = load i16, i16* %4, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, i16* @RW, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %122 = load %struct.frame*, %struct.frame** %2, align 8
  %123 = getelementptr inbounds %struct.frame, %struct.frame* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @space_names, align 8
  %128 = load i16, i16* %4, align 2
  %129 = zext i16 %128 to i32
  %130 = load i16, i16* @DFC, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %129, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.frame*, %struct.frame** %2, align 8
  %137 = getelementptr inbounds %struct.frame, %struct.frame* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %121, i32 %126, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %113, %106
  br label %142

142:                                              ; preds = %141, %38, %34
  %143 = load i32, i32* @current, align 4
  %144 = call i32 @task_pid_nr(i32 %143)
  %145 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = load %struct.frame*, %struct.frame** %2, align 8
  %147 = getelementptr inbounds %struct.frame, %struct.frame* %146, i32 0, i32 0
  %148 = call i32 @die_if_kernel(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_6__* %147, i32 0)
  ret void
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
