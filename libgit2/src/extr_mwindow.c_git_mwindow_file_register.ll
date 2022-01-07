; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_file_register.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_file_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@mem_ctl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@git__mwindow_mutex = common dso_local global i32 0, align 4
@GIT_ERROR_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to lock mwindow mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_mwindow_file_register(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* @mem_ctl, %struct.TYPE_5__** %4, align 8
  %6 = call i64 @git_mutex_lock(i32* @git__mwindow_mutex)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @GIT_ERROR_THREAD, align 4
  %10 = call i32 @git_error_set(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i64 @git_vector_init(%struct.TYPE_6__* %19, i32 8, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  store i32 -1, i32* %2, align 4
  br label %31

24:                                               ; preds = %17, %11
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_vector_insert(%struct.TYPE_6__* %26, i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %22, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_vector_init(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

declare dso_local i32 @git_vector_insert(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
