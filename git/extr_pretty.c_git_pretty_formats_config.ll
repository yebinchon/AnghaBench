; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_git_pretty_formats_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_git_pretty_formats_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmt_fmt_map = type { i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pretty.\00", align 1
@builtin_formats_len = common dso_local global i32 0, align 4
@commit_formats = common dso_local global %struct.cmt_fmt_map* null, align 8
@commit_formats_len = common dso_local global i32 0, align 4
@commit_formats_alloc = common dso_local global i32 0, align 4
@CMIT_FMT_USERFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"format:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tformat:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_pretty_formats_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_pretty_formats_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cmt_fmt_map*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.cmt_fmt_map* null, %struct.cmt_fmt_map** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @skip_prefix(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

16:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @builtin_formats_len, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %22, i64 %24
  %26 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strcmp(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %117

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* @builtin_formats_len, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %58, %36
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @commit_formats_len, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %43, i64 %45
  %47 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strcmp(i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %53, i64 %55
  store %struct.cmt_fmt_map* %56, %struct.cmt_fmt_map** %8, align 8
  br label %61

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %38

61:                                               ; preds = %52, %38
  %62 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %63 = icmp ne %struct.cmt_fmt_map* %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %66 = load i32, i32* @commit_formats_len, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @commit_formats_alloc, align 4
  %69 = call i32 @ALLOC_GROW(%struct.cmt_fmt_map* %65, i32 %67, i32 %68)
  %70 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** @commit_formats, align 8
  %71 = load i32, i32* @commit_formats_len, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %70, i64 %72
  store %struct.cmt_fmt_map* %73, %struct.cmt_fmt_map** %8, align 8
  %74 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %75 = call i32 @memset(%struct.cmt_fmt_map* %74, i32 0, i32 24)
  %76 = load i32, i32* @commit_formats_len, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @commit_formats_len, align 4
  br label %78

78:                                               ; preds = %64, %61
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @xstrdup(i8* %79)
  %81 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %82 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @CMIT_FMT_USERFORMAT, align 4
  %84 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %85 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @git_config_string(i8** %10, i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %117

91:                                               ; preds = %78
  %92 = load i8*, i8** %10, align 8
  %93 = call i64 @skip_prefix(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %97 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %113

98:                                               ; preds = %91
  %99 = load i8*, i8** %10, align 8
  %100 = call i64 @skip_prefix(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strchr(i8* %103, i8 signext 37)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98
  %107 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %108 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %111 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %8, align 8
  %116 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %90, %31, %15
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.cmt_fmt_map*, i32, i32) #1

declare dso_local i32 @memset(%struct.cmt_fmt_map*, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i64 @git_config_string(i8**, i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
