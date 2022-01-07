; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_run_blocking_requests_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_run_blocking_requests_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_blocking_requests_callback(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mrb_ary_entry(i32 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mrb_nil_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @mrb_obj_ptr(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = call i32 @handle_exception(%struct.TYPE_10__* %33, i32* null)
  br label %35

35:                                               ; preds = %28, %5
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @RARRAY_LEN(i32 %38)
  store i64 %39, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %59, %35
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mrb_ary_entry(i32 %47, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mrb_ary_entry(i32 %51, i32 0)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @mrb_ary_entry(i32 %53, i32 1)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_10__* %55, i32 %56, i32 %57, i32* null)
  br label %59

59:                                               ; preds = %44
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mrb_ary_clear(%struct.TYPE_9__* %63, i32 %66)
  %68 = call i32 (...) @mrb_nil_value()
  ret i32 %68
}

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_obj_ptr(i32) #1

declare dso_local i32 @handle_exception(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @mrb_ary_clear(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
