; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_read_revisions_from_stdin.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_read_revisions_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.argv_array = type { i32 }
%struct.strbuf = type { i32, i8* }

@warn_on_object_refname_ambiguity = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"options not supported in --stdin mode\00", align 1
@REVARG_CANNOT_BE_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"bad revision '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.argv_array*)* @read_revisions_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_revisions_from_stdin(%struct.rev_info* %0, %struct.argv_array* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.argv_array*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.argv_array* %1, %struct.argv_array** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @warn_on_object_refname_ambiguity, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* @warn_on_object_refname_ambiguity, align 4
  %10 = call i32 @strbuf_init(%struct.strbuf* %5, i32 1000)
  br label %11

11:                                               ; preds = %53, %2
  %12 = load i32, i32* @stdin, align 4
  %13 = call i64 @strbuf_getline(%struct.strbuf* %5, i32 %12)
  %14 = load i64, i64* @EOF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %54

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %54

40:                                               ; preds = %32, %29
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %22
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %46 = load i32, i32* @REVARG_CANNOT_BE_FILENAME, align 4
  %47 = call i64 @handle_revision_arg(i8* %44, %struct.rev_info* %45, i32 0, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %11

54:                                               ; preds = %39, %21, %11
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %59 = call i32 @read_pathspec_from_stdin(%struct.strbuf* %5, %struct.argv_array* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = call i32 @strbuf_release(%struct.strbuf* %5)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* @warn_on_object_refname_ambiguity, align 4
  ret void
}

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @handle_revision_arg(i8*, %struct.rev_info*, i32, i32) #1

declare dso_local i32 @read_pathspec_from_stdin(%struct.strbuf*, %struct.argv_array*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
