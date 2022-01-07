; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_check_repository_format_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_check_repository_format_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository_format = type { i64, i32, i64, i32, i64, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"/config\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@repository_format_precious_objects = common dso_local global i32 0, align 4
@repository_format_worktree_config = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%s/config.worktree\00", align 1
@read_worktree_config = common dso_local global i32 0, align 4
@is_bare_repository_cfg = common dso_local global i32 0, align 4
@inside_work_tree = common dso_local global i32 0, align 4
@git_work_tree_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.repository_format*, i32*)* @check_repository_format_gently to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_repository_format_gently(i8* %0, %struct.repository_format* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.repository_format*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.repository_format* %1, %struct.repository_format** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @get_common_dir(%struct.strbuf* %8, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @read_repository_format(%struct.repository_format* %16, i32 %18)
  %20 = call i32 @strbuf_release(%struct.strbuf* %8)
  %21 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %22 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %28 = call i64 @verify_repository_format(%struct.repository_format* %27, %struct.strbuf* %9)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @strbuf_release(%struct.strbuf* %9)
  %38 = load i32*, i32** %7, align 8
  store i32 -1, i32* %38, align 4
  store i32 -1, i32* %4, align 4
  br label %98

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %26
  %44 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %45 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @repository_format_precious_objects, align 4
  %47 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %48 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @set_repository_format_partial_clone(i32 %49)
  %51 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %52 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* @repository_format_worktree_config, align 8
  %54 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %55 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %54, i32 0, i32 3
  %56 = call i32 @string_list_clear(i32* %55, i32 0)
  %57 = load i64, i64* @repository_format_worktree_config, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %43
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @read_worktree_config, align 4
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %66 = call i32 @git_config_from_file(i32 %62, i32 %64, %struct.repository_format* %65)
  %67 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %59, %43
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %68
  %72 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %73 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %78 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* @is_bare_repository_cfg, align 4
  %80 = load i32, i32* @is_bare_repository_cfg, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 -1, i32* @inside_work_tree, align 4
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %86 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @git_work_tree_cfg, align 4
  %91 = call i32 @free(i32 %90)
  %92 = load %struct.repository_format*, %struct.repository_format** %6, align 8
  %93 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @xstrdup(i64 %94)
  store i32 %95, i32* @git_work_tree_cfg, align 4
  store i32 -1, i32* @inside_work_tree, align 4
  br label %96

96:                                               ; preds = %89, %84
  br label %97

97:                                               ; preds = %96, %68
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %33, %25
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_common_dir(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @read_repository_format(%struct.repository_format*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @verify_repository_format(%struct.repository_format*, %struct.strbuf*) #2

declare dso_local i32 @warning(i8*, i32) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @set_repository_format_partial_clone(i32) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @git_config_from_file(i32, i32, %struct.repository_format*) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @xstrdup(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
