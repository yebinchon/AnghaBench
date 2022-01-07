; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_make_script.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_make_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32 }
%struct.pretty_print_context = type { i32, i32, i32 }
%struct.rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TODO_LIST_KEEP_EMPTY = common dso_local global i32 0, align 4
@TODO_LIST_ABBREVIATE_CMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pick\00", align 1
@TODO_LIST_REBASE_MERGES = common dso_local global i32 0, align 4
@REV_SORT_IN_GRAPH_ORDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"rebase.instructionFormat\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"make_script: unhandled options\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"make_script: error preparing revisions\00", align 1
@PATCHSAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@comment_line_char = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_make_script(%struct.repository* %0, %struct.strbuf* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pretty_print_context, align 4
  %14 = alloca %struct.rev_info, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %20 = bitcast %struct.pretty_print_context* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @TODO_LIST_KEEP_EMPTY, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @TODO_LIST_ABBREVIATE_CMDS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %29, i8** %17, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @TODO_LIST_REBASE_MERGES, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load %struct.repository*, %struct.repository** %7, align 8
  %34 = call i32 @repo_init_revisions(%struct.repository* %33, %struct.rev_info* %14, i32* null)
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %5
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 3
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 5
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @REV_SORT_IN_GRAPH_ORDER, align 4
  %46 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 9
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 6
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 7
  store i32 1, i32* %48, align 4
  %49 = call i32 @git_config_get_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %12)
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %40
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @free(i8* %57)
  %59 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @get_commit_format(i8* %61, %struct.rev_info* %14)
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @free(i8* %63)
  %65 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %13, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = call i32 (...) @get_log_output_encoding()
  %69 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %13, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i8**, i8*** %10, align 8
  %72 = call i32 @setup_revisions(i32 %70, i8** %71, %struct.rev_info* %14, i32* null)
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 @error(i32 %75)
  store i32 %76, i32* %6, align 4
  br label %134

77:                                               ; preds = %60
  %78 = call i64 @prepare_revision_walk(%struct.rev_info* %14)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %82 = call i32 @error(i32 %81)
  store i32 %82, i32* %6, align 4
  br label %134

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @make_script_with_merges(%struct.pretty_print_context* %13, %struct.rev_info* %14, %struct.strbuf* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  br label %134

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %120, %107, %90
  %92 = call %struct.commit* @get_revision(%struct.rev_info* %14)
  store %struct.commit* %92, %struct.commit** %15, align 8
  %93 = icmp ne %struct.commit* %92, null
  br i1 %93, label %94, label %133

94:                                               ; preds = %91
  %95 = load %struct.commit*, %struct.commit** %15, align 8
  %96 = call i32 @is_original_commit_empty(%struct.commit* %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load %struct.commit*, %struct.commit** %15, align 8
  %101 = getelementptr inbounds %struct.commit, %struct.commit* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PATCHSAME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %91

108:                                              ; preds = %99, %94
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %116 = load i32, i32* @comment_line_char, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %114, %111, %108
  %121 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load %struct.commit*, %struct.commit** %15, align 8
  %124 = getelementptr inbounds %struct.commit, %struct.commit* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = call i32 @oid_to_hex(i32* %125)
  %127 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %122, i32 %126)
  %128 = load %struct.commit*, %struct.commit** %15, align 8
  %129 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %130 = call i32 @pretty_print_commit(%struct.pretty_print_context* %13, %struct.commit* %128, %struct.strbuf* %129)
  %131 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %132 = call i32 @strbuf_addch(%struct.strbuf* %131, i8 signext 10)
  br label %91

133:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %86, %80, %74
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #2

declare dso_local i32 @git_config_get_string(i8*, i8**) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @get_commit_format(i8*, %struct.rev_info*) #2

declare dso_local i32 @get_log_output_encoding(...) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #2

declare dso_local i32 @make_script_with_merges(%struct.pretty_print_context*, %struct.rev_info*, %struct.strbuf*, i32) #2

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i32 @is_original_commit_empty(%struct.commit*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @pretty_print_commit(%struct.pretty_print_context*, %struct.commit*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
