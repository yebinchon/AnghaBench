; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_show_cache_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_show_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"I-cache\09\09: %ld KB\0A\00", align 1
@cache_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%lu-way associative\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"D-cache\09\09: %ld KB (%s%s, %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"WB\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", shared I/D\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"direct mapped\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ITLB entries\09: %ld\0ADTLB entries\09: %ld%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c" - shared with ITLB\00", align 1
@btlb_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"BTLB\09\09: not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [158 x i8] c"BTLB fixed\09: max. %d pages, pagesize=%d (%dMB)\0ABTLB fix-entr.\09: %d instruction, %d data (%d combined)\0ABTLB var-entr.\09: %d instruction, %d data (%d combined)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_cache_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 0), align 8
  %6 = sdiv i32 %5, 1024
  %7 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 1), align 4
  %13 = call i32 @snprintf(i8* %11, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 2), align 8
  %17 = sdiv i32 %16, 1024
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 6, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 6, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 1), align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %31

29:                                               ; preds = %14
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %28 ], [ %30, %29 ]
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %17, i8* %21, i8* %25, i8* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 5), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 4), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cache_info, i32 0, i32 3, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %35, i32 %36, i8* %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 0), align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %59

47:                                               ; preds = %31
  %48 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 0), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 0), align 4
  %51 = ashr i32 %50, 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 2, i32 2), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 2, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 2, i32 0), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 1, i32 2), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 1, i32 1), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btlb_info, i32 0, i32 1, i32 0), align 4
  %58 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.11, i64 0, i64 0), i32 %49, i32 4096, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
