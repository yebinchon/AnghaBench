; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_get_sep_offset.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_get_sep_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.status_block*)* @get_sep_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sep_offset(%struct.status_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.status_block*, align 8
  store %struct.status_block* %0, %struct.status_block** %3, align 8
  %4 = load %struct.status_block*, %struct.status_block** %3, align 8
  %5 = getelementptr inbounds %struct.status_block, %struct.status_block* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.status_block*, %struct.status_block** %3, align 8
  %10 = getelementptr inbounds %struct.status_block, %struct.status_block* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.status_block*, %struct.status_block** %3, align 8
  %15 = getelementptr inbounds %struct.status_block, %struct.status_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 2
  %18 = load %struct.status_block*, %struct.status_block** %3, align 8
  %19 = getelementptr inbounds %struct.status_block, %struct.status_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 2
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
