; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_mode_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_mode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ata_mode_string.xfer_mode_str = internal constant [20 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"PIO0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PIO1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PIO2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PIO3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PIO4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PIO5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PIO6\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MWDMA0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"MWDMA1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"MWDMA2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"MWDMA3\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"MWDMA4\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"UDMA/16\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"UDMA/25\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"UDMA/33\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"UDMA/44\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"UDMA/66\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"UDMA/100\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"UDMA/133\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UDMA7\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"<n/a>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ata_mode_string(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @fls(i64 %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @ata_mode_string.xfer_mode_str, i64 0, i64 0))
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i8*], [20 x i8*]* @ata_mode_string.xfer_mode_str, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %20

19:                                               ; preds = %10, %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
