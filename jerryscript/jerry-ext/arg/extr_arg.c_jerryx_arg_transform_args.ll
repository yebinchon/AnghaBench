; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg.c_jerryx_arg_transform_args.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg.c_jerryx_arg_transform_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* }
%struct.TYPE_7__ = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jerryx_arg_transform_args(i32* %0, i64 %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 (...) @jerry_create_undefined()
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %15, align 8
  br label %17

17:                                               ; preds = %33, %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @jerry_value_is_error(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = call i32 %30(%struct.TYPE_7__* %10, %struct.TYPE_6__* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %7, align 8
  br label %17

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
