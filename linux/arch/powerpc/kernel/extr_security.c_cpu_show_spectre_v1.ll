; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_cpu_show_spectre_v1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_security.c_cpu_show_spectre_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.seq_buf = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SEC_FTR_BNDS_CHK_SPEC_BAR = common dso_local global i32 0, align 4
@barrier_nospec_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Mitigation: __user pointer sanitization\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Vulnerable\00", align 1
@SEC_FTR_SPEC_BAR_ORI31 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c", ori31 speculation barrier enabled\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_spectre_v1(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.seq_buf, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = sub nsw i64 %9, 1
  %11 = call i32 @seq_buf_init(%struct.seq_buf* %7, i8* %8, i64 %10)
  %12 = load i32, i32* @SEC_FTR_BNDS_CHK_SPEC_BAR, align 4
  %13 = call i64 @security_ftr_enabled(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i64, i64* @barrier_nospec_enabled, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %22

20:                                               ; preds = %15
  %21 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* @SEC_FTR_SPEC_BAR_ORI31, align 4
  %24 = call i64 @security_ftr_enabled(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @seq_buf_printf(%struct.seq_buf* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i8*, i64) #1

declare dso_local i64 @security_ftr_enabled(i32) #1

declare dso_local i32 @seq_buf_printf(%struct.seq_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
