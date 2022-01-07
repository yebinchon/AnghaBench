; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_repo_format_commit_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_repo_format_commit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.pretty_print_context = type { i8* }
%struct.format_commit_context = type { i8*, i32, i32, %struct.pretty_print_context*, %struct.commit* }

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@format_commit_item = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_format_commit_message(%struct.repository* %0, %struct.commit* %1, i8* %2, %struct.strbuf* %3, %struct.pretty_print_context* %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.pretty_print_context*, align 8
  %11 = alloca %struct.format_commit_context, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  store %struct.pretty_print_context* %4, %struct.pretty_print_context** %10, align 8
  %16 = load %struct.pretty_print_context*, %struct.pretty_print_context** %10, align 8
  %17 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %19 = call i32 @memset(%struct.format_commit_context* %11, i32 0, i32 32)
  %20 = load %struct.commit*, %struct.commit** %7, align 8
  %21 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 4
  store %struct.commit* %20, %struct.commit** %21, align 8
  %22 = load %struct.pretty_print_context*, %struct.pretty_print_context** %10, align 8
  %23 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 3
  store %struct.pretty_print_context* %22, %struct.pretty_print_context** %23, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.repository*, %struct.repository** %6, align 8
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @repo_logmsg_reencode(%struct.repository* %28, %struct.commit* %29, i8** %30, i8* %31)
  %33 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @format_commit_item, align 4
  %37 = call i32 @strbuf_expand(%struct.strbuf* %34, i8* %35, i32 %36, %struct.format_commit_context* %11)
  %38 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %39 = call i32 @rewrap_message_tail(%struct.strbuf* %38, %struct.format_commit_context* %11, i32 0, i32 0, i32 0)
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @same_encoding(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* null, i8** %12, align 8
  br label %48

48:                                               ; preds = %47, %42
  br label %63

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @same_encoding(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %59, %53, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @reencode_string_len(i32 %69, i32 %72, i8* %73, i8* %74, i64* %14)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %82, 1
  %84 = call i32 @strbuf_attach(%struct.strbuf* %79, i8* %80, i64 %81, i64 %83)
  br label %85

85:                                               ; preds = %78, %66
  br label %86

86:                                               ; preds = %85, %63
  %87 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load %struct.repository*, %struct.repository** %6, align 8
  %91 = load %struct.commit*, %struct.commit** %7, align 8
  %92 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @repo_unuse_commit_buffer(%struct.repository* %90, %struct.commit* %91, i32 %93)
  ret void
}

declare dso_local i32 @memset(%struct.format_commit_context*, i32, i32) #1

declare dso_local i32 @repo_logmsg_reencode(%struct.repository*, %struct.commit*, i8**, i8*) #1

declare dso_local i32 @strbuf_expand(%struct.strbuf*, i8*, i32, %struct.format_commit_context*) #1

declare dso_local i32 @rewrap_message_tail(%struct.strbuf*, %struct.format_commit_context*, i32, i32, i32) #1

declare dso_local i64 @same_encoding(i8*, i8*) #1

declare dso_local i8* @reencode_string_len(i32, i32, i8*, i8*, i64*) #1

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @repo_unuse_commit_buffer(%struct.repository*, %struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
