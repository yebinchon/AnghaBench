; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-require/src/extr_require.c_mrb_require_load_mrb_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-require/src/extr_require.c_mrb_require_load_mrb_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@E_LOAD_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"can't open file -- %S\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't load file -- %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @mrb_require_load_mrb_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_require_load_mrb_file(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i32 @mrb_get_args(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %9)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i8* @mrb_str_to_cstr(%struct.TYPE_8__* %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32, i32* @E_LOAD_ERROR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mrb_raisef(%struct.TYPE_8__* %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @mrb_read_irep_file(%struct.TYPE_8__* %25, i32* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @fclose(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @eval_load_irep(%struct.TYPE_8__* %33, i32* %34)
  br label %54

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @longjmp(i32 %46, i32 1) #3
  unreachable

48:                                               ; preds = %36
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load i32, i32* @E_LOAD_ERROR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @mrb_raisef(%struct.TYPE_8__* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = call i32 (...) @mrb_nil_value()
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %32
  %55 = call i32 (...) @mrb_true_value()
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i8* @mrb_str_to_cstr(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @mrb_raisef(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32* @mrb_read_irep_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @eval_load_irep(%struct.TYPE_8__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_true_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
