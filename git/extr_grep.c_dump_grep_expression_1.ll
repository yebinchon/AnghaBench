; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_dump_grep_expression_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_dump_grep_expression_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.grep_expr*, i32 }
%struct.TYPE_3__ = type { %struct.grep_expr*, %struct.grep_expr* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(not\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(and\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"(or\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_expr*, i32)* @dump_grep_expression_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_grep_expression_1(%struct.grep_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.grep_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.grep_expr* %0, %struct.grep_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @indent(i32 %5)
  %7 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %8 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %74 [
    i32 128, label %10
    i32 131, label %13
    i32 130, label %19
    i32 132, label %32
    i32 129, label %53
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %15 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dump_grep_pat(i32 %17)
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %23 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.grep_expr*, %struct.grep_expr** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  call void @dump_grep_expression_1(%struct.grep_expr* %25, i32 %27)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @indent(i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

32:                                               ; preds = %2
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %36 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.grep_expr*, %struct.grep_expr** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  call void @dump_grep_expression_1(%struct.grep_expr* %39, i32 %41)
  %42 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %43 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.grep_expr*, %struct.grep_expr** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  call void @dump_grep_expression_1(%struct.grep_expr* %46, i32 %48)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @indent(i32 %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

53:                                               ; preds = %2
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %57 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.grep_expr*, %struct.grep_expr** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  call void @dump_grep_expression_1(%struct.grep_expr* %60, i32 %62)
  %63 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %64 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.grep_expr*, %struct.grep_expr** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  call void @dump_grep_expression_1(%struct.grep_expr* %67, i32 %69)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @indent(i32 %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %2, %53, %32, %19, %13, %10
  ret void
}

declare dso_local i32 @indent(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dump_grep_pat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
