; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_read.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-input-stream/src/extr_mruby_input_stream.c_mrb_input_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"|iS\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_input_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_input_stream_read(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_4__* @DATA_PTR(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = call i32 @assert_is_open(i32* %17, %struct.TYPE_4__* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @mrb_str_new_lit(i32* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @mrb_nil_value()
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %95

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @mrb_str_new(i32* %53, i8* %54, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %95

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %61
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @mrb_str_new(i32* %81, i8* %82, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %74
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @mrb_str_cat(i32* %88, i32 %89, i8* %90, i32 %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %80, %47, %42
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @DATA_PTR(i32) #1

declare dso_local i32 @assert_is_open(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
