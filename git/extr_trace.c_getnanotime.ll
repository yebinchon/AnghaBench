; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_getnanotime.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_getnanotime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getnanotime.offset = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnanotime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @getnanotime.offset, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @getnanotime.offset, align 4
  %8 = call i32 (...) @highres_nanos()
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %1, align 4
  br label %27

10:                                               ; preds = %0
  %11 = load i32, i32* @getnanotime.offset, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @gettimeofday_nanos()
  store i32 %14, i32* %1, align 4
  br label %27

15:                                               ; preds = %10
  %16 = call i32 (...) @gettimeofday_nanos()
  store i32 %16, i32* %2, align 4
  %17 = call i32 (...) @highres_nanos()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* @getnanotime.offset, align 4
  br label %25

24:                                               ; preds = %15
  store i32 1, i32* @getnanotime.offset, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %13, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @highres_nanos(...) #1

declare dso_local i32 @gettimeofday_nanos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
