; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_mrb_ary_plus.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_array.c_mrb_ary_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@ARY_MAX_SIZE = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"array size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_plus(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.RArray* @mrb_ary_ptr(i32 %10)
  store %struct.RArray* %11, %struct.RArray** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %7, i64* %8)
  %14 = load i64, i64* @ARY_MAX_SIZE, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load %struct.RArray*, %struct.RArray** %5, align 8
  %18 = call i64 @ARY_LEN(%struct.RArray* %17)
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %23 = call i32 @mrb_raise(i32* %21, i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.RArray*, %struct.RArray** %5, align 8
  %26 = call i64 @ARY_LEN(%struct.RArray* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.RArray* @ary_new_capa(i32* %27, i64 %30)
  store %struct.RArray* %31, %struct.RArray** %6, align 8
  %32 = load %struct.RArray*, %struct.RArray** %6, align 8
  %33 = call i64 @ARY_PTR(%struct.RArray* %32)
  %34 = load %struct.RArray*, %struct.RArray** %5, align 8
  %35 = call i64 @ARY_PTR(%struct.RArray* %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @array_copy(i64 %33, i32* %36, i64 %37)
  %39 = load %struct.RArray*, %struct.RArray** %6, align 8
  %40 = call i64 @ARY_PTR(%struct.RArray* %39)
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @array_copy(i64 %42, i32* %43, i64 %44)
  %46 = load %struct.RArray*, %struct.RArray** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ARY_SET_LEN(%struct.RArray* %46, i64 %49)
  %51 = load %struct.RArray*, %struct.RArray** %6, align 8
  %52 = call i32 @mrb_obj_value(%struct.RArray* %51)
  ret i32 %52
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local %struct.RArray* @ary_new_capa(i32*, i64) #1

declare dso_local i32 @array_copy(i64, i32*, i64) #1

declare dso_local i64 @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i64) #1

declare dso_local i32 @mrb_obj_value(%struct.RArray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
