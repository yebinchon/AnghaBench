; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-trace.c_libata_trace_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@ATA_BUSY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BUSY \00", align 1
@ATA_DRDY = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@ATA_DF = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@ATA_DSC = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DSC \00", align 1
@ATA_DRQ = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@ATA_CORR = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1
@ATA_SENSE = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SENSE \00", align 1
@ATA_ERR = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libata_trace_parse_status(%struct.trace_seq* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %7 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %9 = call i32 @trace_seq_printf(%struct.trace_seq* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @ATA_BUSY, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %18 = call i32 @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @ATA_DRDY, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %28 = call i32 @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ATA_DF, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %38 = call i32 @trace_seq_printf(%struct.trace_seq* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @ATA_DSC, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %48 = call i32 @trace_seq_printf(%struct.trace_seq* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @ATA_DRQ, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %58 = call i32 @trace_seq_printf(%struct.trace_seq* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @ATA_CORR, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %68 = call i32 @trace_seq_printf(%struct.trace_seq* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @ATA_SENSE, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %78 = call i32 @trace_seq_printf(%struct.trace_seq* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @ATA_ERR, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %88 = call i32 @trace_seq_printf(%struct.trace_seq* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %91 = call i32 @trace_seq_putc(%struct.trace_seq* %90, i8 signext 125)
  %92 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %93 = call i32 @trace_seq_putc(%struct.trace_seq* %92, i8 signext 0)
  %94 = load i8*, i8** %5, align 8
  ret i8* %94
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
