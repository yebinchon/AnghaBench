; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_and_refresh_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_and_refresh_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"git %s: failed to read the index\00", align 1
@REFRESH_QUIET = common dso_local global i32 0, align 4
@REFRESH_UNMERGED = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"git %s: failed to refresh the index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.replay_opts*)* @read_and_refresh_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_and_refresh_cache(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca %struct.lock_file, align 4
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %8 = bitcast %struct.lock_file* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = call i32 @repo_hold_locked_index(%struct.repository* %9, %struct.lock_file* %6, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = call i64 @repo_read_index(%struct.repository* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = call i32 @rollback_lock_file(%struct.lock_file* %6)
  %16 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %18 = call i8* @action_name(%struct.replay_opts* %17)
  %19 = call i32 @_(i8* %18)
  %20 = call i32 @error(i32 %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.repository*, %struct.repository** %4, align 8
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REFRESH_QUIET, align 4
  %26 = load i32, i32* @REFRESH_UNMERGED, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @refresh_index(i32 %24, i32 %27, i32* null, i32* null, i32* null)
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.repository*, %struct.repository** %4, align 8
  %33 = getelementptr inbounds %struct.repository, %struct.repository* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @COMMIT_LOCK, align 4
  %36 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @write_locked_index(i32 %34, %struct.lock_file* %6, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %43 = call i8* @action_name(%struct.replay_opts* %42)
  %44 = call i32 @_(i8* %43)
  %45 = call i32 @error(i32 %41, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %21
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @action_name(%struct.replay_opts*) #2

declare dso_local i32 @refresh_index(i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
