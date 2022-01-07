; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-remove.c_create_object.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-remove.c_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@native_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_object() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_5__** %1)
  %5 = call i32 (...) @jerry_create_object()
  %6 = call i32 @jerryx_create_handle(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @jerry_set_object_native_pointer(i32 %7, i32* null, i32* @native_info)
  store i32 0, i32* %3, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @jerryx_remove_handle(%struct.TYPE_5__* %9, i32 %10, i32* %3)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_ASSERT(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @TEST_ASSERT(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = call i32 @jerryx_close_handle_scope(%struct.TYPE_5__* %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_5__**) #1

declare dso_local i32 @jerryx_create_handle(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_set_object_native_pointer(i32, i32*, i32*) #1

declare dso_local i32 @jerryx_remove_handle(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerryx_close_handle_scope(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
