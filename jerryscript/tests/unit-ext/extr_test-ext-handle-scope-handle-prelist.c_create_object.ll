; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-handle-prelist.c_create_object.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-handle-scope-handle-prelist.c_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@handle_count = common dso_local global i64 0, align 8
@native_info = common dso_local global i32 0, align 4
@JERRYX_HANDLE_PRELIST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_object() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_5__** %1)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @handle_count, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = call i32 (...) @jerry_create_object()
  %12 = call i32 @jerryx_create_handle(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @jerry_set_object_native_pointer(i32 %13, i32* null, i32* @native_info)
  br label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @jerryx_escape_handle(%struct.TYPE_5__* %19, i32 %20, i32* %4)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JERRYX_HANDLE_PRELIST_SIZE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = call i32 @jerryx_close_handle_scope(%struct.TYPE_5__* %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @jerryx_open_escapable_handle_scope(%struct.TYPE_5__**) #1

declare dso_local i32 @jerryx_create_handle(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_set_object_native_pointer(i32, i32*, i32*) #1

declare dso_local i32 @jerryx_escape_handle(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerryx_close_handle_scope(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
