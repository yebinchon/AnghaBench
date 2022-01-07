; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_diff_grep.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-pickaxe.c_diff_grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.diff_options = type { i32, i32 }
%struct.diffgrep_cb = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@discard_hunk_line = common dso_local global i32 0, align 4
@diffgrep_consume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.diff_options*, i32*, i32)* @diff_grep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_grep(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.diff_options* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.diff_options*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.diffgrep_cb, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.diff_options* %2, %struct.diff_options** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regexec_buf(i32* %19, i32 %22, i32 %25, i32 1, i32* %12, i32 0)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %69

30:                                               ; preds = %5
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regexec_buf(i32* %34, i32 %37, i32 %40, i32 1, i32* %12, i32 0)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %69

45:                                               ; preds = %30
  %46 = call i32 @memset(%struct.TYPE_11__* %14, i32 0, i32 8)
  %47 = call i32 @memset(%struct.TYPE_11__* %15, i32 0, i32 8)
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds %struct.diffgrep_cb, %struct.diffgrep_cb* %13, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = getelementptr inbounds %struct.diffgrep_cb, %struct.diffgrep_cb* %13, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %52 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %56 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = load i32, i32* @discard_hunk_line, align 4
  %62 = load i32, i32* @diffgrep_consume, align 4
  %63 = call i64 @xdi_diff_outf(%struct.TYPE_12__* %59, %struct.TYPE_12__* %60, i32 %61, i32 %62, %struct.diffgrep_cb* %13, %struct.TYPE_11__* %14, %struct.TYPE_11__* %15)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %69

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.diffgrep_cb, %struct.diffgrep_cb* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %65, %33, %18
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @regexec_buf(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @xdi_diff_outf(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32, %struct.diffgrep_cb*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
