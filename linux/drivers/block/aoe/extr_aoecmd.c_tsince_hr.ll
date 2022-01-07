; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_tsince_hr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_tsince_hr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.frame*)* @tsince_hr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsince_hr(%struct.frame* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame*, align 8
  %4 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %3, align 8
  %5 = call i32 (...) @ktime_get()
  %6 = load %struct.frame*, %struct.frame** %3, align 8
  %7 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ktime_sub(i32 %5, i32 %8)
  %10 = call i32 @ktime_to_ns(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @UINT_MAX, align 4
  %13 = icmp sle i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NSEC_PER_USEC, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = load i32, i32* @NSEC_PER_USEC, align 4
  %25 = mul nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @INT_MAX, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NSEC_PER_USEC, align 4
  %32 = call i32 @div_u64(i32 %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
