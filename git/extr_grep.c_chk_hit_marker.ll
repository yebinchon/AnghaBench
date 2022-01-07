; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_chk_hit_marker.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_chk_hit_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.grep_expr*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GREP_NODE_OR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_expr*)* @chk_hit_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_hit_marker(%struct.grep_expr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grep_expr*, align 8
  store %struct.grep_expr* %0, %struct.grep_expr** %3, align 8
  br label %4

4:                                                ; preds = %1, %24
  %5 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %6 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GREP_NODE_OR, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %12 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %4
  %15 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %16 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

24:                                               ; preds = %14
  %25 = load %struct.grep_expr*, %struct.grep_expr** %3, align 8
  %26 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.grep_expr*, %struct.grep_expr** %28, align 8
  store %struct.grep_expr* %29, %struct.grep_expr** %3, align 8
  br label %4

30:                                               ; preds = %23, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
