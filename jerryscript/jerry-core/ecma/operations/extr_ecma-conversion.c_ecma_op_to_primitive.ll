; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_primitive.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_to_primitive(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ecma_check_value_type_is_spec_defined(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ecma_is_value_object(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @ecma_get_object_from_value(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ecma_op_object_default_value(i32* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ecma_copy_value(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ecma_check_value_type_is_spec_defined(i32) #1

declare dso_local i64 @ecma_is_value_object(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32 @ecma_op_object_default_value(i32*, i32) #1

declare dso_local i32 @ecma_copy_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
