; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_sample.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"|i?d\00", align 1
@mt_state_type = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"negative sample number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_sample(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32** %8, i32* @mt_state_type)
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @get_random_state(i32* %19)
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @mrb_random_rand_seed(i32* %22, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @mt_rand(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RARRAY_LEN(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %40 [
    i32 0, label %33
    i32 1, label %35
  ]

33:                                               ; preds = %31
  %34 = call i32 (...) @mrb_nil_value()
  store i32 %34, i32* %3, align 4
  br label %134

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @RARRAY_PTR(i32 %36)
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %134

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @RARRAY_PTR(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @mt_rand(i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = srem i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %134

50:                                               ; preds = %21
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %56 = call i32 @mrb_raise(i32* %54, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mrb_ary_new_capa(i32* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %105, %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @mt_rand(i32* %74)
  %76 = load i32, i32* %9, align 4
  %77 = srem i32 %75, %76
  store i32 %77, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %95, %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = call i32* @RARRAY_PTR(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @mrb_fixnum(i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %73

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %78

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @mrb_fixnum_value(i32 %102)
  %104 = call i32 @mrb_ary_push(i32* %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %67

108:                                              ; preds = %67
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32* @RARRAY_PTR(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = call i32* @RARRAY_PTR(i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @mrb_fixnum(i32 %124)
  %126 = getelementptr inbounds i32, i32* %118, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @mrb_ary_set(i32* %114, i32 %115, i32 %116, i32 %127)
  br label %129

129:                                              ; preds = %113
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %109

132:                                              ; preds = %109
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %40, %35, %33
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @get_random_state(i32*) #1

declare dso_local i32 @mrb_random_rand_seed(i32*, i32*) #1

declare dso_local i32 @mt_rand(i32*) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
