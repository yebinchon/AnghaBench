; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_print_submodule_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_print_submodule_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.rev_info = type { i32 }
%struct.diff_options = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pretty_print_context = type { i32, i32, i32 }

@print_submodule_summary.format = internal constant [8 x i8] c"  %m %s\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.rev_info*, %struct.diff_options*)* @print_submodule_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_submodule_summary(%struct.repository* %0, %struct.rev_info* %1, %struct.diff_options* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.pretty_print_context, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  store %struct.diff_options* %2, %struct.diff_options** %6, align 8
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  br label %11

11:                                               ; preds = %45, %3
  %12 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %13 = call %struct.commit* @get_revision(%struct.rev_info* %12)
  store %struct.commit* %13, %struct.commit** %8, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = bitcast %struct.pretty_print_context* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @get_log_output_encoding()
  %22 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @strbuf_setlen(%struct.strbuf* %7, i32 0)
  %24 = load %struct.repository*, %struct.repository** %4, align 8
  %25 = load %struct.commit*, %struct.commit** %8, align 8
  %26 = call i32 @repo_format_commit_message(%struct.repository* %24, %struct.commit* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @print_submodule_summary.format, i64 0, i64 0), %struct.strbuf* %7, %struct.pretty_print_context* %9)
  %27 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 10)
  %28 = load %struct.commit*, %struct.commit** %8, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @diff_emit_submodule_del(%struct.diff_options* %36, i32 %38)
  br label %45

40:                                               ; preds = %15
  %41 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @diff_emit_submodule_add(%struct.diff_options* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %11

46:                                               ; preds = %11
  %47 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_log_output_encoding(...) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @repo_format_commit_message(%struct.repository*, %struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @diff_emit_submodule_del(%struct.diff_options*, i32) #2

declare dso_local i32 @diff_emit_submodule_add(%struct.diff_options*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
