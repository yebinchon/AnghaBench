; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_set_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 (i32*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_input_stream_set_data(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.TYPE_4__* @DATA_PTR(i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32*, i32, i32, i32)* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %25(i32* %26, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %7
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @setup_stream(i32* %38, %struct.TYPE_4__* %39, i8* %40, i32 %41, i32 %42, i32 %43, i8* %44)
  ret void
}

declare dso_local %struct.TYPE_4__* @DATA_PTR(i32) #1

declare dso_local i32 @setup_stream(i32*, %struct.TYPE_4__*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
