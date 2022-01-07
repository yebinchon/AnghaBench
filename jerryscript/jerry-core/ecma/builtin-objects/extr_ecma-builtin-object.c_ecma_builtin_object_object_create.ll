; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_create.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-object.c_ecma_builtin_object_object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Argument is not an object.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ecma_builtin_object_object_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_object_object_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ecma_is_value_object(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ecma_is_value_null(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @ecma_raise_type_error(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %12, %2
  store i32* null, i32** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ecma_is_value_null(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @ecma_get_object_from_value(i32 %24)
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @ecma_op_create_object_object_noarg_and_set_prototype(i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ecma_is_value_undefined(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ecma_builtin_object_object_define_properties(i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @ECMA_IS_VALUE_ERROR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @ecma_deref_object(i32* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ecma_free_value(i32 %44)
  br label %46

46:                                               ; preds = %43, %26
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ecma_make_object_value(i32* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %39, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ecma_is_value_object(i32) #1

declare dso_local i32 @ecma_is_value_null(i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32* @ecma_op_create_object_object_noarg_and_set_prototype(i32*) #1

declare dso_local i32 @ecma_is_value_undefined(i32) #1

declare dso_local i32 @ecma_builtin_object_object_define_properties(i32*, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_deref_object(i32*) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
