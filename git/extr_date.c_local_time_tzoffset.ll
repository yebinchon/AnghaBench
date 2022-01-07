; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_local_time_tzoffset.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_local_time_tzoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tm*)* @local_time_tzoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_time_tzoffset(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tm* %1, %struct.tm** %5, align 8
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = call i32 @localtime_r(i32* %4, %struct.tm* %9)
  %11 = load %struct.tm*, %struct.tm** %5, align 8
  %12 = call i32 @tm_to_time_t(%struct.tm* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  store i32 -1, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 60
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %31, 60
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 60
  %35 = mul nsw i32 %34, 100
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @tm_to_time_t(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
