; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_buff_set_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_buff_set_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_buff_len = common dso_local global i32 0, align 4
@result_buff_pos = common dso_local global i32 0, align 4
@buff = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_buff_set_pos(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @cur_buff_len, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @result_buff_pos, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @result_buff_pos, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @buff, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* @wptr, align 4
  br label %20

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* @result_buff_pos, align 4
  %19 = load i32, i32* @buff, align 4
  store i32 %19, i32* @wptr, align 4
  br label %20

20:                                               ; preds = %17, %11, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
