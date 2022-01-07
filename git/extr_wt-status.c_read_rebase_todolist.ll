; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_read_rebase_todolist.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_read_rebase_todolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64*, i64 }
%struct.string_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not open file %s for reading\00", align 1
@comment_line_char = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.string_list*)* @read_rebase_todolist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rebase_todolist(i8* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @git_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call i32* @fopen(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %57

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @git_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @die_errno(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  br label %24

24:                                               ; preds = %47, %46, %40, %23
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @strbuf_getline_lf(%struct.strbuf* %6, i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @comment_line_char, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %24

41:                                               ; preds = %33, %29
  %42 = call i32 @strbuf_trim(%struct.strbuf* %6)
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %24

47:                                               ; preds = %41
  %48 = call i32 @abbrev_sha1_in_line(%struct.strbuf* %6)
  %49 = load %struct.string_list*, %struct.string_list** %5, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @string_list_append(%struct.string_list* %49, i64* %51)
  br label %24

53:                                               ; preds = %24
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @git_path(i8*, i8*) #2

declare dso_local i32 @die_errno(i8*, i32) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @abbrev_sha1_in_line(%struct.strbuf*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i64*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
