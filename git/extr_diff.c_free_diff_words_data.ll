; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_free_diff_words_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_free_diff_words_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emit_callback = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*)* @free_diff_words_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_diff_words_data(%struct.emit_callback* %0) #0 {
  %2 = alloca %struct.emit_callback*, align 8
  store %struct.emit_callback* %0, %struct.emit_callback** %2, align 8
  %3 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %4 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %3, i32 0, i32 0
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %6 = icmp ne %struct.TYPE_13__* %5, null
  br i1 %6, label %7, label %78

7:                                                ; preds = %1
  %8 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %9 = call i32 @diff_words_flush(%struct.emit_callback* %8)
  %10 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %11 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call i32 @free(%struct.TYPE_12__* %16)
  %18 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %19 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i32 @free(%struct.TYPE_12__* %22)
  %24 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %25 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_12__* %30)
  %32 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %33 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_12__* %37)
  %39 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %40 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_12__* %45)
  %47 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %48 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i32 @free(%struct.TYPE_12__* %52)
  %54 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %55 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %7
  %61 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %62 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = call i32 @regfree(%struct.TYPE_12__* %65)
  %67 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %68 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = call i32 @free(%struct.TYPE_12__* %71)
  br label %73

73:                                               ; preds = %60, %7
  %74 = load %struct.emit_callback*, %struct.emit_callback** %2, align 8
  %75 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = call i32 @FREE_AND_NULL(%struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %73, %1
  ret void
}

declare dso_local i32 @diff_words_flush(%struct.emit_callback*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @regfree(%struct.TYPE_12__*) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
