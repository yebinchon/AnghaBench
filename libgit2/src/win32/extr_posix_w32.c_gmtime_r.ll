; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_gmtime_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_gmtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @p_gmtime_r(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.tm* @gmtime(i32* %7)
  store %struct.tm* %8, %struct.tm** %6, align 8
  %9 = load %struct.tm*, %struct.tm** %6, align 8
  %10 = icmp eq %struct.tm* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.tm*, %struct.tm** %5, align 8
  %13 = icmp eq %struct.tm* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %20

15:                                               ; preds = %11
  %16 = load %struct.tm*, %struct.tm** %5, align 8
  %17 = load %struct.tm*, %struct.tm** %6, align 8
  %18 = call i32 @memcpy(%struct.tm* %16, %struct.tm* %17, i32 4)
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  store %struct.tm* %19, %struct.tm** %3, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  ret %struct.tm* %21
}

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @memcpy(%struct.tm*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
