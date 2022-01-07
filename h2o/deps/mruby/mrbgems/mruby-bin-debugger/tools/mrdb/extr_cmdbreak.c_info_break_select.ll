; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_info_break_select.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_info_break_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8**, i32 }

@MRB_DEBUG_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BREAK_ERR_MSG_INVALIDBPNO_INFO = common dso_local global i32 0, align 4
@MRB_DEBUG_BREAK_INVALID_NO = common dso_local global i64 0, align 8
@BREAK_ERR_MSG_NOBPNO_INFO = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@BREAK_INFO_MSG_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @info_break_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_break_select(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load i64, i64* @MRB_DEBUG_OK, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %9, align 8
  store i64 2, i64* %10, align 8
  br label %16

16:                                               ; preds = %69, %2
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @parse_breakpoint_no(i8* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @BREAK_ERR_MSG_INVALIDBPNO_INFO, align 4
  %35 = call i32 @puts(i32 %34)
  br label %72

36:                                               ; preds = %22
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @mrb_debug_get_break(i32* %37, i32 %40, i64 %41, i32* %8)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_NO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i8*, i8** @BREAK_ERR_MSG_NOBPNO_INFO, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @printf(i8* %47, i64 %48)
  br label %72

50:                                               ; preds = %36
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @MRB_DEBUG_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @print_api_common_error(i64 %55)
  br label %72

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @TRUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %9, align 8
  %63 = load i32, i32* @BREAK_INFO_MSG_HEADER, align 4
  %64 = call i32 @puts(i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = call i32 @print_breakpoint(i32* %8)
  br label %69

69:                                               ; preds = %67
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %16

72:                                               ; preds = %54, %46, %33, %16
  ret void
}

declare dso_local i64 @parse_breakpoint_no(i8*) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i64 @mrb_debug_get_break(i32*, i32, i64, i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @print_api_common_error(i64) #1

declare dso_local i32 @print_breakpoint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
