; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_prepare_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-log-split.c_prepare_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WRITE_THRESHOLD = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4
@WB = common dso_local global i32 0, align 4
@wst = common dso_local global i32 0, align 4
@WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* @WRITE_THRESHOLD, align 4
  store i32 %6, i32* %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @WRITE_THRESHOLD, align 4
  %13 = icmp sle i32 %11, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @wptr, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @WB, align 4
  store i32 %21, i32* @wst, align 4
  store i32 %21, i32* @wptr, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i32, i32* @WB, align 4
  %24 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @wptr, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @flush_out()
  br label %32

32:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flush_out(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
