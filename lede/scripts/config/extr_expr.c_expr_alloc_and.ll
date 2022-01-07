; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_alloc_and.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_alloc_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32 }

@E_AND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_alloc_and(%struct.expr* %0, %struct.expr* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %6 = load %struct.expr*, %struct.expr** %4, align 8
  %7 = icmp ne %struct.expr* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.expr*, %struct.expr** %5, align 8
  store %struct.expr* %9, %struct.expr** %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.expr*, %struct.expr** %5, align 8
  %12 = icmp ne %struct.expr* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @E_AND, align 4
  %15 = load %struct.expr*, %struct.expr** %4, align 8
  %16 = load %struct.expr*, %struct.expr** %5, align 8
  %17 = call %struct.expr* @expr_alloc_two(i32 %14, %struct.expr* %15, %struct.expr* %16)
  br label %20

18:                                               ; preds = %10
  %19 = load %struct.expr*, %struct.expr** %4, align 8
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi %struct.expr* [ %17, %13 ], [ %19, %18 ]
  store %struct.expr* %21, %struct.expr** %3, align 8
  br label %22

22:                                               ; preds = %20, %8
  %23 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %23
}

declare dso_local %struct.expr* @expr_alloc_two(i32, %struct.expr*, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
