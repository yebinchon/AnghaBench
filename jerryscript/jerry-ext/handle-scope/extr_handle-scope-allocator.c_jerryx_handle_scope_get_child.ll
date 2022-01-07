; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_get_child.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_get_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@jerryx_handle_scope_root = common dso_local global i32 0, align 4
@jerryx_handle_scope_pool = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jerryx_handle_scope_get_child(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, @jerryx_handle_scope_root
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  store i32* %12, i32** %2, align 8
  br label %50

13:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @jerryx_handle_scope_is_in_prelist(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %4, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = bitcast %struct.TYPE_3__* %23 to i32*
  store i32* %24, i32** %2, align 8
  br label %50

25:                                               ; preds = %14
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** @JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 2), align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %2, align 8
  br label %50

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @JERRYX_HANDLE_SCOPE_PRELIST_IDX(i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32* null, i32** %2, align 8
  br label %50

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32* null, i32** %2, align 8
  br label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %45, %44, %37, %29, %18, %13, %11
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local i32 @jerryx_handle_scope_is_in_prelist(i32*) #1

declare dso_local i64 @JERRYX_HANDLE_SCOPE_PRELIST_IDX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
