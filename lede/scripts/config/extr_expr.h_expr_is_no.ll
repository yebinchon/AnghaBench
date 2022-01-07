; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_expr.h_expr_is_no.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_expr.h_expr_is_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@E_SYMBOL = common dso_local global i64 0, align 8
@symbol_no = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expr*)* @expr_is_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_is_no(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %2, align 8
  %3 = load %struct.expr*, %struct.expr** %2, align 8
  %4 = icmp ne %struct.expr* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.expr*, %struct.expr** %2, align 8
  %7 = getelementptr inbounds %struct.expr, %struct.expr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @E_SYMBOL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = load %struct.expr*, %struct.expr** %2, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, @symbol_no
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i1 [ false, %5 ], [ %16, %11 ]
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i1 [ false, %1 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
