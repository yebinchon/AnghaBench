; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_whilestmt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_whilestmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@refinc = common dso_local global double 0.000000e+00, align 8
@t = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@conditional = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @whilestmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whilestmt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load double, double* @refinc, align 8
  %10 = fmul double %9, 1.000000e+01
  store double %10, double* @refinc, align 8
  %11 = call i32 (...) @gettok()
  store i32 %11, i32* @t, align 4
  %12 = call i32 @expect(i8 signext 40)
  %13 = call i32 @walk(i32* null, i32 0, i32 0)
  %14 = load i32, i32* @src, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @conditional, align 4
  %16 = load i32, i32* @FUNC, align 4
  %17 = call i32* @texpr(i32 %15, i8 signext 41, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @branch(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @definelab(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @statement(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @definelab(i32 %28)
  %30 = call i32 @definept(i32* %7)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @walk(i32* %31, i32 %32, i32 0)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 2
  %36 = call %struct.TYPE_2__* @findlabel(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @definelab(i32 %42)
  br label %44

44:                                               ; preds = %40, %3
  ret void
}

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @walk(i32*, i32, i32) #1

declare dso_local i32* @texpr(i32, i8 signext, i32) #1

declare dso_local i32 @branch(i32) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local i32 @statement(i32, i32, i32) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local %struct.TYPE_2__* @findlabel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
