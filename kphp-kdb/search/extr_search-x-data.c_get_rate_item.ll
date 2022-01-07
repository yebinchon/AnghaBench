; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_rate_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_rate_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32*, i32 }

@FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.item*, i32)* @get_rate_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rate_item(%struct.item* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.item*, %struct.item** %4, align 8
  %8 = icmp ne %struct.item* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.item*, %struct.item** %4, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FLAG_DELETED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %36

17:                                               ; preds = %9
  %18 = load %struct.item*, %struct.item** %4, align 8
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_bitno(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.item*, %struct.item** %4, align 8
  %27 = getelementptr inbounds %struct.item, %struct.item* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %32, %25 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @get_bitno(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
