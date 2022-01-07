; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_suspend.c_page_key_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__* }
%struct.page = type { i32 }

@page_key_rp = common dso_local global %struct.TYPE_2__* null, align 8
@page_key_rx = common dso_local global i64 0, align 8
@PAGE_KEY_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_key_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @page_key_rp, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* @page_key_rx, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %4, align 1
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 127
  %16 = trunc i32 %15 to i8
  %17 = call i32 @page_set_storage_key(i64 %12, i8 zeroext %16, i32 0)
  %18 = load i8*, i8** %2, align 8
  %19 = call %struct.page* @virt_to_page(i8* %18)
  store %struct.page* %19, %struct.page** %3, align 8
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @arch_set_page_nodat(%struct.page* %25, i32 0)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @arch_set_page_dat(%struct.page* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @page_key_rx, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* @page_key_rx, align 8
  %33 = load i64, i64* @PAGE_KEY_DATA_SIZE, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @page_key_rp, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** @page_key_rp, align 8
  store i64 0, i64* @page_key_rx, align 8
  br label %40

40:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @page_set_storage_key(i64, i8 zeroext, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @arch_set_page_nodat(%struct.page*, i32) #1

declare dso_local i32 @arch_set_page_dat(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
