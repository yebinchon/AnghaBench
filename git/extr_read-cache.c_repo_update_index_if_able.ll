; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_repo_update_index_if_able.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_repo_update_index_if_able.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.lock_file = type { i32 }

@COMMIT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_update_index_if_able(%struct.repository* %0, %struct.lock_file* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.lock_file*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.lock_file* %1, %struct.lock_file** %4, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = getelementptr inbounds %struct.repository, %struct.repository* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.repository*, %struct.repository** %3, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i64 @has_racy_timestamp(%struct.TYPE_3__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11, %2
  %18 = load %struct.repository*, %struct.repository** %3, align 8
  %19 = call i64 @repo_verify_index(%struct.repository* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.repository*, %struct.repository** %3, align 8
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.lock_file*, %struct.lock_file** %4, align 8
  %26 = load i32, i32* @COMMIT_LOCK, align 4
  %27 = call i32 @write_locked_index(%struct.TYPE_3__* %24, %struct.lock_file* %25, i32 %26)
  br label %31

28:                                               ; preds = %17, %11
  %29 = load %struct.lock_file*, %struct.lock_file** %4, align 8
  %30 = call i32 @rollback_lock_file(%struct.lock_file* %29)
  br label %31

31:                                               ; preds = %28, %21
  ret void
}

declare dso_local i64 @has_racy_timestamp(%struct.TYPE_3__*) #1

declare dso_local i64 @repo_verify_index(%struct.repository*) #1

declare dso_local i32 @write_locked_index(%struct.TYPE_3__*, %struct.lock_file*, i32) #1

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
