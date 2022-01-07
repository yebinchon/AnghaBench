; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_not.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.grep_expr* }
%struct.grep_pat = type { i32, %struct.grep_pat* }

@.str = private unnamed_addr constant [41 x i8] c"--not not followed by pattern expression\00", align 1
@GREP_NODE_NOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"--not followed by non pattern expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_pat**)* @compile_pattern_not to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @compile_pattern_not(%struct.grep_pat** %0) #0 {
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
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %13 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %45 [
    i32 128, label %15
  ]

15:                                               ; preds = %11
  %16 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %17 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %16, i32 0, i32 1
  %18 = load %struct.grep_pat*, %struct.grep_pat** %17, align 8
  %19 = icmp ne %struct.grep_pat* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %24 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %23, i32 0, i32 1
  %25 = load %struct.grep_pat*, %struct.grep_pat** %24, align 8
  %26 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  store %struct.grep_pat* %25, %struct.grep_pat** %26, align 8
  %27 = call %struct.grep_expr* @xcalloc(i32 1, i32 16)
  store %struct.grep_expr* %27, %struct.grep_expr** %5, align 8
  %28 = load i32, i32* @GREP_NODE_NOT, align 4
  %29 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %30 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %32 = call %struct.grep_expr* @compile_pattern_not(%struct.grep_pat** %31)
  %33 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %34 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.grep_expr* %32, %struct.grep_expr** %35, align 8
  %36 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %37 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.grep_expr*, %struct.grep_expr** %38, align 8
  %40 = icmp ne %struct.grep_expr* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %22
  %42 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %22
  %44 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %44, %struct.grep_expr** %2, align 8
  br label %48

45:                                               ; preds = %11
  %46 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %47 = call %struct.grep_expr* @compile_pattern_atom(%struct.grep_pat** %46)
  store %struct.grep_expr* %47, %struct.grep_expr** %2, align 8
  br label %48

48:                                               ; preds = %45, %43, %10
  %49 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  ret %struct.grep_expr* %49
}

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.grep_expr* @xcalloc(i32, i32) #1

declare dso_local %struct.grep_expr* @compile_pattern_atom(%struct.grep_pat**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
