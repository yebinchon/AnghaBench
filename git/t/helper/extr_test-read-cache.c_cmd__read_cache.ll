; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-read-cache.c_cmd__read_cache.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-read-cache.c_cmd__read_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"--print-and-refresh=\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@the_index = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@REFRESH_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s not in index\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s is%s up to date\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__read_cache(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @skip_prefix(i8* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %4, align 8
  br label %22

22:                                               ; preds = %17, %11, %2
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strtol(i8* %28, i32* null, i32 0)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = call i32 (...) @setup_git_directory()
  %32 = load i32, i32* @git_default_config, align 4
  %33 = call i32 @git_config(i32 %32, i32* null)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %71, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = call i32 (...) @read_cache()
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i32, i32* @REFRESH_QUIET, align 4
  %44 = call i32 @refresh_index(%struct.TYPE_4__* @the_index, i32 %43, i32* null, i32* null, i32* null)
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @index_name_pos(%struct.TYPE_4__* @the_index, i8* %45, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @the_index, i32 0, i32 0), align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ce_uptodate(i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %65 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @write_file(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %54, %38
  %70 = call i32 (...) @discard_cache()
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %34

74:                                               ; preds = %34
  ret i32 0
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @read_cache(...) #1

declare dso_local i32 @refresh_index(%struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @index_name_pos(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @ce_uptodate(i32) #1

declare dso_local i32 @write_file(i8*, i8*, i32) #1

declare dso_local i32 @discard_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
