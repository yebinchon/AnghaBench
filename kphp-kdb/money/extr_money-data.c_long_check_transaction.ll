; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_long_check_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_long_check_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@trs_cancelled = common dso_local global i64 0, align 8
@trs_long_locked = common dso_local global i64 0, align 8
@trs_committed = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@LONG_LOCK_CANCEL_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @long_check_transaction(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.TYPE_4__* @get_transaction(i64 %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @trs_cancelled, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @trs_long_locked, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @trs_committed, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %78

32:                                               ; preds = %25, %19, %13
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %78

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %41 = call i32 @compute_lock_codes(%struct.TYPE_4__* %39, i64* %40)
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %78

52:                                               ; preds = %46, %38
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @trs_committed, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %78

59:                                               ; preds = %52
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @trs_cancelled, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 3, i32* %3, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i64, i64* @now, align 8
  %73 = load i64, i64* @LONG_LOCK_CANCEL_TIMEOUT, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %66
  store i32 2, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %65, %58, %51, %37, %31, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @get_transaction(i64) #1

declare dso_local i32 @compute_lock_codes(%struct.TYPE_4__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
