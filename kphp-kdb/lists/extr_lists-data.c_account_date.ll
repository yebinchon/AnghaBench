; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_account_date.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_account_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@account_min_date = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@account_max_date = common dso_local global i32 0, align 4
@account_date_step = common dso_local global i32 0, align 4
@account_date_buckets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @account_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @account_date(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @account_min_date, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32*, i32** @R, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @account_max_date, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32*, i32** @R, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @account_min_date, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, i32* @account_date_step, align 4
  %21 = sdiv i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %35

27:                                               ; preds = %11
  %28 = load i32*, i32** @R, align 8
  %29 = load i32, i32* @account_date_buckets, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %15
  br label %36

36:                                               ; preds = %35, %6
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
