; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_prune_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_prune_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i32, i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@SEEN_ONLY = common dso_local global i32 0, align 4
@PRUNE_QUICK = common dso_local global i32 0, align 4
@QUICK = common dso_local global i32 0, align 4
@PRUNE_SHOW_ONLY = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prune_shallow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lock_file, align 4
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.lock_file* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %9 = load i32, i32* @SEEN_ONLY, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PRUNE_QUICK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @QUICK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PRUNE_SHOW_ONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @VERBOSE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @write_shallow_commits_1(%struct.strbuf* %4, i32 0, i32* null, i32 %27)
  %29 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %60

30:                                               ; preds = %18
  %31 = load i32, i32* @the_repository, align 4
  %32 = call i32 @git_path_shallow(i32 %31)
  %33 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %34 = call i32 @hold_lock_file_for_update(%struct.lock_file* %3, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @the_repository, align 4
  %36 = call i32 @check_shallow_file_for_update(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @write_shallow_commits_1(%struct.strbuf* %4, i32 0, i32* null, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @write_in_full(i32 %41, i32 %43, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 @get_lock_file_path(%struct.lock_file* %3)
  %50 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = call i32 @commit_lock_file(%struct.lock_file* %3)
  br label %58

53:                                               ; preds = %30
  %54 = load i32, i32* @the_repository, align 4
  %55 = call i32 @git_path_shallow(i32 %54)
  %56 = call i32 @unlink(i32 %55)
  %57 = call i32 @rollback_lock_file(%struct.lock_file* %3)
  br label %58

58:                                               ; preds = %53, %51
  %59 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %60

60:                                               ; preds = %58, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @write_shallow_commits_1(%struct.strbuf*, i32, i32*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i32, i32) #2

declare dso_local i32 @git_path_shallow(i32) #2

declare dso_local i32 @check_shallow_file_for_update(i32) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @die_errno(i8*, i32) #2

declare dso_local i32 @get_lock_file_path(%struct.lock_file*) #2

declare dso_local i32 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
