; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_ClampShort.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_ClampShort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @ClampShort(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, -32768
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i16 -32768, i16* %2, align 2
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 32767
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i16 32767, i16* %2, align 2
  br label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %2, align 2
  br label %14

14:                                               ; preds = %11, %10, %6
  %15 = load i16, i16* %2, align 2
  ret i16 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
