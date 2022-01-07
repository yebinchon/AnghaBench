; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_update_path_in_gitmodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_update_path_in_gitmodules.c"
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
@.str.3 = private unnamed_addr constant [6 x i8] c".path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_path_in_gitmodules(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.submodule*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load i32, i32* @GITMODULES_FILE, align 4
  %11 = call i32 @file_exists(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_gitmodules_unmerged(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.submodule* @submodule_from_path(%struct.TYPE_3__* %24, i32* @null_oid, i8* %25)
  store %struct.submodule* %26, %struct.submodule** %7, align 8
  %27 = load %struct.submodule*, %struct.submodule** %7, align 8
  %28 = icmp ne %struct.submodule* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.submodule*, %struct.submodule** %7, align 8
  %31 = getelementptr inbounds %struct.submodule, %struct.submodule* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %23
  %35 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @warning(i32 %35, i8* %36)
  store i32 -1, i32* %3, align 4
  br label %51

38:                                               ; preds = %29
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.submodule*, %struct.submodule** %7, align 8
  %41 = getelementptr inbounds %struct.submodule, %struct.submodule* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %42)
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @config_set_in_gitmodules_file_gently(i32 %46, i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = call i32 @strbuf_release(%struct.strbuf* %6)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %34, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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

declare dso_local i32 @config_set_in_gitmodules_file_gently(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
