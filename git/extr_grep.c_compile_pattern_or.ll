; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_or.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_pattern_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.grep_expr*, %struct.grep_expr* }
%struct.grep_pat = type { i64, i32 }

@GREP_CLOSE_PAREN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"not a pattern expression %s\00", align 1
@GREP_NODE_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_pat**)* @compile_pattern_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @compile_pattern_or(%struct.grep_pat** %0) #0 {
  %2 = alloca %struct.grep_expr*, align 8
  %3 = alloca %struct.grep_pat**, align 8
  %4 = alloca %struct.grep_pat*, align 8
  %5 = alloca %struct.grep_expr*, align 8
  %6 = alloca %struct.grep_expr*, align 8
  %7 = alloca %struct.grep_expr*, align 8
  store %struct.grep_pat** %0, %struct.grep_pat*** %3, align 8
  %8 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %9 = call %struct.grep_expr* @compile_pattern_and(%struct.grep_pat** %8)
  store %struct.grep_expr* %9, %struct.grep_expr** %5, align 8
  %10 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %11 = load %struct.grep_pat*, %struct.grep_pat** %10, align 8
  store %struct.grep_pat* %11, %struct.grep_pat** %4, align 8
  %12 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %13 = icmp ne %struct.grep_expr* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %16 = icmp ne %struct.grep_pat* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %19 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GREP_CLOSE_PAREN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.grep_pat**, %struct.grep_pat*** %3, align 8
  %25 = call %struct.grep_expr* @compile_pattern_or(%struct.grep_pat** %24)
  store %struct.grep_expr* %25, %struct.grep_expr** %6, align 8
  %26 = load %struct.grep_expr*, %struct.grep_expr** %6, align 8
  %27 = icmp ne %struct.grep_expr* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %30 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = call %struct.grep_expr* @xcalloc(i32 1, i32 24)
  store %struct.grep_expr* %34, %struct.grep_expr** %7, align 8
  %35 = load i32, i32* @GREP_NODE_OR, align 4
  %36 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %37 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %39 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %40 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store %struct.grep_expr* %38, %struct.grep_expr** %42, align 8
  %43 = load %struct.grep_expr*, %struct.grep_expr** %6, align 8
  %44 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  %45 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.grep_expr* %43, %struct.grep_expr** %47, align 8
  %48 = load %struct.grep_expr*, %struct.grep_expr** %7, align 8
  store %struct.grep_expr* %48, %struct.grep_expr** %2, align 8
  br label %51

49:                                               ; preds = %17, %14, %1
  %50 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %50, %struct.grep_expr** %2, align 8
  br label %51

51:                                               ; preds = %49, %33
  %52 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  ret %struct.grep_expr* %52
}

declare dso_local %struct.grep_expr* @compile_pattern_and(%struct.grep_pat**) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local %struct.grep_expr* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
