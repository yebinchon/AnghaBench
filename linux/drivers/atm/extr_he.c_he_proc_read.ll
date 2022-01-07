; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.he_dev = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@he_proc_read.mcc = internal global i64 0, align 8
@he_proc_read.oec = internal global i64 0, align 8
@he_proc_read.dcc = internal global i64 0, align 8
@he_proc_read.cec = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ATM he driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Mismatched Cells  VPI/VCI Not Open  Dropped Cells  RCM Dropped Cells\0A\00", align 1
@MCC = common dso_local global i32 0, align 4
@OEC = common dso_local global i32 0, align 4
@DCC = common dso_local global i32 0, align 4
@CEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"%16ld  %16ld  %13ld  %17ld\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"irq_size = %d  inuse = ?  peak = %d\0A\00", align 1
@CONFIG_IRQ_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"tpdrq_size = %d  inuse = ?\0A\00", align 1
@CONFIG_TPDRQ_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"rbrq_size = %d  inuse = ?  peak = %d\0A\00", align 1
@CONFIG_RBRQ_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"tbrq_size = %d  peak = %d\0A\00", align 1
@CONFIG_TBRQ_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"rate controller periods (cbr)\0A                 pcr  #vc\0A\00", align 1
@HE_NUM_CS_STPER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"cs_stper%-2d  %8ld  %3d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"total bw (cbr): %d  (limit %d)\0A\00", align 1
@CONFIG_RBPL_SIZE = common dso_local global i32 0, align 4
@G0_RBPL_S = common dso_local global i32 0, align 4
@G0_RBPL_T = common dso_local global i32 0, align 4
@inuse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32*, i8*)* @he_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_proc_read(%struct.atm_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.he_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %13 = call %struct.he_dev* @HE_DEV(%struct.atm_dev* %12)
  store %struct.he_dev* %13, %struct.he_dev** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %184

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %29 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %32 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %184

39:                                               ; preds = %22
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %184

46:                                               ; preds = %39
  %47 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %48 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %47, i32 0, i32 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %52 = load i32, i32* @MCC, align 4
  %53 = call i64 @he_readl(%struct.he_dev* %51, i32 %52)
  %54 = load i64, i64* @he_proc_read.mcc, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* @he_proc_read.mcc, align 8
  %56 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %57 = load i32, i32* @OEC, align 4
  %58 = call i64 @he_readl(%struct.he_dev* %56, i32 %57)
  %59 = load i64, i64* @he_proc_read.oec, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* @he_proc_read.oec, align 8
  %61 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %62 = load i32, i32* @DCC, align 4
  %63 = call i64 @he_readl(%struct.he_dev* %61, i32 %62)
  %64 = load i64, i64* @he_proc_read.dcc, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* @he_proc_read.dcc, align 8
  %66 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %67 = load i32, i32* @CEC, align 4
  %68 = call i64 @he_readl(%struct.he_dev* %66, i32 %67)
  %69 = load i64, i64* @he_proc_read.cec, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* @he_proc_read.cec, align 8
  %71 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %72 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %71, i32 0, i32 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %46
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* @he_proc_read.mcc, align 8
  %81 = load i64, i64* @he_proc_read.oec, align 8
  %82 = load i64, i64* @he_proc_read.dcc, align 8
  %83 = load i64, i64* @he_proc_read.cec, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %80, i64 %81, i64 %82, i64 %83)
  store i32 %84, i32* %4, align 4
  br label %184

85:                                               ; preds = %46
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %10, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @CONFIG_IRQ_SIZE, align 4
  %92 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %93 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %184

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %10, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* @CONFIG_TPDRQ_SIZE, align 4
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  store i32 %103, i32* %4, align 4
  br label %184

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %10, align 4
  %107 = icmp ne i32 %105, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @CONFIG_RBRQ_SIZE, align 4
  %111 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %112 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %110, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %184

115:                                              ; preds = %104
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* @CONFIG_TBRQ_SIZE, align 4
  %122 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %123 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32 %124)
  store i32 %125, i32* %4, align 4
  br label %184

126:                                              ; preds = %115
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  store i32 %132, i32* %4, align 4
  br label %184

133:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %163, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @HE_NUM_CS_STPER, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %10, align 4
  %141 = icmp ne i32 %139, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %146 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %145, i32 0, i32 7
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %154 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %153, i32 0, i32 7
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i8*, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %144, i32 %152, i32 %160)
  store i32 %161, i32* %4, align 4
  br label %184

162:                                              ; preds = %138
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %134

166:                                              ; preds = %134
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %10, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %7, align 8
  %172 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %173 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.he_dev*, %struct.he_dev** %9, align 8
  %176 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %175, i32 0, i32 6
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 10
  %181 = sdiv i32 %180, 9
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %174, i32 %181)
  store i32 %182, i32* %4, align 4
  br label %184

183:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %170, %142, %130, %119, %108, %100, %89, %78, %43, %26, %19
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.he_dev* @HE_DEV(%struct.atm_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @he_readl(%struct.he_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
