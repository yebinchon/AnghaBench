; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_range_eql.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_range_eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RRange = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@MRB_TT_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @range_eql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_eql(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RRange*, align 8
  %8 = alloca %struct.RRange*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @mrb_get_args(%struct.TYPE_8__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mrb_obj_equal(%struct.TYPE_8__* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @mrb_true_value()
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mrb_obj_is_kind_of(%struct.TYPE_8__* %19, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 (...) @mrb_false_value()
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mrb_type(i32 %29)
  %31 = load i64, i64* @MRB_TT_RANGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @mrb_false_value()
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__* %36, i32 %37)
  store %struct.RRange* %38, %struct.RRange** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__* %39, i32 %40)
  store %struct.RRange* %41, %struct.RRange** %8, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load %struct.RRange*, %struct.RRange** %7, align 8
  %44 = call i32 @RANGE_BEG(%struct.RRange* %43)
  %45 = load %struct.RRange*, %struct.RRange** %8, align 8
  %46 = call i32 @RANGE_BEG(%struct.RRange* %45)
  %47 = call i32 @mrb_eql(%struct.TYPE_8__* %42, i32 %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load %struct.RRange*, %struct.RRange** %7, align 8
  %52 = call i32 @RANGE_END(%struct.RRange* %51)
  %53 = load %struct.RRange*, %struct.RRange** %8, align 8
  %54 = call i32 @RANGE_END(%struct.RRange* %53)
  %55 = call i32 @mrb_eql(%struct.TYPE_8__* %50, i32 %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.RRange*, %struct.RRange** %7, align 8
  %59 = call i64 @RANGE_EXCL(%struct.RRange* %58)
  %60 = load %struct.RRange*, %struct.RRange** %8, align 8
  %61 = call i64 @RANGE_EXCL(%struct.RRange* %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %49, %35
  %64 = call i32 (...) @mrb_false_value()
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %57
  %66 = call i32 (...) @mrb_true_value()
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %63, %33, %26, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_obj_is_kind_of(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i64 @mrb_type(i32) #1

declare dso_local %struct.RRange* @mrb_range_ptr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mrb_eql(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @RANGE_BEG(%struct.RRange*) #1

declare dso_local i32 @RANGE_END(%struct.RRange*) #1

declare dso_local i64 @RANGE_EXCL(%struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
