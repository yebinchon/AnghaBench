; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"m:vn:oxz\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@import_file = common dso_local global i32 0, align 4
@SPLIT_PARAM_OWNER = common dso_local global i32 0, align 4
@split_param = common dso_local global i32 0, align 4
@SPLIT_PARAM_OWNERXPLACE = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@name_pattern = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %32 [
    i32 118, label %18
    i32 109, label %21
    i32 110, label %24
    i32 111, label %26
    i32 120, label %28
    i32 122, label %30
    i32 104, label %31
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @verbosity, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @verbosity, align 4
  br label %34

21:                                               ; preds = %16
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @atoi(i32 %22)
  store i32 %23, i32* @log_split_mod, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load i32, i32* @optarg, align 4
  store i32 %25, i32* @import_file, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load i32, i32* @SPLIT_PARAM_OWNER, align 4
  store i32 %27, i32* @split_param, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @SPLIT_PARAM_OWNERXPLACE, align 4
  store i32 %29, i32* @split_param, align 4
  br label %34

30:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %34

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %16, %31
  %33 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %61

34:                                               ; preds = %30, %28, %26, %24, %21, %18
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @optind, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @import_file, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @log_split_mod, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %40, %35
  %47 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %61

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** @name_pattern, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (...) @import_dump()
  br label %60

58:                                               ; preds = %48
  %59 = call i32 (...) @import_dump2()
  br label %60

60:                                               ; preds = %58, %56
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %46, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @import_dump(...) #1

declare dso_local i32 @import_dump2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
