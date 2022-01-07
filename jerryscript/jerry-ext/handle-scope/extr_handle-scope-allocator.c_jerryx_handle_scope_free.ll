; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_free.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@jerryx_handle_scope_root = common dso_local global i32 0, align 4
@jerryx_handle_scope_pool = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@jerryx_handle_scope_current = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jerryx_handle_scope_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, @jerryx_handle_scope_root
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** @jerryx_handle_scope_current, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @jerryx_handle_scope_get_parent(i32* %14)
  store i32* %15, i32** @jerryx_handle_scope_current, align 8
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @jerryx_handle_scope_is_in_prelist(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %3, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %25 = icmp eq %struct.TYPE_6__* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %42, align 8
  br label %43

43:                                               ; preds = %35, %30
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @free(%struct.TYPE_6__* %45)
  br label %47

47:                                               ; preds = %6, %44, %16
  ret void
}

declare dso_local i32* @jerryx_handle_scope_get_parent(i32*) #1

declare dso_local i32 @jerryx_handle_scope_is_in_prelist(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
