; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, %struct.module*, i32 }
%struct.module = type { i32 }

@__clk_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__clk_put(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = icmp ne %struct.clk* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = call i32 @IS_ERR(%struct.clk* %7)
  %9 = call i64 @WARN_ON_ONCE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %86

12:                                               ; preds = %6
  %13 = call i32 (...) @clk_prepare_lock()
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.clk*, %struct.clk** %2, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.clk*, %struct.clk** %2, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, %23
  store i32 %29, i32* %27, align 8
  %30 = load %struct.clk*, %struct.clk** %2, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @clk_core_rate_unprotect(%struct.TYPE_3__* %32)
  %34 = load %struct.clk*, %struct.clk** %2, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %19, %12
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 4
  %39 = call i32 @hlist_del(i32* %38)
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.clk*, %struct.clk** %2, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %36
  %50 = load %struct.clk*, %struct.clk** %2, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.clk*, %struct.clk** %2, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %49, %36
  %60 = load %struct.clk*, %struct.clk** %2, align 8
  %61 = getelementptr inbounds %struct.clk, %struct.clk* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.clk*, %struct.clk** %2, align 8
  %64 = getelementptr inbounds %struct.clk, %struct.clk* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @clk_core_set_rate_nolock(%struct.TYPE_3__* %62, i64 %67)
  br label %69

69:                                               ; preds = %59, %49
  %70 = load %struct.clk*, %struct.clk** %2, align 8
  %71 = getelementptr inbounds %struct.clk, %struct.clk* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load %struct.module*, %struct.module** %73, align 8
  store %struct.module* %74, %struct.module** %3, align 8
  %75 = load %struct.clk*, %struct.clk** %2, align 8
  %76 = getelementptr inbounds %struct.clk, %struct.clk* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* @__clk_release, align 4
  %80 = call i32 @kref_put(i32* %78, i32 %79)
  %81 = call i32 (...) @clk_prepare_unlock()
  %82 = load %struct.module*, %struct.module** %3, align 8
  %83 = call i32 @module_put(%struct.module* %82)
  %84 = load %struct.clk*, %struct.clk** %2, align 8
  %85 = call i32 @free_clk(%struct.clk* %84)
  br label %86

86:                                               ; preds = %69, %11
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_core_rate_unprotect(%struct.TYPE_3__*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @clk_core_set_rate_nolock(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @free_clk(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
