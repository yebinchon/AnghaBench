; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getUptime.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getUptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_BOOTTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Platform_getUptime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %8 = load i32, i32* @CTL_KERN, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @KERN_BOOTTIME, align 4
  store i32 %10, i32* %9, align 4
  store i64 4, i64* %5, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = call i32 @sysctl(i32* %11, i32 2, %struct.timeval* %2, i64* %5, i32* null, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %24

16:                                               ; preds = %0
  %17 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @difftime(i32 %19, i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @sysctl(i32*, i32, %struct.timeval*, i64*, i32*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @difftime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
