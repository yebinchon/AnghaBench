; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_make_secret.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_make_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @make_secret() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %0, %14
  %4 = call i32 (...) @lrand48()
  %5 = ashr i32 %4, 15
  %6 = and i32 %5, 65535
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* %1, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %1, align 8
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %1, align 8
  %16 = shl i64 %15, 16
  store i64 %16, i64* %1, align 8
  br label %3

17:                                               ; preds = %13
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
