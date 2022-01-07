; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_or.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DUP = common dso_local global i32 0, align 4
@POP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_or(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @DUP, align 4
  %6 = call i32 @gen_op_simple(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @POP, align 4
  %9 = call i32 @gen_op_simple(i32 %8)
  %10 = call i32 (...) @jv_true()
  %11 = call i32 @gen_const(i32 %10)
  %12 = call i32 (i32, i32, ...) @BLOCK(i32 %9, i32 %11)
  %13 = load i32, i32* @POP, align 4
  %14 = call i32 @gen_op_simple(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (...) @jv_true()
  %17 = call i32 @gen_const(i32 %16)
  %18 = call i32 (...) @jv_false()
  %19 = call i32 @gen_const(i32 %18)
  %20 = call i32 @gen_condbranch(i32 %17, i32 %19)
  %21 = call i32 (i32, i32, ...) @BLOCK(i32 %14, i32 %15, i32 %20)
  %22 = call i32 @gen_condbranch(i32 %12, i32 %21)
  %23 = call i32 (i32, i32, ...) @BLOCK(i32 %6, i32 %7, i32 %22)
  ret i32 %23
}

declare dso_local i32 @BLOCK(i32, i32, ...) #1

declare dso_local i32 @gen_op_simple(i32) #1

declare dso_local i32 @gen_condbranch(i32, i32) #1

declare dso_local i32 @gen_const(i32) #1

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @jv_false(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
