; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_set_break_line.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_set_break_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64 }

@MRB_DEBUG_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MAX_BREAKPOINT = common dso_local global i64 0, align 8
@MRB_DEBUG_BREAK_NUM_OVER = common dso_local global i64 0, align 8
@MAX_BREAKPOINTNO = common dso_local global i64 0, align 8
@MRB_DEBUG_BREAK_NO_OVER = common dso_local global i64 0, align 8
@MRB_DEBUG_BREAK_INVALID_FILE = common dso_local global i64 0, align 8
@MRB_DEBUG_BP_FILE_OK = common dso_local global i64 0, align 8
@MRB_DEBUG_BREAK_INVALID_LINENO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MRB_DEBUG_BPTYPE_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mrb_debug_set_break_line(i32* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %4
  %22 = load i64, i64* @MRB_DEBUG_INVALID_ARGUMENT, align 8
  store i64 %22, i64* %5, align 8
  br label %129

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_BREAKPOINT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @MRB_DEBUG_BREAK_NUM_OVER, align 8
  store i64 %30, i64* %5, align 8
  br label %129

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAX_BREAKPOINTNO, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @MRB_DEBUG_BREAK_NO_OVER, align 8
  store i64 %38, i64* %5, align 8
  br label %129

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @check_file_lineno(i32 %42, i8* %43, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_FILE, align 8
  store i64 %49, i64* %5, align 8
  br label %129

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @MRB_DEBUG_BP_FILE_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_LINENO, align 8
  store i64 %55, i64* %5, align 8
  br label %129

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %60, 1
  %62 = call i64 @mrb_malloc(i32* %58, i64 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %11, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %69, i64* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* @MRB_DEBUG_BPTYPE_LINE, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %87, i32* %93, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i64 %94, i64* %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = add nsw i64 %110, 1
  %112 = call i32 @strncpy(i8* %107, i8* %108, i64 %111)
  %113 = load i8*, i8** %11, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i8* %113, i8** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %57, %54, %48, %37, %29, %21
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i64 @check_file_lineno(i32, i8*, i64) #1

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
