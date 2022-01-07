; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_init_global_lex_env.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_init_global_lex_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_BUILTIN_ID_GLOBAL = common dso_local global i32 0, align 4
@ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND = common dso_local global i32 0, align 4
@ecma_global_lex_env_cp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecma_init_global_lex_env() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @ECMA_BUILTIN_ID_GLOBAL, align 4
  %4 = call i32* @ecma_builtin_get(i32 %3)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = load i32, i32* @ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND, align 4
  %7 = call i32* @ecma_create_object_lex_env(i32* null, i32* %5, i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32, i32* @ecma_global_lex_env_cp, align 4
  %9 = call i32 @JERRY_CONTEXT(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @ECMA_SET_NON_NULL_POINTER(i32 %9, i32* %10)
  ret void
}

declare dso_local i32* @ecma_builtin_get(i32) #1

declare dso_local i32* @ecma_create_object_lex_env(i32*, i32*, i32) #1

declare dso_local i32 @ECMA_SET_NON_NULL_POINTER(i32, i32*) #1

declare dso_local i32 @JERRY_CONTEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
