; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_repo_refresh_and_write_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_repo_refresh_and_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }
%struct.pathspec = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_refresh_and_write_index(%struct.repository* %0, i32 %1, i32 %2, i32 %3, %struct.pathspec* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pathspec*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.lock_file, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.pathspec* %4, %struct.pathspec** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = bitcast %struct.lock_file* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %18, align 4
  %20 = load %struct.repository*, %struct.repository** %9, align 8
  %21 = call i32 @repo_hold_locked_index(%struct.repository* %20, %struct.lock_file* %16, i32 0)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %54

28:                                               ; preds = %24, %7
  %29 = load %struct.repository*, %struct.repository** %9, align 8
  %30 = getelementptr inbounds %struct.repository, %struct.repository* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.pathspec*, %struct.pathspec** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i64 @refresh_index(i32 %31, i32 %32, %struct.pathspec* %33, i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %18, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %17, align 4
  %41 = icmp sle i32 0, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.repository*, %struct.repository** %9, align 8
  %44 = getelementptr inbounds %struct.repository, %struct.repository* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @COMMIT_LOCK, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @write_locked_index(i32 %45, %struct.lock_file* %16, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -1, i32* %18, align 4
  br label %52

52:                                               ; preds = %51, %42, %39
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %27
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i64 @refresh_index(i32, i32, %struct.pathspec*, i8*, i8*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
