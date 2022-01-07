; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = icmp ne %struct.clk* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = call i32 (...) @clk_prepare_lock()
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @clk_core_rate_unprotect(i32* %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.clk*, %struct.clk** %5, align 8
  %26 = icmp ne %struct.clk* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.clk*, %struct.clk** %5, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32* [ %30, %27 ], [ null, %31 ]
  %34 = call i32 @clk_core_set_parent_nolock(i32* %24, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.clk*, %struct.clk** %4, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @clk_core_rate_protect(i32* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = call i32 (...) @clk_prepare_unlock()
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @clk_core_rate_unprotect(i32*) #1

declare dso_local i32 @clk_core_set_parent_nolock(i32*, i32*) #1

declare dso_local i32 @clk_core_rate_protect(i32*) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
