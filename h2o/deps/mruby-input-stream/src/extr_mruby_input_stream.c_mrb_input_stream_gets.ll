; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_gets.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_input_stream_gets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_input_stream_gets(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_5__* @DATA_PTR(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = call i32 @assert_is_open(i32* %11, %struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = call i64 @seek_char(%struct.TYPE_5__* %17, i8 signext 10)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @mrb_nil_value()
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @mrb_str_new(i32* %42, i64 %47, i64 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %36, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_5__* @DATA_PTR(i32) #1

declare dso_local i32 @assert_is_open(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @seek_char(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_str_new(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
