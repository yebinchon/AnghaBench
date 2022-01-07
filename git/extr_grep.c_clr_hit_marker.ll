; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_clr_hit_marker.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_clr_hit_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.grep_expr*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@GREP_NODE_OR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_expr*)* @clr_hit_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clr_hit_marker(%struct.grep_expr* %0) #0 {
  %2 = alloca %struct.grep_expr*, align 8
  store %struct.grep_expr* %0, %struct.grep_expr** %2, align 8
  br label %3

3:                                                ; preds = %1, %12
  %4 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  %5 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  %7 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GREP_NODE_OR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  %14 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  %20 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.grep_expr*, %struct.grep_expr** %22, align 8
  store %struct.grep_expr* %23, %struct.grep_expr** %2, align 8
  br label %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
