; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_and.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.grep_expr*, %struct.grep_expr* }
%struct.grep_pat = type { i64, %struct.grep_pat* }

@GREP_AND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"--and not followed by pattern expression\00", align 1
@GREP_NODE_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_pat**)* @compile_pattern_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @compile_pattern_and(%struct.grep_pat** %0) #0 {
  %2 = alloca %struct.grep_expr*, align 8
  %3 = alloca %struct.grep_pat**, align 8
  %4 = alloca %struct.grep_pat*, align 8
  %5 = alloca %struct.grep_expr*, align 8
  %6 = alloca %struct.grep_expr*, align 8
  %7 = alloca %struct.grep_expr*, align 8
  store %struct.grep_pat** %0, %struct.grep_pat*** %3, align 8
  %8 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %9 = call %struct.grep_expr* @compile_pattern_not(%struct.grep_pat** %8)
  store %struct.grep_expr* %9, %struct.grep_expr** %5, align 8
  %10 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %11 = load %struct.grep_pat*, %struct.grep_pat** %10, align 8
  store %struct.grep_pat* %11, %struct.grep_pat** %4, align 8
  %12 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %13 = icmp ne %struct.grep_pat* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %1
  %15 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %16 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GREP_AND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %22 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %21, i32 0, i32 1
  %23 = load %struct.grep_pat*, %struct.grep_pat** %22, align 8
  %24 = icmp ne %struct.grep_pat* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %29 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %28, i32 0, i32 1
  %30 = load %struct.grep_pat*, %struct.grep_pat** %29, align 8
  %31 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  store %struct.grep_pat* %30, %struct.grep_pat** %31, align 8
  %32 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %33 = call %struct.grep_expr* @compile_pattern_and(%struct.grep_pat** %32)
  store %struct.grep_expr* %33, %struct.grep_expr** %6, align 8
  %34 = load %struct.grep_expr*, %struct.grep_expr** %6, align 8
  %35 = icmp ne %struct.grep_expr* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = call %struct.grep_expr* @xcalloc(i32 1, i32 24)
  store %struct.grep_expr* %39, %struct.grep_expr** %7, align 8
  %40 = load i32, i32* @GREP_NODE_AND, align 4
  %41 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %42 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %44 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %45 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store %struct.grep_expr* %43, %struct.grep_expr** %47, align 8
  %48 = load %struct.grep_expr*, %struct.grep_expr** %6, align 8
  %49 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %50 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.grep_expr* %48, %struct.grep_expr** %52, align 8
  %53 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  store %struct.grep_expr* %53, %struct.grep_expr** %2, align 8
  br label %56

54:                                               ; preds = %14, %1
  %55 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %55, %struct.grep_expr** %2, align 8
  br label %56

56:                                               ; preds = %54, %38
  %57 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  ret %struct.grep_expr* %57
}

declare dso_local %struct.grep_expr* @compile_pattern_not(%struct.grep_pat**) #1

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.grep_expr* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
