; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_initialize_withArg.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_initialize_withArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"struct size differs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32)* @mrb_struct_initialize_withArg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_initialize_withArg(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.RClass*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.RClass* @mrb_obj_class(i32* %12, i32 %13)
  store %struct.RClass* %14, %struct.RClass** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.RClass*, %struct.RClass** %9, align 8
  %17 = call i64 @num_members(i32* %15, %struct.RClass* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %24 = call i32 @mrb_raise(i32* %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %4
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mrb_ary_set(i32* %31, i32 %32, i64 %33, i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %54, %42
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 (...) @mrb_nil_value()
  %53 = call i32 @mrb_ary_set(i32* %49, i32 %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %44

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.RClass* @mrb_obj_class(i32*, i32) #1

declare dso_local i64 @num_members(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i64, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
