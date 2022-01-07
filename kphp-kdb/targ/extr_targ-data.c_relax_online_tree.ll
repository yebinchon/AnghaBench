; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_relax_online_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_relax_online_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLIST_COUNT = common dso_local global i32 0, align 4
@ocntT = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relax_online_tree() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @OLIST_COUNT, align 4
  %3 = sub nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  store i64 %4, i64* %1, align 8
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i64, i64* %1, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i64*, i64** @ocntT, align 8
  %10 = load i64, i64* %1, align 8
  %11 = mul nsw i64 2, %10
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @ocntT, align 8
  %15 = load i64, i64* %1, align 8
  %16 = mul nsw i64 2, %15
  %17 = add nsw i64 %16, 1
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %13, %19
  %21 = load i64*, i64** @ocntT, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %8
  %25 = load i64, i64* %1, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %1, align 8
  br label %5

27:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
