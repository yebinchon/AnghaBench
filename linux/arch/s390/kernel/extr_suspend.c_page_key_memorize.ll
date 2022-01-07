; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_memorize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_memorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__* }

@page_key_wp = common dso_local global %struct.TYPE_2__* null, align 8
@page_key_wx = common dso_local global i64 0, align 8
@PAGE_KEY_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_key_memorize(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = bitcast i64* %3 to i8*
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @page_key_wp, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i64, i64* @page_key_wx, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 %5, i8* %10, align 1
  %11 = load i64*, i64** %2, align 8
  %12 = bitcast i64* %11 to i8*
  store i8 0, i8* %12, align 1
  %13 = load i64, i64* @page_key_wx, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* @page_key_wx, align 8
  %15 = load i64, i64* @PAGE_KEY_DATA_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @page_key_wp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** @page_key_wp, align 8
  store i64 0, i64* @page_key_wx, align 8
  br label %22

22:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
