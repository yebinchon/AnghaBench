; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_label.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"_equal\00", align 1
@LOADV = common dso_local global i32 0, align 4
@GENLABEL = common dso_local global i32 0, align 4
@POP = common dso_local global i32 0, align 4
@BACKTRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_label(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @gen_noop()
  %7 = call i32 @gen_lambda(i32 %6)
  %8 = load i32, i32* @LOADV, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @gen_op_unbound(i32 %8, i8* %9)
  %11 = call i32 @gen_lambda(i32 %10)
  %12 = call i32 @BLOCK(i32 %7, i32 %11)
  %13 = call i32 @gen_call(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @GENLABEL, align 4
  %15 = call i32 @gen_op_simple(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @POP, align 4
  %18 = call i32 @gen_op_simple(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BACKTRACK, align 4
  %22 = call i32 @gen_op_simple(i32 %21)
  %23 = call i32 (...) @gen_noop()
  %24 = call i32 @gen_call(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @gen_cond(i32 %20, i32 %22, i32 %24)
  %26 = call i32 @gen_try(i32 %19, i32 %25)
  %27 = call i32 @BLOCK(i32 %18, i32 %26)
  %28 = call i32 @gen_wildvar_binding(i32 %15, i8* %16, i32 %27)
  ret i32 %28
}

declare dso_local i32 @gen_call(i8*, i32) #1

declare dso_local i32 @BLOCK(i32, i32) #1

declare dso_local i32 @gen_lambda(i32) #1

declare dso_local i32 @gen_noop(...) #1

declare dso_local i32 @gen_op_unbound(i32, i8*) #1

declare dso_local i32 @gen_wildvar_binding(i32, i8*, i32) #1

declare dso_local i32 @gen_op_simple(i32) #1

declare dso_local i32 @gen_try(i32, i32) #1

declare dso_local i32 @gen_cond(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
