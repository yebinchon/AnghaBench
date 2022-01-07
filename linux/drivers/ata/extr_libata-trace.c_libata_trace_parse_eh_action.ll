; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_eh_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_eh_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"REVALIDATE \00", align 1
@ATA_EH_SOFTRESET = common dso_local global i32 0, align 4
@ATA_EH_HARDRESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"RESET \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SOFTRESET \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HARDRESET \00", align 1
@ATA_EH_ENABLE_LINK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"ENABLE_LINK \00", align 1
@ATA_EH_PARK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"PARK \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libata_trace_parse_eh_action(%struct.trace_seq* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %7 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %2
  %14 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %15 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %22 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ATA_EH_SOFTRESET, align 4
  %26 = load i32, i32* @ATA_EH_HARDRESET, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %32 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %51

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ATA_EH_SOFTRESET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %40 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ATA_EH_HARDRESET, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %48 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ATA_EH_ENABLE_LINK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %58 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ATA_EH_PARK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %66 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %69 = call i32 @trace_seq_putc(%struct.trace_seq* %68, i8 signext 125)
  br label %70

70:                                               ; preds = %67, %2
  %71 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %72 = call i32 @trace_seq_putc(%struct.trace_seq* %71, i8 signext 0)
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
