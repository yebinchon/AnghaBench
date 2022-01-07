; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_read_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_read_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }
%struct.cper_mce_record = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@APEI_ERST_INVALID_RECORD_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CPER_CREATOR_MCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_read_mce(%struct.mce* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cper_mce_record, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = call i32 @erst_get_record_id_begin(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %50, %36, %14
  %16 = load i64*, i64** %5, align 8
  %17 = call i32 @erst_get_record_id_next(i32* %8, i64* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %57

21:                                               ; preds = %15
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @APEI_ERST_INVALID_RECORD_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %57

27:                                               ; preds = %21
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %6, i32 0, i32 1
  %31 = call i32 @erst_read(i64 %29, %struct.TYPE_2__* %30, i32 8)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %15

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 8
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %6, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @guid_equal(i32* %47, i32* @CPER_CREATOR_MCE)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %41
  br label %15

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.mce*, %struct.mce** %4, align 8
  %55 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %6, i32 0, i32 0
  %56 = call i32 @memcpy(%struct.mce* %54, i32* %55, i32 4)
  store i32 4, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %40, %26, %20
  %58 = call i32 (...) @erst_get_record_id_end()
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @erst_get_record_id_begin(i32*) #1

declare dso_local i32 @erst_get_record_id_next(i32*, i64*) #1

declare dso_local i32 @erst_read(i64, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @guid_equal(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.mce*, i32*, i32) #1

declare dso_local i32 @erst_get_record_id_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
