; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cb = type { i32 }

@NL_CB_KIND_MAX = common dso_local global i32 0, align 4
@NL_CB_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_cb* @nl_cb_alloc(i32 %0) #0 {
  %2 = alloca %struct.nl_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_cb*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NL_CB_KIND_MAX, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.nl_cb* null, %struct.nl_cb** %2, align 8
  br label %38

13:                                               ; preds = %8
  %14 = call %struct.nl_cb* @calloc(i32 1, i32 4)
  store %struct.nl_cb* %14, %struct.nl_cb** %5, align 8
  %15 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %16 = icmp ne %struct.nl_cb* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store %struct.nl_cb* null, %struct.nl_cb** %2, align 8
  br label %38

18:                                               ; preds = %13
  %19 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %20 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %30, %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NL_CB_TYPE_MAX, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @nl_cb_set(%struct.nl_cb* %26, i32 %27, i32 %28, i32* null, i32* null)
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @nl_cb_err(%struct.nl_cb* %34, i32 %35, i32* null, i32* null)
  %37 = load %struct.nl_cb*, %struct.nl_cb** %5, align 8
  store %struct.nl_cb* %37, %struct.nl_cb** %2, align 8
  br label %38

38:                                               ; preds = %33, %17, %12
  %39 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  ret %struct.nl_cb* %39
}

declare dso_local %struct.nl_cb* @calloc(i32, i32) #1

declare dso_local i32 @nl_cb_set(%struct.nl_cb*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nl_cb_err(%struct.nl_cb*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
