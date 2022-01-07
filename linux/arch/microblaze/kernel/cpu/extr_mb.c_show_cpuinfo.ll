; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_mb.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_mb.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@family_string_lookup = common dso_local global %struct.TYPE_4__* null, align 8
@cpuinfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cpu_ver_lookup = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [98 x i8] c"CPU-Family:\09MicroBlaze\0AFPGA-Arch:\09%s\0ACPU-Ver:\09%s, %s endian\0ACPU-MHz:\09%d.%02d\0ABogoMips:\09%lu.%02lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"HW:\0A Shift:\09\09%s\0A MSR:\09\09%s\0A PCMP:\09\09%s\0A DIV:\09\09%s\0A\00", align 1
@PVR0_USE_BARREL_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@PVR2_USE_MSR_INSTR = common dso_local global i32 0, align 4
@PVR2_USE_PCMP_INSTR = common dso_local global i32 0, align 4
@PVR0_USE_DIV_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c" MMU:\09\09%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" MUL:\09\09%s\0A FPU:\09\09%s\0A\00", align 1
@PVR2_USE_MUL64_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@PVR0_USE_HW_MUL_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@PVR2_USE_FPU2_MASK = common dso_local global i32 0, align 4
@PVR0_USE_FPU_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c" Exc:\09\09%s%s%s%s%s%s%s%s\0A\00", align 1
@PVR2_OPCODE_0x0_ILL_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"op0x0 \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PVR2_UNALIGNED_EXC_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"unal \00", align 1
@PVR2_ILL_OPCODE_EXC_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"ill \00", align 1
@PVR2_IOPB_BUS_EXC_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"iopb \00", align 1
@PVR2_DOPB_BUS_EXC_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"dopb \00", align 1
@PVR2_DIV_ZERO_EXC_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"zero \00", align 1
@PVR2_FPU_EXC_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"fpu \00", align 1
@PVR2_USE_FSL_EXC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"fsl \00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Stream-insns:\09%sprivileged\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Icache:\09\09%ukB\09line length:\09%dB\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Icache:\09\09no\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Dcache:\09\09%ukB\09line length:\09%dB\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Dcache-Policy:\09\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"write-back\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"write-through\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Dcache:\09\09no\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"HW-Debug:\09%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"PVR-USR1:\09%02x\0APVR-USR2:\09%08x\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Page size:\09%lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %5, align 8
  br label %37

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %25, %8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 1), align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %47, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %6, align 8
  br label %67

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %38

67:                                               ; preds = %55, %38
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 19), align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 2), align 8
  %76 = sdiv i32 %75, 1000000
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 2), align 8
  %78 = srem i32 %77, 1000000
  %79 = load i32, i32* @loops_per_jiffy, align 4
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 500000, %80
  %82 = sdiv i32 %79, %81
  %83 = load i32, i32* @loops_per_jiffy, align 4
  %84 = load i32, i32* @HZ, align 4
  %85 = sdiv i32 5000, %84
  %86 = sdiv i32 %83, %85
  %87 = srem i32 %86, 100
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70, i8* %74, i32 %76, i32 %78, i32 %82, i32 %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %91 = load i32, i32* @PVR0_USE_BARREL_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %97 = load i32, i32* @PVR2_USE_MSR_INSTR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %103 = load i32, i32* @PVR2_USE_PCMP_INSTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %109 = load i32, i32* @PVR0_USE_DIV_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %95, i8* %101, i8* %107, i8* %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 4), align 8
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 5), align 8
  %120 = load i32, i32* @PVR2_USE_MUL64_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %67
  br label %131

124:                                              ; preds = %67
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 5), align 8
  %126 = load i32, i32* @PVR0_USE_HW_MUL_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  br label %131

131:                                              ; preds = %124, %123
  %132 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %123 ], [ %130, %124 ]
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 4
  %134 = load i32, i32* @PVR2_USE_FPU2_MASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %145

138:                                              ; preds = %131
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 4
  %140 = load i32, i32* @PVR0_USE_FPU_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  br label %145

145:                                              ; preds = %138, %137
  %146 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %137 ], [ %144, %138 ]
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %132, i8* %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %150 = load i32, i32* @PVR2_OPCODE_0x0_ILL_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %156 = load i32, i32* @PVR2_UNALIGNED_EXC_MASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %162 = load i32, i32* @PVR2_ILL_OPCODE_EXC_MASK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %168 = load i32, i32* @PVR2_IOPB_BUS_EXC_MASK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %174 = load i32, i32* @PVR2_DOPB_BUS_EXC_MASK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %180 = load i32, i32* @PVR2_DIV_ZERO_EXC_MASK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %186 = load i32, i32* @PVR2_FPU_EXC_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 8
  %192 = load i32, i32* @PVR2_USE_FSL_EXC, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %197 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %154, i8* %160, i8* %166, i8* %172, i8* %178, i8* %184, i8* %190, i8* %196)
  %198 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 18), align 8
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %203 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* %202)
  %204 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 17), align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %145
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 8), align 4
  %209 = ashr i32 %208, 10
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 16), align 8
  %211 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %209, i32 %210)
  br label %215

212:                                              ; preds = %145
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = call i32 @seq_puts(%struct.seq_file* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %206
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 15), align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %215
  %219 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 9), align 8
  %221 = ashr i32 %220, 10
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 14), align 8
  %223 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %225 = call i32 @seq_puts(%struct.seq_file* %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 13), align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %230 = call i32 @seq_puts(%struct.seq_file* %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  br label %234

231:                                              ; preds = %218
  %232 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %233 = call i32 @seq_puts(%struct.seq_file* %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %228
  br label %238

235:                                              ; preds = %215
  %236 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %237 = call i32 @seq_puts(%struct.seq_file* %236, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %234
  %239 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %240 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 12), align 8
  %241 = icmp ne i64 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %244 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* %243)
  %245 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 11), align 8
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 10), align 4
  %248 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 %246, i32 %247)
  %249 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %250 = load i8*, i8** @PAGE_SIZE, align 8
  %251 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* %250)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
