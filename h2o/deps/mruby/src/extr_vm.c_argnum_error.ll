; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_argnum_error.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_vm.c_argnum_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"'%S': wrong number of arguments (%S for %S)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"wrong number of arguments (%S for %S)\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @argnum_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argnum_error(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @mrb_array_p(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @RARRAY_LEN(i32 %30)
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @mrb_sym2str(%struct.TYPE_11__* %44, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @mrb_fixnum_value(i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @mrb_fixnum_value(i64 %55)
  %57 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @mrb_format(%struct.TYPE_11__* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %65

58:                                               ; preds = %33
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @mrb_fixnum_value(i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @mrb_fixnum_value(i64 %62)
  %64 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @mrb_format(%struct.TYPE_11__* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %42
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mrb_exc_new_str(%struct.TYPE_11__* %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mrb_exc_set(%struct.TYPE_11__* %70, i32 %71)
  ret void
}

declare dso_local i64 @mrb_array_p(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_format(%struct.TYPE_11__*, i8*, i32, i32, ...) #1

declare dso_local i32 @mrb_sym2str(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i32 @mrb_exc_new_str(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mrb_exc_set(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
