; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_output_commit_title.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_output_commit_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.merge_remote_desc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"virtual %s\0A\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"(bad commit)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*, %struct.commit*)* @output_commit_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_commit_title(%struct.merge_options* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.merge_options*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.merge_remote_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %9 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %10 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %9, i32 0, i32 0
  %11 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %12 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = call i32 @strbuf_addchars(i32* %10, i8 signext 32, i32 %16)
  %18 = load %struct.commit*, %struct.commit** %4, align 8
  %19 = call %struct.merge_remote_desc* @merge_remote_util(%struct.commit* %18)
  store %struct.merge_remote_desc* %19, %struct.merge_remote_desc** %5, align 8
  %20 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %5, align 8
  %21 = icmp ne %struct.merge_remote_desc* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %24 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %23, i32 0, i32 0
  %25 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %5, align 8
  %26 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @strbuf_addf(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %66

29:                                               ; preds = %2
  %30 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %31 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %30, i32 0, i32 0
  %32 = load %struct.commit*, %struct.commit** %4, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* @DEFAULT_ABBREV, align 4
  %36 = call i32 @strbuf_add_unique_abbrev(i32* %31, i32* %34, i32 %35)
  %37 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %38 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %37, i32 0, i32 0
  %39 = call i32 @strbuf_addch(i32* %38, i8 signext 32)
  %40 = load %struct.commit*, %struct.commit** %4, align 8
  %41 = call i64 @parse_commit(%struct.commit* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %45 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %44, i32 0, i32 0
  %46 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @strbuf_addstr(i32* %45, i32 %46)
  br label %65

48:                                               ; preds = %29
  %49 = load %struct.commit*, %struct.commit** %4, align 8
  %50 = call i8* @get_commit_buffer(%struct.commit* %49, i32* null)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @find_commit_subject(i8* %51, i8** %6)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %57 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i32*, i8*, i32, ...) @strbuf_addf(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.commit*, %struct.commit** %4, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @unuse_commit_buffer(%struct.commit* %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %43
  br label %66

66:                                               ; preds = %65, %22
  %67 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %68 = call i32 @flush_output(%struct.merge_options* %67)
  ret void
}

declare dso_local i32 @strbuf_addchars(i32*, i8 signext, i32) #1

declare dso_local %struct.merge_remote_desc* @merge_remote_util(%struct.commit*) #1

declare dso_local i32 @strbuf_addf(i32*, i8*, i32, ...) #1

declare dso_local i32 @strbuf_add_unique_abbrev(i32*, i32*, i32) #1

declare dso_local i32 @strbuf_addch(i32*, i8 signext) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @strbuf_addstr(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i32 @find_commit_subject(i8*, i8**) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

declare dso_local i32 @flush_output(%struct.merge_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
