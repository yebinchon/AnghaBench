; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_builtin_checkdiff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_builtin_checkdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32 }
%struct.diff_options = type { %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.checkdiff_t = type { i8*, i32, i32, i32, i64, i32, %struct.diff_options*, i64 }
%struct.emit_callback = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unable to read files to diff\00", align 1
@checkdiff_consume_hunk = common dso_local global i32 0, align 4
@checkdiff_consume = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to generate checkdiff for %s\00", align 1
@WS_BLANK_AT_EOF = common dso_local global i32 0, align 4
@builtin_checkdiff.err = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%s:%d: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_options*)* @builtin_checkdiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @builtin_checkdiff(i8* %0, i8* %1, i8* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, %struct.diff_options* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diff_options*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.checkdiff_t, align 8
  %16 = alloca %struct.checkdiff_t, align 8
  %17 = alloca %struct.checkdiff_t, align 8
  %18 = alloca %struct.emit_callback, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %11, align 8
  store %struct.diff_options* %5, %struct.diff_options** %12, align 8
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %21 = icmp ne %struct.diff_filespec* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %136

23:                                               ; preds = %6
  %24 = call i32 @memset(%struct.checkdiff_t* %15, i32 0, i32 56)
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %36 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 6
  store %struct.diff_options* %35, %struct.diff_options** %36, align 8
  %37 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %38 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @whitespace_rule(i32 %41, i8* %42)
  %44 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %46 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @ll_merge_marker_size(i32 %49, i8* %50)
  %52 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %57 = call i64 @fill_mmfile(%struct.TYPE_5__* %55, i32* %13, %struct.diff_filespec* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %31
  %60 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %61 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %64 = call i64 @fill_mmfile(%struct.TYPE_5__* %62, i32* %14, %struct.diff_filespec* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59, %31
  %67 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %70 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %73 = call i64 @diff_filespec_is_binary(%struct.TYPE_5__* %71, %struct.diff_filespec* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %124

76:                                               ; preds = %68
  %77 = call i32 @memset(%struct.checkdiff_t* %16, i32 0, i32 56)
  %78 = call i32 @memset(%struct.checkdiff_t* %17, i32 0, i32 56)
  %79 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %17, i32 0, i32 2
  store i32 1, i32* %79, align 4
  %80 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %16, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @checkdiff_consume_hunk, align 4
  %82 = load i32, i32* @checkdiff_consume, align 4
  %83 = call i64 @xdi_diff_outf(i32* %13, i32* %14, i32 %81, i32 %82, %struct.checkdiff_t* %15, %struct.checkdiff_t* %16, %struct.checkdiff_t* %17)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %87 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %76
  %91 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @WS_BLANK_AT_EOF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %18, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = call i32 @check_blank_at_eof(i32* %13, i32* %14, %struct.emit_callback* %18)
  %101 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %18, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %96
  %106 = load i8*, i8** @builtin_checkdiff.err, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @WS_BLANK_AT_EOF, align 4
  %110 = call i8* @whitespace_error_string(i32 %109)
  store i8* %110, i8** @builtin_checkdiff.err, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %113 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i8*, i8** @builtin_checkdiff.err, align 8
  %119 = call i32 @fprintf(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32 %117, i8* %118)
  %120 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 3
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %111, %96
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123, %75
  %125 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %126 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %125)
  %127 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %128 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %127)
  %129 = getelementptr inbounds %struct.checkdiff_t, %struct.checkdiff_t* %15, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.diff_options*, %struct.diff_options** %12, align 8
  %134 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %22, %132, %124
  ret void
}

declare dso_local i32 @memset(%struct.checkdiff_t*, i32, i32) #1

declare dso_local i32 @whitespace_rule(i32, i8*) #1

declare dso_local i32 @ll_merge_marker_size(i32, i8*) #1

declare dso_local i64 @fill_mmfile(%struct.TYPE_5__*, i32*, %struct.diff_filespec*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @diff_filespec_is_binary(%struct.TYPE_5__*, %struct.diff_filespec*) #1

declare dso_local i64 @xdi_diff_outf(i32*, i32*, i32, i32, %struct.checkdiff_t*, %struct.checkdiff_t*, %struct.checkdiff_t*) #1

declare dso_local i32 @check_blank_at_eof(i32*, i32*, %struct.emit_callback*) #1

declare dso_local i8* @whitespace_error_string(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @diff_free_filespec_data(%struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
