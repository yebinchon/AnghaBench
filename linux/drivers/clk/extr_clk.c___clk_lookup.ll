; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @__clk_lookup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.clk_core*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.clk_core* @clk_core_lookup(i8* %4)
  store %struct.clk_core* %5, %struct.clk_core** %3, align 8
  %6 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %7 = icmp ne %struct.clk_core* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %11 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.clk*, %struct.clk** %13, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi %struct.clk* [ null, %8 ], [ %14, %9 ]
  ret %struct.clk* %16
}

declare dso_local %struct.clk_core* @clk_core_lookup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
