; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64* }
%struct.TYPE_4__ = type { i32 }

@erst_disable = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@erst_record_id_cache = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@erst_lock = common dso_local global i32 0, align 4
@erst_erange = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ERST_RANGE_NVRAM = common dso_local global i32 0, align 4
@APEI_ERST_INVALID_RECORD_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erst_clear(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* @erst_disable, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %67

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock_interruptible(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erst_record_id_cache, i32 0, i32 1))
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* @erst_lock, i64 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @erst_erange, i32 0, i32 0), align 4
  %23 = load i32, i32* @ERST_RANGE_NVRAM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @__erst_clear_from_nvram(i64 %27)
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @__erst_clear_from_storage(i64 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* @erst_lock, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %64

38:                                               ; preds = %32
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erst_record_id_cache, i32 0, i32 2), align 8
  store i64* %39, i64** %7, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erst_record_id_cache, i32 0, i32 0), align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i64, i64* @APEI_ERST_INVALID_RECORD_ID, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %40

62:                                               ; preds = %40
  %63 = call i32 (...) @__erst_record_id_cache_compact()
  br label %64

64:                                               ; preds = %62, %37
  %65 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erst_record_id_cache, i32 0, i32 1))
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %17, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__erst_clear_from_nvram(i64) #1

declare dso_local i32 @__erst_clear_from_storage(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__erst_record_id_cache_compact(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
