; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_clone.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cb = type { i32 }

@NL_CB_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_cb* @nl_cb_clone(%struct.nl_cb* %0) #0 {
  %2 = alloca %struct.nl_cb*, align 8
  %3 = alloca %struct.nl_cb*, align 8
  %4 = alloca %struct.nl_cb*, align 8
  store %struct.nl_cb* %0, %struct.nl_cb** %3, align 8
  %5 = load i32, i32* @NL_CB_DEFAULT, align 4
  %6 = call %struct.nl_cb* @nl_cb_alloc(i32 %5)
  store %struct.nl_cb* %6, %struct.nl_cb** %4, align 8
  %7 = load %struct.nl_cb*, %struct.nl_cb** %4, align 8
  %8 = icmp ne %struct.nl_cb* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.nl_cb* null, %struct.nl_cb** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.nl_cb*, %struct.nl_cb** %4, align 8
  %12 = load %struct.nl_cb*, %struct.nl_cb** %3, align 8
  %13 = call i32 @memcpy(%struct.nl_cb* %11, %struct.nl_cb* %12, i32 4)
  %14 = load %struct.nl_cb*, %struct.nl_cb** %4, align 8
  %15 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.nl_cb*, %struct.nl_cb** %4, align 8
  store %struct.nl_cb* %16, %struct.nl_cb** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  ret %struct.nl_cb* %18
}

declare dso_local %struct.nl_cb* @nl_cb_alloc(i32) #1

declare dso_local i32 @memcpy(%struct.nl_cb*, %struct.nl_cb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
