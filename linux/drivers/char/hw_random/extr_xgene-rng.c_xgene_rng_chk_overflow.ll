; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_chk_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_chk_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_rng_dev = type { i32, i64, i8*, i32 }

@RNG_INTR_STS_ACK = common dso_local global i64 0, align 8
@MONOBIT_FAIL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"test monobit failure error 0x%08X\0A\00", align 1
@POKER_FAIL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"test poker failure error 0x%08X\0A\00", align 1
@LONG_RUN_FAIL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"test long run failure error 0x%08X\0A\00", align 1
@RUN_FAIL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"test run failure error 0x%08X\0A\00", align 1
@NOISE_FAIL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"noise failure error 0x%08X\0A\00", align 1
@STUCK_OUT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"stuck out failure error 0x%08X\0A\00", align 1
@SHUTDOWN_OFLO_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RNG_ALARMSTOP = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"FRO shutdown failure error 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_rng_dev*)* @xgene_rng_chk_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_rng_chk_overflow(%struct.xgene_rng_dev* %0) #0 {
  %2 = alloca %struct.xgene_rng_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgene_rng_dev* %0, %struct.xgene_rng_dev** %2, align 8
  %5 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %6 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RNG_INTR_STS_ACK, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MONOBIT_FAIL_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %17 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @POKER_FAIL_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %28 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @LONG_RUN_FAIL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %39 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @RUN_FAIL_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %50 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @NOISE_FAIL_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %61 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @STUCK_OUT_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %72 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SHUTDOWN_OFLO_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %138

81:                                               ; preds = %76
  %82 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %83 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i8*, i8** @jiffies, align 8
  %89 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %90 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %92 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RNG_ALARMSTOP, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @readl(i64 %95)
  store i32 %96, i32* %4, align 4
  %97 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @xgene_rng_init_fro(%struct.xgene_rng_dev* %97, i32 %98)
  %100 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %101 = call i32 @xgene_rng_start_timer(%struct.xgene_rng_dev* %100)
  br label %137

102:                                              ; preds = %81
  %103 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %104 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 60, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %105, i64 %108
  %110 = load i8*, i8** @jiffies, align 8
  %111 = call i64 @time_after(i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %102
  %114 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %115 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  br label %127

119:                                              ; preds = %102
  %120 = load i8*, i8** @jiffies, align 8
  %121 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %122 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %124 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %126 = call i32 @xgene_rng_start_timer(%struct.xgene_rng_dev* %125)
  br label %127

127:                                              ; preds = %119, %113
  %128 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %129 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RNG_ALARMSTOP, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl(i64 %132)
  store i32 %133, i32* %4, align 4
  %134 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @xgene_rng_init_fro(%struct.xgene_rng_dev* %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %87
  br label %138

138:                                              ; preds = %137, %76
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %141 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @RNG_INTR_STS_ACK, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @xgene_rng_init_fro(%struct.xgene_rng_dev*, i32) #1

declare dso_local i32 @xgene_rng_start_timer(%struct.xgene_rng_dev*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
