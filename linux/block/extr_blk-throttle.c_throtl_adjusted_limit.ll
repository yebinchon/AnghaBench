; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_adjusted_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_adjusted_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.throtl_data*)* @throtl_adjusted_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_adjusted_limit(i32 %0, %struct.throtl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.throtl_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.throtl_data* %1, %struct.throtl_data** %4, align 8
  %5 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %6 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 4096
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %12 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %15 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %18 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = add nsw i32 %13, %20
  %22 = call i64 @time_after_eq(i32 %10, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %9
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %27 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %31 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %35 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %9, %2
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 1
  %40 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %41 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = add nsw i32 %37, %43
  ret i32 %44
}

declare dso_local i64 @time_after_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
