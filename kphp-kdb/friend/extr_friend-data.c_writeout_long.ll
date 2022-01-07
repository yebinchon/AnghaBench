; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_writeout_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_writeout_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i32 0, align 4
@Buff = common dso_local global i32 0, align 4
@BUFFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @writeout_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeout_long(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @wptr, align 4
  %4 = load i32, i32* @Buff, align 4
  %5 = load i32, i32* @BUFFSIZE, align 4
  %6 = add nsw i32 %4, %5
  %7 = sub nsw i32 %6, 8
  %8 = icmp sgt i32 %3, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @flushout()
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* @wptr, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i64*
  store i64 %15, i64* %18, align 8
  %19 = load i32, i32* @wptr, align 4
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* @wptr, align 4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
