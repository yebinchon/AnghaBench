; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_remove_path_from_gitmodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_remove_path_from_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.submodule = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@GITMODULES_FILE = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"Cannot change unmerged .gitmodules, resolve merge conflicts first\00", align 1
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not find section in .gitmodules where path=%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"submodule.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not remove .gitmodules entry for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_path_from_gitmodules(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.submodule*, align 8
  store i8* %0, i8** %3, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @GITMODULES_FILE, align 4
  %8 = call i32 @file_exists(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @is_gitmodules_unmerged(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @die(i32 %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call %struct.submodule* @submodule_from_path(%struct.TYPE_3__* %21, i32* @null_oid, i8* %22)
  store %struct.submodule* %23, %struct.submodule** %5, align 8
  %24 = load %struct.submodule*, %struct.submodule** %5, align 8
  %25 = icmp ne %struct.submodule* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.submodule*, %struct.submodule** %5, align 8
  %28 = getelementptr inbounds %struct.submodule, %struct.submodule* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %20
  %32 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @warning(i32 %32, i8* %33)
  store i32 -1, i32* %2, align 4
  br label %53

35:                                               ; preds = %26
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.submodule*, %struct.submodule** %5, align 8
  %38 = getelementptr inbounds %struct.submodule, %struct.submodule* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %39)
  %41 = load i32, i32* @GITMODULES_FILE, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @git_config_rename_section_in_file(i32 %41, i32 %43, i32* null)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @warning(i32 %47, i8* %48)
  %50 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 -1, i32* %2, align 4
  br label %53

51:                                               ; preds = %35
  %52 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %46, %31, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @file_exists(i32) #2

declare dso_local i64 @is_gitmodules_unmerged(i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.submodule* @submodule_from_path(%struct.TYPE_3__*, i32*, i8*) #2

declare dso_local i32 @warning(i32, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @git_config_rename_section_in_file(i32, i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
