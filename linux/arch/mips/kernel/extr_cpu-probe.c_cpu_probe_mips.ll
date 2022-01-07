; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_mips.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_mips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32, i32, i8* }

@_CACHE_UNCACHED_ACCELERATED = common dso_local global i8* null, align 8
@PRID_IMP_MASK = common dso_local global i32 0, align 4
@_CACHE_UNCACHED = common dso_local global i8* null, align 8
@CPU_QEMU_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MIPS GENERIC QEMU\00", align 1
@__cpu_name = common dso_local global i8** null, align 8
@CPU_4KC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"MIPS 4Kc\00", align 1
@CPU_4KEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"MIPS 4KEc\00", align 1
@CPU_4KSC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"MIPS 4KSc\00", align 1
@CPU_5KC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"MIPS 5Kc\00", align 1
@CPU_5KE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"MIPS 5KE\00", align 1
@CPU_20KC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"MIPS 20Kc\00", align 1
@CPU_24K = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"MIPS 24Kc\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"MIPS 24KEc\00", align 1
@CPU_25KF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"MIPS 25Kc\00", align 1
@CPU_34K = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"MIPS 34Kc\00", align 1
@CPU_74K = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"MIPS 74Kc\00", align 1
@CPU_M14KC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"MIPS M14Kc\00", align 1
@CPU_M14KEC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"MIPS M14KEc\00", align 1
@CPU_1004K = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"MIPS 1004Kc\00", align 1
@CPU_1074K = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"MIPS 1074Kc\00", align 1
@CPU_INTERAPTIV = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"MIPS interAptiv\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"MIPS interAptiv (multi)\00", align 1
@CPU_PROAPTIV = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"MIPS proAptiv\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"MIPS proAptiv (multi)\00", align 1
@CPU_P5600 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"MIPS P5600\00", align 1
@CPU_P6600 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"MIPS P6600\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"MIPS I6400\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"MIPS I6500\00", align 1
@CPU_M5150 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"MIPS M5150\00", align 1
@CPU_M6250 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"MIPS M6250\00", align 1
@MIPS_CPU_SHARED_FTLB_ENTRIES = common dso_local global i32 0, align 4
@MIPS_CPU_SHARED_FTLB_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*, i32)* @cpu_probe_mips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_mips(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** @_CACHE_UNCACHED_ACCELERATED, align 8
  %6 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %7 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PRID_IMP_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %281 [
    i32 128, label %13
    i32 148, label %24
    i32 147, label %35
    i32 146, label %35
    i32 145, label %46
    i32 144, label %46
    i32 143, label %57
    i32 142, label %68
    i32 153, label %79
    i32 152, label %90
    i32 151, label %102
    i32 150, label %114
    i32 149, label %125
    i32 141, label %138
    i32 136, label %149
    i32 135, label %160
    i32 155, label %171
    i32 154, label %184
    i32 137, label %195
    i32 138, label %206
    i32 129, label %217
    i32 130, label %226
    i32 132, label %235
    i32 131, label %243
    i32 140, label %251
    i32 139, label %258
    i32 134, label %265
    i32 133, label %273
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %15 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %16 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @CPU_QEMU_GENERIC, align 4
  %18 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i8**, i8*** @__cpu_name, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %281

24:                                               ; preds = %2
  %25 = load i32, i32* @CPU_4KC, align 4
  %26 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %29 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8**, i8*** @__cpu_name, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %281

35:                                               ; preds = %2, %2
  %36 = load i32, i32* @CPU_4KEC, align 4
  %37 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %40 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8**, i8*** @__cpu_name, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  br label %281

46:                                               ; preds = %2, %2
  %47 = load i32, i32* @CPU_4KSC, align 4
  %48 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %49 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %51 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i8**, i8*** @__cpu_name, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  br label %281

57:                                               ; preds = %2
  %58 = load i32, i32* @CPU_5KC, align 4
  %59 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %60 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %62 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %63 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i8**, i8*** @__cpu_name, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %67, align 8
  br label %281

68:                                               ; preds = %2
  %69 = load i32, i32* @CPU_5KE, align 4
  %70 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %73 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %74 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i8**, i8*** @__cpu_name, align 8
  %76 = load i32, i32* %4, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %78, align 8
  br label %281

79:                                               ; preds = %2
  %80 = load i32, i32* @CPU_20KC, align 4
  %81 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %82 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %84 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %85 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i8**, i8*** @__cpu_name, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %89, align 8
  br label %281

90:                                               ; preds = %2
  %91 = load i8*, i8** @CPU_24K, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %94 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %96 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %97 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i8**, i8*** @__cpu_name, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %101, align 8
  br label %281

102:                                              ; preds = %2
  %103 = load i8*, i8** @CPU_24K, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %106 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %108 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %109 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8**, i8*** @__cpu_name, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %113, align 8
  br label %281

114:                                              ; preds = %2
  %115 = load i32, i32* @CPU_25KF, align 4
  %116 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %117 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %119 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %120 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i8**, i8*** @__cpu_name, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %124, align 8
  br label %281

125:                                              ; preds = %2
  %126 = load i32, i32* @CPU_34K, align 4
  %127 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %128 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %130 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i8**, i8*** @__cpu_name, align 8
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %135, align 8
  %136 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %137 = call i32 @cpu_set_mt_per_tc_perf(%struct.cpuinfo_mips* %136)
  br label %281

138:                                              ; preds = %2
  %139 = load i32, i32* @CPU_74K, align 4
  %140 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %141 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %143 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %144 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8**, i8*** @__cpu_name, align 8
  %146 = load i32, i32* %4, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %148, align 8
  br label %281

149:                                              ; preds = %2
  %150 = load i32, i32* @CPU_M14KC, align 4
  %151 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %152 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %154 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %155 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load i8**, i8*** @__cpu_name, align 8
  %157 = load i32, i32* %4, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %159, align 8
  br label %281

160:                                              ; preds = %2
  %161 = load i32, i32* @CPU_M14KEC, align 4
  %162 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %163 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %165 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %166 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load i8**, i8*** @__cpu_name, align 8
  %168 = load i32, i32* %4, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %170, align 8
  br label %281

171:                                              ; preds = %2
  %172 = load i32, i32* @CPU_1004K, align 4
  %173 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %174 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %176 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %177 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load i8**, i8*** @__cpu_name, align 8
  %179 = load i32, i32* %4, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %181, align 8
  %182 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %183 = call i32 @cpu_set_mt_per_tc_perf(%struct.cpuinfo_mips* %182)
  br label %281

184:                                              ; preds = %2
  %185 = load i32, i32* @CPU_1074K, align 4
  %186 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %187 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load i8*, i8** @_CACHE_UNCACHED, align 8
  %189 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %190 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load i8**, i8*** @__cpu_name, align 8
  %192 = load i32, i32* %4, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %194, align 8
  br label %281

195:                                              ; preds = %2
  %196 = load i8*, i8** @CPU_INTERAPTIV, align 8
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %199 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i8**, i8*** @__cpu_name, align 8
  %201 = load i32, i32* %4, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %203, align 8
  %204 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %205 = call i32 @cpu_set_mt_per_tc_perf(%struct.cpuinfo_mips* %204)
  br label %281

206:                                              ; preds = %2
  %207 = load i8*, i8** @CPU_INTERAPTIV, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %210 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load i8**, i8*** @__cpu_name, align 8
  %212 = load i32, i32* %4, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8** %214, align 8
  %215 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %216 = call i32 @cpu_set_mt_per_tc_perf(%struct.cpuinfo_mips* %215)
  br label %281

217:                                              ; preds = %2
  %218 = load i8*, i8** @CPU_PROAPTIV, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %221 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i8**, i8*** @__cpu_name, align 8
  %223 = load i32, i32* %4, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %225, align 8
  br label %281

226:                                              ; preds = %2
  %227 = load i8*, i8** @CPU_PROAPTIV, align 8
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %230 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load i8**, i8*** @__cpu_name, align 8
  %232 = load i32, i32* %4, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** %234, align 8
  br label %281

235:                                              ; preds = %2
  %236 = load i32, i32* @CPU_P5600, align 4
  %237 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %238 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load i8**, i8*** @__cpu_name, align 8
  %240 = load i32, i32* %4, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %242, align 8
  br label %281

243:                                              ; preds = %2
  %244 = load i32, i32* @CPU_P6600, align 4
  %245 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %246 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load i8**, i8*** @__cpu_name, align 8
  %248 = load i32, i32* %4, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %250, align 8
  br label %281

251:                                              ; preds = %2
  %252 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %253 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %252, i32 0, i32 1
  store i32 157, i32* %253, align 4
  %254 = load i8**, i8*** @__cpu_name, align 8
  %255 = load i32, i32* %4, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %254, i64 %256
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %257, align 8
  br label %281

258:                                              ; preds = %2
  %259 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %260 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %259, i32 0, i32 1
  store i32 156, i32* %260, align 4
  %261 = load i8**, i8*** @__cpu_name, align 8
  %262 = load i32, i32* %4, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8** %264, align 8
  br label %281

265:                                              ; preds = %2
  %266 = load i32, i32* @CPU_M5150, align 4
  %267 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %268 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load i8**, i8*** @__cpu_name, align 8
  %270 = load i32, i32* %4, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %269, i64 %271
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %272, align 8
  br label %281

273:                                              ; preds = %2
  %274 = load i32, i32* @CPU_M6250, align 4
  %275 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %276 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  %277 = load i8**, i8*** @__cpu_name, align 8
  %278 = load i32, i32* %4, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %280, align 8
  br label %281

281:                                              ; preds = %2, %273, %265, %258, %251, %243, %235, %226, %217, %206, %195, %184, %171, %160, %149, %138, %125, %114, %102, %90, %79, %68, %57, %46, %35, %24, %13
  %282 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %283 = call i32 @decode_configs(%struct.cpuinfo_mips* %282)
  %284 = call i32 (...) @spram_config()
  %285 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %286 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @__get_cpu_type(i32 %287)
  switch i32 %288, label %301 [
    i32 156, label %289
    i32 157, label %295
  ]

289:                                              ; preds = %281
  %290 = load i32, i32* @MIPS_CPU_SHARED_FTLB_ENTRIES, align 4
  %291 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %292 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %281, %289
  %296 = load i32, i32* @MIPS_CPU_SHARED_FTLB_RAM, align 4
  %297 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %298 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  br label %301

301:                                              ; preds = %281, %295
  br label %302

302:                                              ; preds = %301
  ret void
}

declare dso_local i32 @cpu_set_mt_per_tc_perf(%struct.cpuinfo_mips*) #1

declare dso_local i32 @decode_configs(%struct.cpuinfo_mips*) #1

declare dso_local i32 @spram_config(...) #1

declare dso_local i32 @__get_cpu_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
