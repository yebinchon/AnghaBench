; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_Directive_if.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_Directive_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@INDENT_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Directive_if(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @qtrue, align 4
  %8 = call i32 @PC_Evaluate(i32* %6, i64* %4, i32* null, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @INDENT_IF, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PC_PushIndent(i32* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @qtrue, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @PC_Evaluate(i32*, i64*, i32*, i32) #1

declare dso_local i32 @PC_PushIndent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
