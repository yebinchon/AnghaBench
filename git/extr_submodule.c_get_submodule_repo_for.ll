; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_get_submodule_repo_for.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_get_submodule_repo_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.submodule = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.repository* (%struct.repository*, %struct.submodule*)* @get_submodule_repo_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.repository* @get_submodule_repo_for(%struct.repository* %0, %struct.submodule* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.submodule*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.submodule* %1, %struct.submodule** %5, align 8
  %8 = call %struct.repository* @xmalloc(i32 4)
  store %struct.repository* %8, %struct.repository** %6, align 8
  %9 = load %struct.repository*, %struct.repository** %6, align 8
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = load %struct.submodule*, %struct.submodule** %5, align 8
  %12 = call i64 @repo_submodule_init(%struct.repository* %9, %struct.repository* %10, %struct.submodule* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.repository*, %struct.repository** %4, align 8
  %17 = load %struct.submodule*, %struct.submodule** %5, align 8
  %18 = getelementptr inbounds %struct.submodule, %struct.submodule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strbuf_repo_worktree_path(%struct.strbuf* %7, %struct.repository* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.repository*, %struct.repository** %6, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @repo_init(%struct.repository* %21, i32 %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = call i32 @strbuf_release(%struct.strbuf* %7)
  %28 = load %struct.repository*, %struct.repository** %6, align 8
  %29 = call i32 @free(%struct.repository* %28)
  store %struct.repository* null, %struct.repository** %3, align 8
  br label %34

30:                                               ; preds = %14
  %31 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.repository*, %struct.repository** %6, align 8
  store %struct.repository* %33, %struct.repository** %3, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.repository*, %struct.repository** %3, align 8
  ret %struct.repository* %35
}

declare dso_local %struct.repository* @xmalloc(i32) #1

declare dso_local i64 @repo_submodule_init(%struct.repository*, %struct.repository*, %struct.submodule*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_repo_worktree_path(%struct.strbuf*, %struct.repository*, i8*, i32) #1

declare dso_local i64 @repo_init(%struct.repository*, i32, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
