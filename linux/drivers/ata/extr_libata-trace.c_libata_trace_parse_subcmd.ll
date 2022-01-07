; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_subcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_subcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c" READ_LOG_DMA_EXT\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" ZAC_MGMT_IN\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" WRITE_LOG_DMA_EXT\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" DATASET_MANAGEMENT\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" ABORT_QUEUE\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" SET_FEATURES\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" ZERO_EXT\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" ZAC_MGMT_OUT\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" REPORT_ZONES\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" CLOSE_ZONE\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" FINISH_ZONE\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" OPEN_ZONE\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c" RESET_WRITE_POINTER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libata_trace_parse_subcmd(%struct.trace_seq* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %11 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %75 [
    i32 145, label %14
    i32 144, label %25
    i32 143, label %36
    i32 142, label %52
    i32 141, label %59
  ]

14:                                               ; preds = %4
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 95
  switch i32 %17, label %24 [
    i32 140, label %18
    i32 139, label %21
  ]

18:                                               ; preds = %14
  %19 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %20 = call i32 @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %23 = call i32 @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %14, %21, %18
  br label %75

25:                                               ; preds = %4
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 95
  switch i32 %28, label %35 [
    i32 137, label %29
    i32 138, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %31 = call i32 @trace_seq_printf(%struct.trace_seq* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %34 = call i32 @trace_seq_printf(%struct.trace_seq* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %25, %32, %29
  br label %75

36:                                               ; preds = %4
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  switch i32 %38, label %51 [
    i32 136, label %39
    i32 135, label %42
    i32 133, label %45
    i32 134, label %48
  ]

39:                                               ; preds = %36
  %40 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %41 = call i32 @trace_seq_printf(%struct.trace_seq* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %51

42:                                               ; preds = %36
  %43 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %44 = call i32 @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %47 = call i32 @trace_seq_printf(%struct.trace_seq* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %50 = call i32 @trace_seq_printf(%struct.trace_seq* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %51

51:                                               ; preds = %36, %48, %45, %42, %39
  br label %75

52:                                               ; preds = %4
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  switch i32 %54, label %58 [
    i32 132, label %55
  ]

55:                                               ; preds = %52
  %56 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %57 = call i32 @trace_seq_printf(%struct.trace_seq* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %55
  br label %75

59:                                               ; preds = %4
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  switch i32 %61, label %74 [
    i32 131, label %62
    i32 130, label %65
    i32 129, label %68
    i32 128, label %71
  ]

62:                                               ; preds = %59
  %63 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %64 = call i32 @trace_seq_printf(%struct.trace_seq* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %74

65:                                               ; preds = %59
  %66 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %67 = call i32 @trace_seq_printf(%struct.trace_seq* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %74

68:                                               ; preds = %59
  %69 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %70 = call i32 @trace_seq_printf(%struct.trace_seq* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %74

71:                                               ; preds = %59
  %72 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %73 = call i32 @trace_seq_printf(%struct.trace_seq* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %74

74:                                               ; preds = %59, %71, %68, %65, %62
  br label %75

75:                                               ; preds = %4, %74, %58, %51, %35, %24
  %76 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %77 = call i32 @trace_seq_putc(%struct.trace_seq* %76, i32 0)
  %78 = load i8*, i8** %9, align 8
  ret i8* %78
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
