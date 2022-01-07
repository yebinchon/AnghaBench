; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_apply_delta.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_apply_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.sliding_view = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8* }

@report_buffer = common dso_local global i32 0, align 4
@postimage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cannot open temporary file for blob retrieval\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cat-blob %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid cat-blob response: %s\00", align 1
@S_IFLNK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"link \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"cannot apply delta\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot seek to end of input\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"missing newline after cat-blob response\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"cannot read temporary file for blob retrieval\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.line_buffer*, i8*, i64)* @apply_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apply_delta(i32 %0, %struct.line_buffer* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.line_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sliding_view, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.line_buffer* %1, %struct.line_buffer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call { i8*, i64 } @SLIDING_VIEW_INIT(i32* @report_buffer, i32 0)
  %14 = bitcast %struct.sliding_view* %10 to { i8*, i64 }*
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i8*, i64 } %13, 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i8*, i64 } %13, 1
  store i64 %18, i64* %17, align 8
  %19 = call i64 (...) @init_postimage()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = call i32* @buffer_tmpfile_rewind(i32* @postimage)
  store i32* %22, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %4
  %25 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fflush(i32 %32)
  %34 = call i8* (...) @get_response_line()
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %37 = call i64 @parse_cat_response_line(i8* %35, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @check_preimage_overflow(i64 %44, i32 1)
  br label %46

46:                                               ; preds = %42, %26
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @S_IFLNK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 0
  %52 = call i32 @strbuf_addstr(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @check_preimage_overflow(i64 %54, i32 %55)
  %57 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %58
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @check_preimage_overflow(i64 %63, i32 1)
  br label %65

65:                                               ; preds = %50, %46
  %66 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @svndiff0_apply(%struct.line_buffer* %66, i32 %67, %struct.sliding_view* %10, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @signed_add_overflows(i64 %78, i32 1)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = call i64 @move_window(%struct.sliding_view* %10, i64 %89, i32 1)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %76
  %95 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 10
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %94
  br label %105

105:                                              ; preds = %104, %73
  %106 = call i64 @buffer_tmpfile_prepare_to_read(i32* @postimage)
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105
  %112 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %10, i32 0, i32 0
  %113 = call i32 @strbuf_release(%struct.TYPE_3__* %112)
  %114 = load i64, i64* %9, align 8
  ret i64 %114
}

declare dso_local { i8*, i64 } @SLIDING_VIEW_INIT(i32*, i32) #1

declare dso_local i64 @init_postimage(...) #1

declare dso_local i32* @buffer_tmpfile_rewind(i32*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @get_response_line(...) #1

declare dso_local i64 @parse_cat_response_line(i8*, i64*) #1

declare dso_local i32 @check_preimage_overflow(i64, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @svndiff0_apply(%struct.line_buffer*, i32, %struct.sliding_view*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @signed_add_overflows(i64, i32) #1

declare dso_local i64 @move_window(%struct.sliding_view*, i64, i32) #1

declare dso_local i64 @buffer_tmpfile_prepare_to_read(i32*) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
