; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_shuffle_bang.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_shuffle_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"|d\00", align 1
@mt_state_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_shuffle_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_shuffle_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @RARRAY_LEN(i32 %10)
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %6, i32* @mt_state_type)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @get_random_state(i32* %19)
  store i32* %20, i32** %6, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @mrb_random_rand_seed(i32* %22, i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mrb_ary_ptr(i32 %26)
  %28 = call i32 @mrb_ary_modify(i32* %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RARRAY_LEN(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %61, %21
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i32* @RARRAY_PTR(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @RARRAY_LEN(i32 %41)
  %43 = call i32 @mrb_fixnum_value(i32 %42)
  %44 = call i32 @mrb_random_mt_rand(i32* %39, i32* %40, i32 %43)
  %45 = call i64 @mrb_fixnum(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %36
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %5, align 8
  br label %33

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i32*) #1

declare dso_local i32* @get_random_state(i32*) #1

declare dso_local i32 @mrb_random_rand_seed(i32*, i32*) #1

declare dso_local i32 @mrb_ary_modify(i32*, i32) #1

declare dso_local i32 @mrb_ary_ptr(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_random_mt_rand(i32*, i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
