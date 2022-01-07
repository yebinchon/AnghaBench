; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_words_flush.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_words_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emit_callback = type { %struct.diff_options*, %struct.TYPE_11__* }
%struct.diff_options = type { %struct.emitted_diff_symbols* }
%struct.emitted_diff_symbols = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.diff_options* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*)* @diff_words_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_words_flush(%struct.emit_callback* %0) #0 {
  %2 = alloca %struct.emit_callback*, align 8
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca %struct.emitted_diff_symbols*, align 8
  %6 = alloca i32, align 4
  store %struct.emit_callback* %0, %struct.emit_callback** %2, align 8
  %7 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %8 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  store %struct.diff_options* %11, %struct.diff_options** %3, align 8
  %12 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %13 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %22 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20, %1
  %30 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %31 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = call i32 @diff_words_show(%struct.TYPE_11__* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %36 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %35, i32 0, i32 0
  %37 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %36, align 8
  %38 = icmp ne %struct.emitted_diff_symbols* %37, null
  br i1 %38, label %39, label %88

39:                                               ; preds = %34
  %40 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %41 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %40, i32 0, i32 0
  %42 = load %struct.diff_options*, %struct.diff_options** %41, align 8
  store %struct.diff_options* %42, %struct.diff_options** %4, align 8
  %43 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %44 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %43, i32 0, i32 0
  %45 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %44, align 8
  store %struct.emitted_diff_symbols* %45, %struct.emitted_diff_symbols** %5, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %61, %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %5, align 8
  %49 = getelementptr inbounds %struct.emitted_diff_symbols, %struct.emitted_diff_symbols* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %54 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %5, align 8
  %55 = getelementptr inbounds %struct.emitted_diff_symbols, %struct.emitted_diff_symbols* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = call i32 @append_emitted_diff_symbol(%struct.diff_options* %53, %struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %5, align 8
  %68 = getelementptr inbounds %struct.emitted_diff_symbols, %struct.emitted_diff_symbols* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %5, align 8
  %73 = getelementptr inbounds %struct.emitted_diff_symbols, %struct.emitted_diff_symbols* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load %struct.emitted_diff_symbols*, %struct.emitted_diff_symbols** %5, align 8
  %87 = getelementptr inbounds %struct.emitted_diff_symbols, %struct.emitted_diff_symbols* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %34
  ret void
}

declare dso_local i32 @diff_words_show(%struct.TYPE_11__*) #1

declare dso_local i32 @append_emitted_diff_symbol(%struct.diff_options*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
