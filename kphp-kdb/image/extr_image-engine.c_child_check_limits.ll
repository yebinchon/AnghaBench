; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_child_check_limits.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_child_check_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmsize_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"[%d] exceeds vmsize_limit\0A\00", align 1
@rss_memory_limit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[%d] exceeds rss_memory_limit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @child_check_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_check_limits(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [2 x i64], align 16
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %7 = call i64 @am_get_memory_usage(i64 %5, i64* %6, i32 2)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %12 = load i64, i64* %11, align 16
  %13 = load i64, i64* @vmsize_limit, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %2, align 4
  br label %29

19:                                               ; preds = %10
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @rss_memory_limit, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %24, %15, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @am_get_memory_usage(i64, i64*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
