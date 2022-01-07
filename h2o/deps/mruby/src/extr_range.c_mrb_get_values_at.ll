; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_mrb_get_values_at.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_range.c_mrb_get_values_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid values selector: %S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_get_values_at(i32* %0, i32 %1, i64 %2, i64 %3, i32* %4, i32 (i32*, i32, i64)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, i32, i64)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 (i32*, i32, i64)* %5, i32 (i32*, i32, i64)** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @mrb_ary_new(i32* %19)
  store i32 %20, i32* %17, align 4
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %112, %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %115

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mrb_fixnum_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %12, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mrb_fixnum(i32 %41)
  %43 = call i32 %35(i32* %36, i32 %37, i64 %42)
  %44 = call i32 @mrb_ary_push(i32* %33, i32 %34, i32 %43)
  br label %111

45:                                               ; preds = %25
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @mrb_range_beg_len(i32* %46, i32 %50, i64* %15, i64* %16, i64 %51, i32 %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %102

55:                                               ; preds = %45
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %57, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %64, %65
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %62, %61 ], [ %66, %63 ]
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %15, align 8
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %83, %67
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %18, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %12, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %14, align 8
  %81 = call i32 %77(i32* %78, i32 %79, i64 %80)
  %82 = call i32 @mrb_ary_push(i32* %75, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %70

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %89, %90
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 (...) @mrb_nil_value()
  %97 = call i32 @mrb_ary_push(i32* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %14, align 8
  br label %87

101:                                              ; preds = %87
  br label %110

102:                                              ; preds = %45
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @E_TYPE_ERROR, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @mrb_raisef(i32* %103, i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %102, %101
  br label %111

111:                                              ; preds = %110, %32
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %21

115:                                              ; preds = %21
  %116 = load i32, i32* %17, align 4
  ret i32 %116
}

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_range_beg_len(i32*, i32, i64*, i64*, i64, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
