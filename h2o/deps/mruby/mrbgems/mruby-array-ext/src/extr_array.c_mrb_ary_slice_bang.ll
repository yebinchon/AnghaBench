; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_slice_bang.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_slice_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"o|i\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"delete_at\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @mrb_ary_slice_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mrb_ary_slice_bang(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.RArray* @mrb_ary_ptr(i64 %16)
  store %struct.RArray* %17, %struct.RArray** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.RArray*, %struct.RArray** %6, align 8
  %20 = call i32 @mrb_ary_modify(i32* %18, %struct.RArray* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mrb_get_argc(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @mrb_get_args(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %15, i64* %10)
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @mrb_type(i64 %27)
  switch i32 %28, label %46 [
    i32 128, label %29
    i32 129, label %40
  ]

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.RArray*, %struct.RArray** %6, align 8
  %33 = call i64 @ARY_LEN(%struct.RArray* %32)
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @mrb_range_beg_len(i32* %30, i64 %31, i64* %7, i64* %10, i64 %33, i32 %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %55

38:                                               ; preds = %29
  %39 = call i64 (...) @mrb_nil_value()
  store i64 %39, i64* %3, align 8
  br label %149

40:                                               ; preds = %24
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call i64 @mrb_funcall(i32* %41, i64 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %3, align 8
  br label %149

46:                                               ; preds = %24
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i64 @mrb_funcall(i32* %47, i64 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, i64 %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %3, align 8
  br label %149

52:                                               ; preds = %2
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @mrb_get_args(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64* %7, i64* %10)
  br label %55

55:                                               ; preds = %52, %37
  %56 = load %struct.RArray*, %struct.RArray** %6, align 8
  %57 = call i64 @ARY_LEN(%struct.RArray* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %7, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %64
  %72 = call i64 (...) @mrb_nil_value()
  store i64 %72, i64* %3, align 8
  br label %149

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i64 (...) @mrb_nil_value()
  store i64 %77, i64* %3, align 8
  br label %149

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @mrb_ary_new(i32* %83)
  store i64 %84, i64* %3, align 8
  br label %149

85:                                               ; preds = %78
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub nsw i64 %87, %88
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @mrb_ary_new_capa(i32* %96, i64 %97)
  store i64 %98, i64* %14, align 8
  %99 = load %struct.RArray*, %struct.RArray** %6, align 8
  %100 = call i64* @ARY_PTR(%struct.RArray* %99)
  store i64* %100, i64** %13, align 8
  %101 = load i64, i64* %7, align 8
  store i64 %101, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %114, %95
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64*, i64** %13, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @mrb_ary_push(i32* %107, i64 %108, i64 %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i64, i64* %8, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %9, align 8
  br label %102

119:                                              ; preds = %102
  %120 = load i64, i64* %7, align 8
  %121 = load i64*, i64** %13, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 %120
  store i64* %122, i64** %13, align 8
  %123 = load i64, i64* %7, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %138, %119
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = sub nsw i64 %126, %127
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load i64*, i64** %13, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %13, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i64*, i64** %13, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %13, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i64, i64* %8, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %8, align 8
  br label %124

141:                                              ; preds = %124
  %142 = load i32*, i32** %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %10, align 8
  %146 = sub nsw i64 %144, %145
  %147 = call i32 @mrb_ary_resize(i32* %142, i64 %143, i64 %146)
  %148 = load i64, i64* %14, align 8
  store i64 %148, i64* %3, align 8
  br label %149

149:                                              ; preds = %141, %82, %76, %71, %46, %40, %38
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i64) #1

declare dso_local i32 @mrb_ary_modify(i32*, %struct.RArray*) #1

declare dso_local i32 @mrb_get_argc(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @mrb_type(i64) #1

declare dso_local i32 @mrb_range_beg_len(i32*, i64, i64*, i64*, i64, i32) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i64 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_funcall(i32*, i64, i8*, i32, i64) #1

declare dso_local i64 @mrb_ary_new(i32*) #1

declare dso_local i64 @mrb_ary_new_capa(i32*, i64) #1

declare dso_local i64* @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @mrb_ary_push(i32*, i64, i64) #1

declare dso_local i32 @mrb_ary_resize(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
