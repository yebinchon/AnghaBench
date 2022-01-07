; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64* null, align 8
@write_buff = common dso_local global i64* null, align 8
@WRITE_BUFF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_int(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64*, i64** @wptr, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, i64* %5, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 4
  %11 = load i64*, i64** @write_buff, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WRITE_BUFF_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp sgt i64 %10, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @flush_write(i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i64*, i64** @wptr, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32 %23, i32* %29, align 4
  %30 = load i64*, i64** @wptr, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 4
  store i64 %35, i64* %33, align 8
  ret void
}

declare dso_local i32 @flush_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
