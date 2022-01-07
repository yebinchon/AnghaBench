; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_flush_buff.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_flush_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@result_buff_pos = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@buff = common dso_local global i64 0, align 8
@result_buff_len = common dso_local global i64 0, align 8
@result_buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_buff() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = load i64, i64* @result_buff_pos, align 8
  %3 = load i64, i64* @wptr, align 8
  %4 = load i64, i64* @buff, align 8
  %5 = sub nsw i64 %3, %4
  %6 = add nsw i64 %2, %5
  %7 = load i64, i64* @result_buff_len, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @realloc_buff()
  br label %1

11:                                               ; preds = %1
  %12 = load i64, i64* @result_buff, align 8
  %13 = load i64, i64* @result_buff_pos, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @buff, align 8
  %16 = load i64, i64* @wptr, align 8
  %17 = load i64, i64* @buff, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 @memcpy(i64 %14, i64 %15, i64 %18)
  %20 = load i64, i64* @wptr, align 8
  %21 = load i64, i64* @buff, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* @result_buff_pos, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* @result_buff_pos, align 8
  %25 = load i64, i64* @buff, align 8
  store i64 %25, i64* @wptr, align 8
  ret void
}

declare dso_local i32 @realloc_buff(...) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
