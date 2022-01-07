; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_create_object_object_arg.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_create_object_object_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_create_object_object_arg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ecma_check_value_type_is_spec_defined(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @ecma_is_value_object(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ecma_is_value_number(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ecma_is_value_prop_name(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @ecma_is_value_boolean(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %14, %10, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ecma_op_to_object(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @ecma_is_value_undefined(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @ecma_is_value_null(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @JERRY_ASSERT(i32 %35)
  %37 = call i32* (...) @ecma_op_create_object_object_noarg()
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ecma_make_object_value(i32* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ecma_check_value_type_is_spec_defined(i32) #1

declare dso_local i64 @ecma_is_value_object(i32) #1

declare dso_local i64 @ecma_is_value_number(i32) #1

declare dso_local i64 @ecma_is_value_prop_name(i32) #1

declare dso_local i64 @ecma_is_value_boolean(i32) #1

declare dso_local i32 @ecma_op_to_object(i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_value_undefined(i32) #1

declare dso_local i64 @ecma_is_value_null(i32) #1

declare dso_local i32* @ecma_op_create_object_object_noarg(...) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
