; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_check_breakpoint_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_check_breakpoint_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.RClass = type { i32 }

@MRB_DEBUG_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MRB_DEBUG_BPTYPE_METHOD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MRB_DEBUG_BPTYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mrb_debug_check_breakpoint_method(i32* %0, %struct.TYPE_5__* %1, %struct.RClass* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.RClass* %2, %struct.RClass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.RClass*, %struct.RClass** %9, align 8
  %22 = icmp eq %struct.RClass* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17, %5
  %24 = load i64, i64* @MRB_DEBUG_INVALID_ARGUMENT, align 8
  store i64 %24, i64* %6, align 8
  br label %75

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %71, %25
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MRB_DEBUG_BPTYPE_METHOD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = load %struct.RClass*, %struct.RClass** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i64 @compare_break_method(i32* %48, %struct.TYPE_6__* %49, %struct.RClass* %50, i32 %51, i32* %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %6, align 8
  br label %75

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %41
  br label %68

60:                                               ; preds = %35
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MRB_DEBUG_BPTYPE_NONE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %74

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 1
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %12, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %14, align 8
  br label %29

74:                                               ; preds = %66, %29
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %74, %56, %23
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @compare_break_method(i32*, %struct.TYPE_6__*, %struct.RClass*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
