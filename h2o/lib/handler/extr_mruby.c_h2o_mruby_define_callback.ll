; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_define_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_define_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }

@.str = private unnamed_addr constant [21 x i8] c"_h2o_define_callback\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to define mruby function: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_define_callback(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_12__* %13, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 %20, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @mrb_str_new_cstr(%struct.TYPE_10__* %31, i8* %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = call i32 @mrb_fixnum_value(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @mrb_top_self(%struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = call i32 @mrb_intern_lit(%struct.TYPE_10__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = call i32 @mrb_funcall_argv(%struct.TYPE_10__* %43, i32 %45, i32 %47, i32 2, i32* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %3
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = call i32 @h2o_mruby_assert(%struct.TYPE_10__* %57)
  br label %59

59:                                               ; preds = %54, %3
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @mrb_str_new_cstr(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_funcall_argv(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mrb_top_self(%struct.TYPE_10__*) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @h2o_error_printf(i8*, i8*) #1

declare dso_local i32 @h2o_mruby_assert(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
