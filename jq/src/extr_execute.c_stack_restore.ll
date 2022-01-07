; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_stack_restore.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_stack_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.forkpoint = type { i64, i64, i32, i32, i32, i32* }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stack_restore(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.forkpoint*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  br label %7

7:                                                ; preds = %42, %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @stack_pop_will_free(i32* %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %43

16:                                               ; preds = %7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @stack_pop_will_free(i32* %18, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 @stack_pop(%struct.TYPE_5__* %25)
  %27 = call i32 @jv_free(i32 %26)
  br label %42

28:                                               ; preds = %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @stack_pop_will_free(i32* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @frame_pop(%struct.TYPE_5__* %37)
  br label %41

39:                                               ; preds = %28
  %40 = call i32 @assert(i32 0)
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %24
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* null, i32** %2, align 8
  br label %117

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.forkpoint* @stack_block(i32* %51, i64 %54)
  store %struct.forkpoint* %55, %struct.forkpoint** %4, align 8
  %56 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %57 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %5, align 8
  %59 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %60 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %65 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %70 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @jv_get_kind(i32 %74)
  %76 = load i64, i64* @JV_KIND_ARRAY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %49
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @jv_array_slice(i32 %85, i32 0, i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  br label %93

90:                                               ; preds = %49
  %91 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %92 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %78
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @jv_free(i32 %96)
  %98 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %99 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.forkpoint*, %struct.forkpoint** %4, align 8
  %104 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @stack_pop_block(i32* %109, i64 %112, i32 40)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32*, i32** %5, align 8
  store i32* %116, i32** %2, align 8
  br label %117

117:                                              ; preds = %93, %48
  %118 = load i32*, i32** %2, align 8
  ret i32* %118
}

declare dso_local i64 @stack_pop_will_free(i32*, i64) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @stack_pop(%struct.TYPE_5__*) #1

declare dso_local i32 @frame_pop(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.forkpoint* @stack_block(i32*, i64) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array_slice(i32, i32, i32) #1

declare dso_local i64 @stack_pop_block(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
