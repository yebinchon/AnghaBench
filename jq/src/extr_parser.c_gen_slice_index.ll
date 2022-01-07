; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_gen_slice_index.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_gen_slice_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@INSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @gen_slice_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_slice_index(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @jv_object()
  %11 = call i32 @gen_const(i32 %10)
  %12 = call i32 @gen_subexp(i32 %11)
  %13 = call i32 @jv_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @gen_const(i32 %13)
  %15 = call i32 @gen_subexp(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @gen_subexp(i32 %16)
  %18 = load i32, i32* @INSERT, align 4
  %19 = call i32 @gen_op_simple(i32 %18)
  %20 = call i32 @jv_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @gen_const(i32 %20)
  %22 = call i32 @gen_subexp(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @gen_subexp(i32 %23)
  %25 = load i32, i32* @INSERT, align 4
  %26 = call i32 @gen_op_simple(i32 %25)
  %27 = call i32 (i32, i32, i32, ...) @BLOCK(i32 %12, i32 %15, i32 %17, i32 %19, i32 %22, i32 %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @gen_op_simple(i32 %30)
  %32 = call i32 (i32, i32, i32, ...) @BLOCK(i32 %28, i32 %29, i32 %31)
  ret i32 %32
}

declare dso_local i32 @BLOCK(i32, i32, i32, ...) #1

declare dso_local i32 @gen_subexp(i32) #1

declare dso_local i32 @gen_const(i32) #1

declare dso_local i32 @jv_object(...) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @gen_op_simple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
