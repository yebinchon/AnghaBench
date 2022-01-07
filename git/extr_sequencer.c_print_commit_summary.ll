; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_print_commit_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_print_commit_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.rev_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.commit = type { i32 }
%struct.pretty_print_context = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"couldn't look up newly created commit\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not parse newly created commit\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"format:%h] %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%an <%ae>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%cn <%ce>\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A Author: \00", align 1
@SUMMARY_SHOW_AUTHOR_DATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%ad\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A Date: \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0A Committer: \00", align 1
@advice_implicit_identity = common dso_local global i64 0, align 8
@DIFF_FORMAT_SHORTSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_SUMMARY = common dso_local global i32 0, align 4
@DIFF_DETECT_RENAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"unable to resolve HEAD after creating commit\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"[%s%s \00", align 1
@SUMMARY_INITIAL_COMMIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c" (root-commit)\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_commit_summary(%struct.repository* %0, i8* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rev_info, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pretty_print_context, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca %struct.strbuf, align 4
  %16 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.pretty_print_context* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = load %struct.repository*, %struct.repository** %5, align 8
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = call %struct.commit* @lookup_commit(%struct.repository* %21, %struct.object_id* %22)
  store %struct.commit* %23, %struct.commit** %10, align 8
  %24 = load %struct.commit*, %struct.commit** %10, align 8
  %25 = icmp ne %struct.commit* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @die(i8* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.commit*, %struct.commit** %10, align 8
  %31 = call i64 @parse_commit(%struct.commit* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @die(i8* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.commit*, %struct.commit** %10, align 8
  %39 = call i32 @format_commit_message(%struct.commit* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.strbuf* %14, %struct.pretty_print_context* %13)
  %40 = load %struct.commit*, %struct.commit** %10, align 8
  %41 = call i32 @format_commit_message(%struct.commit* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.strbuf* %15, %struct.pretty_print_context* %13)
  %42 = call i64 @strbuf_cmp(%struct.strbuf* %14, %struct.strbuf* %15)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i32 @strbuf_addbuf_percentquote(%struct.strbuf* %11, %struct.strbuf* %14)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SUMMARY_SHOW_AUTHOR_DATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %54 = load %struct.commit*, %struct.commit** %10, align 8
  %55 = call i32 @format_commit_message(%struct.commit* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.strbuf* %16, %struct.pretty_print_context* %13)
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 @strbuf_addbuf_percentquote(%struct.strbuf* %11, %struct.strbuf* %16)
  %58 = call i32 @strbuf_release(%struct.strbuf* %16)
  br label %59

59:                                               ; preds = %52, %47
  %60 = call i32 (...) @committer_ident_sufficiently_given()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @strbuf_addbuf_percentquote(%struct.strbuf* %11, %struct.strbuf* %15)
  %65 = load i64, i64* @advice_implicit_identity, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 10)
  %69 = call i8* (...) @implicit_ident_advice()
  %70 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %69)
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %59
  %73 = call i32 @strbuf_release(%struct.strbuf* %14)
  %74 = call i32 @strbuf_release(%struct.strbuf* %15)
  %75 = load %struct.repository*, %struct.repository** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @repo_init_revisions(%struct.repository* %75, %struct.rev_info* %9, i8* %76)
  %78 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %9, i32* null)
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @DIFF_FORMAT_SHORTSTAT, align 4
  %81 = load i32, i32* @DIFF_FORMAT_SUMMARY, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @get_commit_format(i32 %88, %struct.rev_info* %9)
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* @DIFF_DETECT_RENAME, align 4
  %92 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 5
  %97 = call i32 @diff_setup_done(%struct.TYPE_2__* %96)
  %98 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %72
  %102 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %103 = call i32 @die_errno(i8* %102)
  br label %104

104:                                              ; preds = %101, %72
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i8* %109, i8** %12, align 8
  br label %113

110:                                              ; preds = %104
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @skip_prefix(i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %12)
  br label %113

113:                                              ; preds = %110, %108
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @SUMMARY_INITIAL_COMMIT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %122

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %121 ]
  %124 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %114, i8* %123)
  %125 = load %struct.commit*, %struct.commit** %10, align 8
  %126 = call i32 @log_tree_commit(%struct.rev_info* %9, %struct.commit* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 3
  store i32 1, i32* %129, align 4
  %130 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 4
  store i32 1, i32* %130, align 8
  %131 = load %struct.commit*, %struct.commit** %10, align 8
  %132 = call i32 @log_tree_commit(%struct.rev_info* %9, %struct.commit* %131)
  br label %133

133:                                              ; preds = %128, %122
  %134 = call i32 @strbuf_release(%struct.strbuf* %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, %struct.object_id*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @parse_commit(%struct.commit*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i64 @strbuf_cmp(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addbuf_percentquote(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @committer_ident_sufficiently_given(...) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i8* @implicit_ident_advice(...) #2

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i8*) #2

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #2

declare dso_local i32 @get_commit_format(i32, %struct.rev_info*) #2

declare dso_local i32 @diff_setup_done(%struct.TYPE_2__*) #2

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @log_tree_commit(%struct.rev_info*, %struct.commit*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
