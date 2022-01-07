; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_ifstmt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_ifstmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@t = common dso_local global i64 0, align 8
@refinc = common dso_local global double 0.000000e+00, align 8
@ELSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @ifstmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifstmt(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i64 (...) @gettok()
  store i64 %9, i64* @t, align 8
  %10 = call i32 @expect(i8 signext 40)
  %11 = call i32 @definept(i32* null)
  %12 = call i32 @conditional(i8 signext 41)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @walk(i32 %12, i32 0, i32 %13)
  %15 = load double, double* @refinc, align 8
  %16 = fdiv double %15, 2.000000e+00
  store double %16, double* @refinc, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @statement(i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @t, align 8
  %22 = load i64, i64* @ELSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @branch(i32 %26)
  %28 = call i64 (...) @gettok()
  store i64 %28, i64* @t, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @definelab(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @statement(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = call %struct.TYPE_2__* @findlabel(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @definelab(i32 %43)
  br label %45

45:                                               ; preds = %41, %24
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @definelab(i32 %47)
  br label %49

49:                                               ; preds = %46, %45
  ret void
}

declare dso_local i64 @gettok(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @conditional(i8 signext) #1

declare dso_local i32 @statement(i32, i32, i32) #1

declare dso_local i32 @branch(i32) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local %struct.TYPE_2__* @findlabel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
