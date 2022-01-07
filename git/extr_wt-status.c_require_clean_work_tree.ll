; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_require_clean_work_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_require_clean_work_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot %s: You have unstaged changes.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"additionally, your index contains uncommitted changes.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"cannot %s: Your index contains uncommitted changes.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @require_clean_work_tree(%struct.repository* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lock_file, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = bitcast %struct.lock_file* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load %struct.repository*, %struct.repository** %6, align 8
  %16 = call i32 @repo_hold_locked_index(%struct.repository* %15, %struct.lock_file* %11, i32 0)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.repository*, %struct.repository** %6, align 8
  %18 = getelementptr inbounds %struct.repository, %struct.repository* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REFRESH_QUIET, align 4
  %21 = call i32 @refresh_index(i32 %19, i32 %20, i32* null, i32* null, i32* null)
  %22 = load i32, i32* %13, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.repository*, %struct.repository** %6, align 8
  %26 = call i32 @repo_update_index_if_able(%struct.repository* %25, %struct.lock_file* %11)
  br label %27

27:                                               ; preds = %24, %5
  %28 = call i32 @rollback_lock_file(%struct.lock_file* %11)
  %29 = load %struct.repository*, %struct.repository** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @has_unstaged_changes(%struct.repository* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @_(i8* %35)
  %37 = call i32 (i8*, ...) @error(i8* %34, i8* %36)
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.repository*, %struct.repository** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @has_uncommitted_changes(%struct.repository* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @error(i8* %47)
  br label %54

49:                                               ; preds = %43
  %50 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @_(i8* %51)
  %53 = call i32 (i8*, ...) @error(i8* %50, i8* %52)
  br label %54

54:                                               ; preds = %49, %46
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 @exit(i32 128) #4
  unreachable

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* %12, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i32 @refresh_index(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @repo_update_index_if_able(%struct.repository*, %struct.lock_file*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @has_unstaged_changes(%struct.repository*, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @has_uncommitted_changes(%struct.repository*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
