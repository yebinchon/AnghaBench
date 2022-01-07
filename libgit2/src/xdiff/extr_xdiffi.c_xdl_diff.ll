; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }

@XDF_IGNORE_BLANK_LINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_diff(i32* %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_19__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)* @xdl_call_hunk_func, i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)* @xdl_emit_diff
  store i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)* %20, i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)** %14, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = call i64 @xdl_do_diff(i32* %21, i32* %22, %struct.TYPE_17__* %23, %struct.TYPE_18__* %13)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %80

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @xdl_change_compact(i32* %28, i32* %29, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @xdl_change_compact(i32* %36, i32* %37, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = call i64 @xdl_build_script(%struct.TYPE_18__* %13, i32** %12)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %35, %27
  %47 = call i32 @xdl_free_env(%struct.TYPE_18__* %13)
  store i32 -1, i32* %6, align 4
  br label %80

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @XDF_IGNORE_BLANK_LINES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xdl_mark_ignorable(i32* %59, %struct.TYPE_18__* %13, i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  %65 = load i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*)** %14, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = call i64 %65(%struct.TYPE_18__* %13, i32* %66, i32* %67, %struct.TYPE_19__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @xdl_free_script(i32* %72)
  %74 = call i32 @xdl_free_env(%struct.TYPE_18__* %13)
  store i32 -1, i32* %6, align 4
  br label %80

75:                                               ; preds = %64
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @xdl_free_script(i32* %76)
  br label %78

78:                                               ; preds = %75, %48
  %79 = call i32 @xdl_free_env(%struct.TYPE_18__* %13)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %71, %46, %26
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @xdl_call_hunk_func(%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @xdl_emit_diff(%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @xdl_do_diff(i32*, i32*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @xdl_change_compact(i32*, i32*, i32) #1

declare dso_local i64 @xdl_build_script(%struct.TYPE_18__*, i32**) #1

declare dso_local i32 @xdl_free_env(%struct.TYPE_18__*) #1

declare dso_local i32 @xdl_mark_ignorable(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @xdl_free_script(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
