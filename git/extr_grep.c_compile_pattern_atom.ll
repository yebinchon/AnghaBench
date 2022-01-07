; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_atom.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.grep_pat* }
%struct.grep_pat = type { i32, %struct.grep_pat* }

@GREP_NODE_ATOM = common dso_local global i32 0, align 4
@GREP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unmatched parenthesis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_pat**)* @compile_pattern_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @compile_pattern_atom(%struct.grep_pat** %0) #0 {
  %2 = alloca %struct.grep_expr*, align 8
  %3 = alloca %struct.grep_pat**, align 8
  %4 = alloca %struct.grep_pat*, align 8
  %5 = alloca %struct.grep_expr*, align 8
  store %struct.grep_pat** %0, %struct.grep_pat*** %3, align 8
  %6 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %7 = load %struct.grep_pat*, %struct.grep_pat** %6, align 8
  store %struct.grep_pat* %7, %struct.grep_pat** %4, align 8
  %8 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %9 = icmp ne %struct.grep_pat* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.grep_expr* null, %struct.grep_expr** %2, align 8
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %13 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %55 [
    i32 130, label %15
    i32 128, label %15
    i32 129, label %15
    i32 131, label %29
  ]

15:                                               ; preds = %11, %11, %11
  %16 = call %struct.grep_expr* @xcalloc(i32 1, i32 16)
  store %struct.grep_expr* %16, %struct.grep_expr** %5, align 8
  %17 = load i32, i32* @GREP_NODE_ATOM, align 4
  %18 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %19 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %21 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %22 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.grep_pat* %20, %struct.grep_pat** %23, align 8
  %24 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %25 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %24, i32 0, i32 1
  %26 = load %struct.grep_pat*, %struct.grep_pat** %25, align 8
  %27 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  store %struct.grep_pat* %26, %struct.grep_pat** %27, align 8
  %28 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %28, %struct.grep_expr** %2, align 8
  br label %56

29:                                               ; preds = %11
  %30 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %31 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %30, i32 0, i32 1
  %32 = load %struct.grep_pat*, %struct.grep_pat** %31, align 8
  %33 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  store %struct.grep_pat* %32, %struct.grep_pat** %33, align 8
  %34 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %35 = call %struct.grep_expr* @compile_pattern_or(%struct.grep_pat** %34)
  store %struct.grep_expr* %35, %struct.grep_expr** %5, align 8
  %36 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %37 = load %struct.grep_pat*, %struct.grep_pat** %36, align 8
  %38 = icmp ne %struct.grep_pat* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %41 = load %struct.grep_pat*, %struct.grep_pat** %40, align 8
  %42 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GREP_CLOSE_PAREN, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %29
  %47 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %50 = load %struct.grep_pat*, %struct.grep_pat** %49, align 8
  %51 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %50, i32 0, i32 1
  %52 = load %struct.grep_pat*, %struct.grep_pat** %51, align 8
  %53 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  store %struct.grep_pat* %52, %struct.grep_pat** %53, align 8
  %54 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %54, %struct.grep_expr** %2, align 8
  br label %56

55:                                               ; preds = %11
  store %struct.grep_expr* null, %struct.grep_expr** %2, align 8
  br label %56

56:                                               ; preds = %55, %48, %15, %10
  %57 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  ret %struct.grep_expr* %57
}

declare dso_local %struct.grep_expr* @xcalloc(i32, i32) #1

declare dso_local %struct.grep_expr* @compile_pattern_or(%struct.grep_pat**) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
