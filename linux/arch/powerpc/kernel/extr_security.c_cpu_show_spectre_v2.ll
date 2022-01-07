; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_cpu_show_spectre_v2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_cpu_show_spectre_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.seq_buf = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SEC_FTR_BCCTRL_SERIALISED = common dso_local global i32 0, align 4
@SEC_FTR_COUNT_CACHE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Mitigation: \00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Indirect branch serialisation (kernel only)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Indirect branch cache disabled\00", align 1
@count_cache_flush_type = common dso_local global i64 0, align 8
@COUNT_CACHE_FLUSH_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Mitigation: Software count cache flush\00", align 1
@COUNT_CACHE_FLUSH_HW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c" (hardware accelerated)\00", align 1
@btb_flush_enabled = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Mitigation: Branch predictor state flush\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Vulnerable\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_spectre_v2(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.seq_buf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @seq_buf_init(%struct.seq_buf* %7, i8* %10, i64 %12)
  %14 = load i32, i32* @SEC_FTR_BCCTRL_SERIALISED, align 4
  %15 = call i32 @security_ftr_enabled(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SEC_FTR_COUNT_CACHE_DISABLED, align 4
  %17 = call i32 @security_ftr_enabled(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20, %3
  %24 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  br label %64

43:                                               ; preds = %20
  %44 = load i64, i64* @count_cache_flush_type, align 8
  %45 = load i64, i64* @COUNT_CACHE_FLUSH_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i64, i64* @count_cache_flush_type, align 8
  %50 = load i64, i64* @COUNT_CACHE_FLUSH_HW, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  br label %63

55:                                               ; preds = %43
  %56 = load i64, i64* @btb_flush_enabled, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %62

60:                                               ; preds = %55
  %61 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %42
  %65 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  ret i32 %67
}

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i8*, i64) #1

declare dso_local i32 @security_ftr_enabled(i32) #1

declare dso_local i32 @seq_buf_printf(%struct.seq_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
