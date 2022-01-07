; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_splice_or.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_splice_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.grep_expr* }

@GREP_NODE_OR = common dso_local global i64 0, align 8
@GREP_NODE_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_expr*, %struct.grep_expr*)* @grep_splice_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @grep_splice_or(%struct.grep_expr* %0, %struct.grep_expr* %1) #0 {
  %3 = alloca %struct.grep_expr*, align 8
  %4 = alloca %struct.grep_expr*, align 8
  %5 = alloca %struct.grep_expr*, align 8
  store %struct.grep_expr* %0, %struct.grep_expr** %3, align 8
  store %struct.grep_expr* %1, %struct.grep_expr** %4, align 8
  %6 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  store %struct.grep_expr* %6, %struct.grep_expr** %5, align 8
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %9 = icmp ne %struct.grep_expr* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %12 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GREP_NODE_OR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %19 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.grep_expr*, %struct.grep_expr** %21, align 8
  %23 = icmp ne %struct.grep_expr* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %10
  %25 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %26 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.grep_expr*, %struct.grep_expr** %28, align 8
  %30 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GREP_NODE_TRUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.grep_expr*, %struct.grep_expr** %4, align 8
  %36 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %37 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.grep_expr* %35, %struct.grep_expr** %39, align 8
  br label %46

40:                                               ; preds = %24, %10
  %41 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %42 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.grep_expr*, %struct.grep_expr** %44, align 8
  store %struct.grep_expr* %45, %struct.grep_expr** %3, align 8
  br label %7

46:                                               ; preds = %34, %7
  %47 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  ret %struct.grep_expr* %47
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
