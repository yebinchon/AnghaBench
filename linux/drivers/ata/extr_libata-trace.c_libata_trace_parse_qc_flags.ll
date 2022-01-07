; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_qc_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_qc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ACTIVE \00", align 1
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"DMAMAP \00", align 1
@ATA_QCFLAG_IO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"IO \00", align 1
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"RESULT_TF \00", align 1
@ATA_QCFLAG_CLEAR_EXCL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"CLEAR_EXCL \00", align 1
@ATA_QCFLAG_QUIET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"QUIET \00", align 1
@ATA_QCFLAG_RETRY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"RETRY \00", align 1
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"FAILED \00", align 1
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"SENSE_VALID \00", align 1
@ATA_QCFLAG_EH_SCHEDULED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"EH_SCHEDULED \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libata_trace_parse_qc_flags(%struct.trace_seq* %0, i32 %1) #0 {
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
  br i1 %12, label %13, label %98

13:                                               ; preds = %2
  %14 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %15 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %22 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %30 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %38 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %46 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ATA_QCFLAG_CLEAR_EXCL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %54 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ATA_QCFLAG_QUIET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %62 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ATA_QCFLAG_RETRY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %70 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %78 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %86 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @ATA_QCFLAG_EH_SCHEDULED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %94 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %97 = call i32 @trace_seq_putc(%struct.trace_seq* %96, i8 signext 125)
  br label %98

98:                                               ; preds = %95, %2
  %99 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %100 = call i32 @trace_seq_putc(%struct.trace_seq* %99, i8 signext 0)
  %101 = load i8*, i8** %5, align 8
  ret i8* %101
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
