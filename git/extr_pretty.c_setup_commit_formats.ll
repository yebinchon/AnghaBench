; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_setup_commit_formats.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_setup_commit_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmt_fmt_map = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@CMIT_FMT_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@CMIT_FMT_MEDIUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@CMIT_FMT_SHORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@CMIT_FMT_EMAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"mboxrd\00", align 1
@CMIT_FMT_MBOXRD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"fuller\00", align 1
@CMIT_FMT_FULLER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@CMIT_FMT_FULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"oneline\00", align 1
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4
@commit_formats_len = common dso_local global i32 0, align 4
@builtin_formats_len = common dso_local global i32 0, align 4
@commit_formats = common dso_local global i32 0, align 4
@commit_formats_alloc = common dso_local global i32 0, align 4
@git_pretty_formats_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_commit_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_commit_formats() #0 {
  %1 = alloca [8 x %struct.cmt_fmt_map], align 16
  %2 = getelementptr inbounds [8 x %struct.cmt_fmt_map], [8 x %struct.cmt_fmt_map]* %1, i64 0, i64 0
  %3 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %2, i32 0, i32 1
  %5 = load i32, i32* @CMIT_FMT_RAW, align 4
  store i32 %5, i32* %4, align 8
  %6 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %2, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %2, i32 0, i32 3
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %2, i64 1
  %9 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %8, i32 0, i32 1
  %11 = load i32, i32* @CMIT_FMT_MEDIUM, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %8, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %8, i32 0, i32 3
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %8, i64 1
  %15 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %14, i32 0, i32 1
  %17 = load i32, i32* @CMIT_FMT_SHORT, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %14, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %14, i32 0, i32 3
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %14, i64 1
  %21 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %20, i32 0, i32 1
  %23 = load i32, i32* @CMIT_FMT_EMAIL, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %20, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %20, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %20, i64 1
  %27 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i32 0, i32 1
  %29 = load i32, i32* @CMIT_FMT_MBOXRD, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %26, i64 1
  %33 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %32, i32 0, i32 1
  %35 = load i32, i32* @CMIT_FMT_FULLER, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %32, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %32, i32 0, i32 3
  store i32 8, i32* %37, align 8
  %38 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %32, i64 1
  %39 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %38, i32 0, i32 1
  %41 = load i32, i32* @CMIT_FMT_FULL, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %38, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %38, i32 0, i32 3
  store i32 8, i32* %43, align 8
  %44 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %38, i64 1
  %45 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %44, i32 0, i32 1
  %47 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %44, i32 0, i32 2
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %44, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds [8 x %struct.cmt_fmt_map], [8 x %struct.cmt_fmt_map]* %1, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(%struct.cmt_fmt_map* %50)
  store i32 %51, i32* @commit_formats_len, align 4
  %52 = load i32, i32* @commit_formats_len, align 4
  store i32 %52, i32* @builtin_formats_len, align 4
  %53 = load i32, i32* @commit_formats, align 4
  %54 = load i32, i32* @commit_formats_len, align 4
  %55 = load i32, i32* @commit_formats_alloc, align 4
  %56 = call i32 @ALLOC_GROW(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @commit_formats, align 4
  %58 = getelementptr inbounds [8 x %struct.cmt_fmt_map], [8 x %struct.cmt_fmt_map]* %1, i64 0, i64 0
  %59 = getelementptr inbounds [8 x %struct.cmt_fmt_map], [8 x %struct.cmt_fmt_map]* %1, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(%struct.cmt_fmt_map* %59)
  %61 = call i32 @COPY_ARRAY(i32 %57, %struct.cmt_fmt_map* %58, i32 %60)
  %62 = load i32, i32* @git_pretty_formats_config, align 4
  %63 = call i32 @git_config(i32 %62, i32* null)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.cmt_fmt_map*) #1

declare dso_local i32 @ALLOC_GROW(i32, i32, i32) #1

declare dso_local i32 @COPY_ARRAY(i32, %struct.cmt_fmt_map*, i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
