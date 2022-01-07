; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_iotiming_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_iotiming_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { i32 }
%struct.s3c_iotimings = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.s3c2412_iobank_timing* }
%struct.s3c2412_iobank_timing = type { i32 }

@S3C2412_EBI_BANKCFG = common dso_local global i32 0, align 4
@MAX_BANKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2412_iotiming_get(%struct.s3c_cpufreq_config* %0, %struct.s3c_iotimings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_cpufreq_config*, align 8
  %5 = alloca %struct.s3c_iotimings*, align 8
  %6 = alloca %struct.s3c2412_iobank_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %4, align 8
  store %struct.s3c_iotimings* %1, %struct.s3c_iotimings** %5, align 8
  %9 = load i32, i32* @S3C2412_EBI_BANKCFG, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MAX_BANKS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @bank_is_io(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %42

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.s3c2412_iobank_timing* @kzalloc(i32 4, i32 %22)
  store %struct.s3c2412_iobank_timing* %23, %struct.s3c2412_iobank_timing** %6, align 8
  %24 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %6, align 8
  %25 = icmp ne %struct.s3c2412_iobank_timing* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %6, align 8
  %31 = load %struct.s3c_iotimings*, %struct.s3c_iotimings** %5, align 8
  %32 = getelementptr inbounds %struct.s3c_iotimings, %struct.s3c_iotimings* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.s3c2412_iobank_timing* %30, %struct.s3c2412_iobank_timing** %37, align 8
  %38 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %39 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @s3c2412_iotiming_getbank(%struct.s3c_cpufreq_config* %38, %struct.s3c2412_iobank_timing* %39, i32 %40)
  br label %42

42:                                               ; preds = %29, %20
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load %struct.s3c_iotimings*, %struct.s3c_iotimings** %5, align 8
  %47 = call i32 @s3c2412_print_timing(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.s3c_iotimings* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @bank_is_io(i32, i32) #1

declare dso_local %struct.s3c2412_iobank_timing* @kzalloc(i32, i32) #1

declare dso_local i32 @s3c2412_iotiming_getbank(%struct.s3c_cpufreq_config*, %struct.s3c2412_iobank_timing*, i32) #1

declare dso_local i32 @s3c2412_print_timing(i8*, %struct.s3c_iotimings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
