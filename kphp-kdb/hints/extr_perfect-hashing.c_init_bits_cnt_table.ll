; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_perfect-hashing.c_init_bits_cnt_table.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_perfect-hashing.c_init_bits_cnt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_bits_cnt_table.f = internal global i32 0, align 4
@bits_cnt_tbl = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_bits_cnt_table() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @init_bits_cnt_table.f, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %28

5:                                                ; preds = %0
  store i32 1, i32* @init_bits_cnt_table.f, align 4
  %6 = load i64*, i64** @bits_cnt_tbl, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %7, align 8
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %25, %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 65536
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i64*, i64** @bits_cnt_tbl, align 8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %12, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 1, %19
  %21 = load i64*, i64** @bits_cnt_tbl, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %8

28:                                               ; preds = %4, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
