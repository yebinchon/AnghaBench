; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_create_immutable_binding.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_create_immutable_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE = common dso_local global i64 0, align 8
@ECMA_PROPERTY_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecma_op_create_immutable_binding(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ecma_is_lexical_environment(i32* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @JERRY_ASSERT(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ecma_get_lex_env_type(i32* %18)
  %20 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @JERRY_ASSERT(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @ECMA_PROPERTY_FIXED, align 4
  %27 = call %struct.TYPE_3__* @ecma_create_named_data_property(i32* %24, i32* %25, i32 %26, i32* null)
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ecma_copy_value_if_not_object(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_get_lex_env_type(i32*) #1

declare dso_local %struct.TYPE_3__* @ecma_create_named_data_property(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ecma_copy_value_if_not_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
