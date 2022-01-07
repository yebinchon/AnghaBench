; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_put.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cb = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl_cb_put(%struct.nl_cb* %0) #0 {
  %2 = alloca %struct.nl_cb*, align 8
  store %struct.nl_cb* %0, %struct.nl_cb** %2, align 8
  %3 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %4 = icmp ne %struct.nl_cb* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %8 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %12 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %6
  %18 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %19 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %24 = call i32 @free(%struct.nl_cb* %23)
  br label %25

25:                                               ; preds = %5, %22, %17
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @free(%struct.nl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
