; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_date_pm.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_date_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, %struct.tm*, i32*)* @date_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @date_pm(%struct.tm* %0, %struct.tm* %1, i32* %2) #0 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.tm*, %struct.tm** %5, align 8
  %13 = call i32 @GIT_UNUSED(%struct.tm* %12)
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tm*, %struct.tm** %4, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.tm*, %struct.tm** %4, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %26, 12
  %28 = add nsw i32 %27, 12
  %29 = load %struct.tm*, %struct.tm** %4, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @GIT_UNUSED(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
