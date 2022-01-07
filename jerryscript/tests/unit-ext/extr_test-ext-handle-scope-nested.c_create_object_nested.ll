; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-nested.c_create_object_nested.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-nested.c_create_object_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@native_info = common dso_local global i32 0, align 4
@jerryx_handle_scope_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_object_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_object_nested(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_6__** %3)
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = call i32 (...) @jerry_create_object()
  %12 = call i32 @jerryx_create_handle(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @jerry_set_object_native_pointer(i32 %13, i32* null, i32* @native_info)
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @create_object_nested(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = call %struct.TYPE_6__* (...) @jerryx_handle_scope_get_current()
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = icmp eq %struct.TYPE_6__* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  store i32 0, i32* %5, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @jerryx_escape_handle(%struct.TYPE_6__* %25, i32 %26, i32* %5)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @jerryx_handle_scope_ok, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST_ASSERT(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @jerryx_close_handle_scope(%struct.TYPE_6__* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_6__**) #1

declare dso_local i32 @jerryx_create_handle(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_set_object_native_pointer(i32, i32*, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @jerryx_handle_scope_get_current(...) #1

declare dso_local i64 @jerryx_escape_handle(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @jerryx_close_handle_scope(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
