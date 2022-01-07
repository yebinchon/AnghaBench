; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_get_parent.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/handle-scope/extr_handle-scope-allocator.c_jerryx_handle_scope_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@jerryx_handle_scope_root = common dso_local global i32 0, align 4
@jerryx_handle_scope_pool = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jerryx_handle_scope_get_parent(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, @jerryx_handle_scope_root
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @jerryx_handle_scope_is_in_prelist(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 1), align 8
  %18 = icmp eq %struct.TYPE_3__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32*, i32** @JERRYX_HANDLE_SCOPE_POOL_PRELIST_LAST, align 8
  store i32* %20, i32** %2, align 8
  br label %39

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i32*
  store i32* %26, i32** %2, align 8
  br label %39

27:                                               ; preds = %9
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32* @jerryx_handle_scope_root, i32** %2, align 8
  br label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jerryx_handle_scope_pool, i32 0, i32 0), align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @JERRYX_HANDLE_SCOPE_PRELIST_IDX(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %32, %31, %21, %19, %8
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32 @jerryx_handle_scope_is_in_prelist(i32*) #1

declare dso_local i32 @JERRYX_HANDLE_SCOPE_PRELIST_IDX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
