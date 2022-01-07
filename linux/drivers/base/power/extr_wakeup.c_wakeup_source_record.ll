; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.wakeup_source = type { i64, i64, i64, i64, i64, i32, i32, i32 }

@deleted_ws = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wakeup_source*)* @wakeup_source_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_source_record(%struct.wakeup_source* %0) #0 {
  %2 = alloca %struct.wakeup_source*, align 8
  %3 = alloca i64, align 8
  store %struct.wakeup_source* %0, %struct.wakeup_source** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 0), i64 %4)
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %7 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 8), align 8
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %13 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @ktime_add(i8* %11, i32 %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 8), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 7), align 8
  %17 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %18 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ktime_add(i8* %16, i32 %19)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 7), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 6), align 8
  %22 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %23 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ktime_compare(i32 %21, i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 6), align 8
  br label %33

29:                                               ; preds = %10
  %30 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %31 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 6), align 8
  %35 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %36 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 5), align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 5), align 4
  %42 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %43 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 4), align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 4), align 8
  %49 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %50 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 3), align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 3), align 4
  %56 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %57 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 2), align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 2), align 8
  %63 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %64 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 1), align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 1), align 4
  br label %70

70:                                               ; preds = %33, %1
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deleted_ws, i32 0, i32 0), i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ktime_add(i8*, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
