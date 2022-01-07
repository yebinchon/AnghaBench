; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_next_reflog_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_next_reflog_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_reflog = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.reflog_info* }
%struct.reflog_info = type { i32 }
%struct.object = type { i64 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.commit_reflog*)* @next_reflog_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @next_reflog_commit(%struct.commit_reflog* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit_reflog*, align 8
  %4 = alloca %struct.reflog_info*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.commit_reflog* %0, %struct.commit_reflog** %3, align 8
  br label %6

6:                                                ; preds = %37, %1
  %7 = load %struct.commit_reflog*, %struct.commit_reflog** %3, align 8
  %8 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load %struct.commit_reflog*, %struct.commit_reflog** %3, align 8
  %13 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.reflog_info*, %struct.reflog_info** %15, align 8
  %17 = load %struct.commit_reflog*, %struct.commit_reflog** %3, align 8
  %18 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %16, i64 %19
  store %struct.reflog_info* %20, %struct.reflog_info** %4, align 8
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.reflog_info*, %struct.reflog_info** %4, align 8
  %23 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %22, i32 0, i32 0
  %24 = call %struct.object* @parse_object(i32 %21, i32* %23)
  store %struct.object* %24, %struct.object** %5, align 8
  %25 = load %struct.object*, %struct.object** %5, align 8
  %26 = icmp ne %struct.object* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load %struct.object*, %struct.object** %5, align 8
  %29 = getelementptr inbounds %struct.object, %struct.object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBJ_COMMIT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.object*, %struct.object** %5, align 8
  %35 = bitcast %struct.object* %34 to %struct.commit*
  store %struct.commit* %35, %struct.commit** %2, align 8
  br label %43

36:                                               ; preds = %27, %11
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.commit_reflog*, %struct.commit_reflog** %3, align 8
  %39 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %6

42:                                               ; preds = %6
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %44
}

declare dso_local %struct.object* @parse_object(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
