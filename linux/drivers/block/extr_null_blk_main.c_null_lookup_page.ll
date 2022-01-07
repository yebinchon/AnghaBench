; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_lookup_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_lookup_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_page = type { i32 }
%struct.nullb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_page* (%struct.nullb*, i32, i32, i32)* @null_lookup_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_page* @null_lookup_page(%struct.nullb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nullb_page*, align 8
  %6 = alloca %struct.nullb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nullb_page*, align 8
  store %struct.nullb* %0, %struct.nullb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nullb_page* null, %struct.nullb_page** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.nullb*, %struct.nullb** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.nullb_page* @__null_lookup_page(%struct.nullb* %14, i32 %15, i32 %16, i32 1)
  store %struct.nullb_page* %17, %struct.nullb_page** %10, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load %struct.nullb_page*, %struct.nullb_page** %10, align 8
  %20 = icmp ne %struct.nullb_page* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.nullb_page*, %struct.nullb_page** %10, align 8
  store %struct.nullb_page* %22, %struct.nullb_page** %5, align 8
  br label %28

23:                                               ; preds = %18
  %24 = load %struct.nullb*, %struct.nullb** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.nullb_page* @__null_lookup_page(%struct.nullb* %24, i32 %25, i32 %26, i32 0)
  store %struct.nullb_page* %27, %struct.nullb_page** %5, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load %struct.nullb_page*, %struct.nullb_page** %5, align 8
  ret %struct.nullb_page* %29
}

declare dso_local %struct.nullb_page* @__null_lookup_page(%struct.nullb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
