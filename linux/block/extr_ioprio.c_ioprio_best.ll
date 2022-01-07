; ModuleID = '/home/carl/AnghaBench/linux/block/extr_ioprio.c_ioprio_best.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_ioprio.c_ioprio_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@IOPRIO_NORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioprio_best(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = call i32 @ioprio_valid(i16 zeroext %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %10 = load i32, i32* @IOPRIO_NORM, align 4
  %11 = call zeroext i16 @IOPRIO_PRIO_VALUE(i32 %9, i32 %10)
  store i16 %11, i16* %3, align 2
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i16, i16* %4, align 2
  %14 = call i32 @ioprio_valid(i16 zeroext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %18 = load i32, i32* @IOPRIO_NORM, align 4
  %19 = call zeroext i16 @IOPRIO_PRIO_VALUE(i32 %17, i32 %18)
  store i16 %19, i16* %4, align 2
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i16, i16* %3, align 2
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @min(i16 zeroext %21, i16 zeroext %22)
  ret i32 %23
}

declare dso_local i32 @ioprio_valid(i16 zeroext) #1

declare dso_local zeroext i16 @IOPRIO_PRIO_VALUE(i32, i32) #1

declare dso_local i32 @min(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
