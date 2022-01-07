; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_record_id_cache_compact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_record_id_cache_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i64 }

@erst_record_id_cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@APEI_ERST_INVALID_RECORD_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__erst_record_id_cache_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__erst_record_id_cache_compact() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i32 0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erst_record_id_cache, i32 0, i32 2), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %44

7:                                                ; preds = %0
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erst_record_id_cache, i32 0, i32 1), align 8
  store i64* %8, i64** %3, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %39, %7
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erst_record_id_cache, i32 0, i32 0), align 8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i64*, i64** %3, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @APEI_ERST_INVALID_RECORD_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %39

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64*, i64** %3, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  br label %36

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erst_record_id_cache, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %42, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
