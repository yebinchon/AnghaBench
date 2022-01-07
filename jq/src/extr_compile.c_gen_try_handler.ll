; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_try_handler.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_try_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"_equal\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"__jq\00", align 1
@INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_try_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @jv_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @gen_const(i32 %3)
  %5 = call i32 @gen_lambda(i32 %4)
  %6 = call i32 (...) @gen_noop()
  %7 = call i32 @gen_lambda(i32 %6)
  %8 = call i32 (i32, i32, ...) @BLOCK(i32 %5, i32 %7)
  %9 = call i32 @gen_call(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @jv_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @gen_const(i32 %10)
  %12 = call i32 @gen_subexp(i32 %11)
  %13 = call i32 (...) @gen_noop()
  %14 = load i32, i32* @INDEX, align 4
  %15 = call i32 @gen_op_simple(i32 %14)
  %16 = call i32 (i32, i32, ...) @BLOCK(i32 %12, i32 %13, i32 %15)
  %17 = call i32 @gen_and(i32 %9, i32 %16)
  %18 = call i32 (...) @gen_noop()
  %19 = call i32 @gen_call(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @gen_cond(i32 %17, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @gen_cond(i32, i32, i32) #1

declare dso_local i32 @gen_and(i32, i32) #1

declare dso_local i32 @gen_call(i8*, i32) #1

declare dso_local i32 @BLOCK(i32, i32, ...) #1

declare dso_local i32 @gen_lambda(i32) #1

declare dso_local i32 @gen_const(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @gen_noop(...) #1

declare dso_local i32 @gen_subexp(i32) #1

declare dso_local i32 @gen_op_simple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
