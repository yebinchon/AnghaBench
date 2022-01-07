; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_stack_save.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_stack_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_pos = type { i32, i32 }
%struct.forkpoint = type { i32*, i32, i32, i32, i32, i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_save(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.stack_pos, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.forkpoint*, align 8
  %8 = bitcast %struct.stack_pos* %4 to i64*
  store i64 %2, i64* %8, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @stack_push_block(i32* %10, i32 %13, i32 32)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.forkpoint* @stack_block(i32* %18, i32 %21)
  store %struct.forkpoint* %22, %struct.forkpoint** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %27 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %32 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @jv_get_kind(i32 %35)
  %37 = load i64, i64* @JV_KIND_ARRAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @jv_copy(i32 %42)
  %44 = call i32 @jv_array_length(i32 %43)
  br label %46

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ %44, %39 ], [ 0, %45 ]
  %48 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %49 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @jv_copy(i32 %52)
  %54 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %55 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %60 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.forkpoint*, %struct.forkpoint** %7, align 8
  %63 = getelementptr inbounds %struct.forkpoint, %struct.forkpoint* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = getelementptr inbounds %struct.stack_pos, %struct.stack_pos* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.stack_pos, %struct.stack_pos* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @stack_push_block(i32*, i32, i32) #1

declare dso_local %struct.forkpoint* @stack_block(i32*, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
