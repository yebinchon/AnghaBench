; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_alloc.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32*, i64 }

@jerryx_handle_scope_pool = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@JERRYX_SCOPE_PRELIST_SIZE = common dso_local global i64 0, align 8
@jerryx_handle_scope_current = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @jerryx_handle_scope_alloc() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %5 = load i64, i64* @JERRYX_SCOPE_PRELIST_SIZE, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 2), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %9
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %1, align 8
  br label %38

11:                                               ; preds = %0
  %12 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @JERRYX_HANDLE_SCOPE_ASSERT(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %20 = load i64, i64* @JERRYX_SCOPE_PRELIST_SIZE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @jerryx_handle_scope_current, align 8
  %24 = bitcast %struct.TYPE_7__* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  br label %35

31:                                               ; preds = %11
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %34, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %1, align 8
  br label %38

38:                                               ; preds = %35, %7
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** @jerryx_handle_scope_current, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %48
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @JERRYX_HANDLE_SCOPE_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
