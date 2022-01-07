; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_apply_one_window.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_apply_one_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.sliding_view = type { i32 }
%struct.window = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"invalid delta: incorrect postimage length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_buffer*, i32*, %struct.sliding_view*, i32*)* @apply_one_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_one_window(%struct.line_buffer* %0, i32* %1, %struct.sliding_view* %2, i32* %3) #0 {
  %5 = alloca %struct.line_buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sliding_view*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.window, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sliding_view* %2, %struct.sliding_view** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.sliding_view*, %struct.sliding_view** %7, align 8
  %15 = call { i64, i64 } @WINDOW_INIT(%struct.sliding_view* %14)
  %16 = bitcast %struct.window* %10 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i64 } %15, 0
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i64 } %15, 1
  store i64 %20, i64* %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @read_length(%struct.line_buffer* %23, i64* %11, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %4
  %28 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @read_length(%struct.line_buffer* %28, i64* %12, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @read_length(%struct.line_buffer* %33, i64* %13, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 2
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @read_chunk(%struct.line_buffer* %38, i32* %39, i32* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.line_buffer*, %struct.line_buffer** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 1
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @read_chunk(%struct.line_buffer* %45, i32* %46, i32* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %37, %32, %27, %4
  br label %74

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @strbuf_grow(%struct.TYPE_3__* %53, i64 %54)
  %56 = call i64 @apply_window_in_core(%struct.window* %10)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %74

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %66, i32* %9, align 4
  br label %74

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 0
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @write_strbuf(%struct.TYPE_3__* %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %72, %65, %58, %51
  %75 = call i32 @window_release(%struct.window* %10)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local { i64, i64 } @WINDOW_INIT(%struct.sliding_view*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @read_length(%struct.line_buffer*, i64*, i32*) #1

declare dso_local i64 @read_chunk(%struct.line_buffer*, i32*, i32*, i64) #1

declare dso_local i32 @strbuf_grow(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @apply_window_in_core(%struct.window*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @write_strbuf(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @window_release(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
