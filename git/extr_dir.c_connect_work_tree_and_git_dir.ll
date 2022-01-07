; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_connect_work_tree_and_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_connect_work_tree_and_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not create directories for %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/config\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gitdir: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connect_work_tree_and_git_dir(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @safe_create_leading_directories_const(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @die(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @safe_create_leading_directories_const(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @die(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @real_pathdup(i8* %39, i32 1)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i8* @real_pathdup(i8* %41, i32 1)
  store i8* %42, i8** %11, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @relative_path(i8* %45, i8* %46, %struct.strbuf* %9)
  %48 = call i32 @write_file(i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @relative_path(i8* %51, i8* %52, %struct.strbuf* %9)
  %54 = call i32 @git_config_set_in_file(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = call i32 @strbuf_release(%struct.strbuf* %7)
  %56 = call i32 @strbuf_release(%struct.strbuf* %8)
  %57 = call i32 @strbuf_release(%struct.strbuf* %9)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @connect_wt_gitdir_in_nested(i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %60, %38
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @free(i8* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @safe_create_leading_directories_const(i32) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @real_pathdup(i8*, i32) #2

declare dso_local i32 @write_file(i32, i8*, i32) #2

declare dso_local i32 @relative_path(i8*, i8*, %struct.strbuf*) #2

declare dso_local i32 @git_config_set_in_file(i32, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @connect_wt_gitdir_in_nested(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
