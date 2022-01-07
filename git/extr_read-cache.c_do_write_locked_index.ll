; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_do_write_locked_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_do_write_locked_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i64, i64 }
%struct.lock_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"do_write_index\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"post-index-change\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.lock_file*, i32)* @do_write_locked_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_locked_index(%struct.index_state* %0, %struct.lock_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.lock_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.lock_file* %1, %struct.lock_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %11 = getelementptr inbounds %struct.lock_file, %struct.lock_file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @trace2_region_enter_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %19 = getelementptr inbounds %struct.lock_file, %struct.lock_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @do_write_index(%struct.index_state* %17, %struct.TYPE_4__* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @the_repository, align 4
  %23 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %24 = getelementptr inbounds %struct.lock_file, %struct.lock_file* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @trace2_region_leave_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @COMMIT_LOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %41 = call i32 @commit_locked_index(%struct.lock_file* %40)
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %44 = call i32 @close_lock_file_gently(%struct.lock_file* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.index_state*, %struct.index_state** %5, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %52 = load %struct.index_state*, %struct.index_state** %5, align 8
  %53 = getelementptr inbounds %struct.index_state, %struct.index_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %58 = call i32 @run_hook_le(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %57, i32* null)
  %59 = load %struct.index_state*, %struct.index_state** %5, align 8
  %60 = getelementptr inbounds %struct.index_state, %struct.index_state* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.index_state*, %struct.index_state** %5, align 8
  %62 = getelementptr inbounds %struct.index_state, %struct.index_state* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %45, %32
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @trace2_region_enter_printf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @do_write_index(%struct.index_state*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @trace2_region_leave_printf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @commit_locked_index(%struct.lock_file*) #1

declare dso_local i32 @close_lock_file_gently(%struct.lock_file*) #1

declare dso_local i32 @run_hook_le(i32*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
