; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_pcache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_probe_pcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i8* }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@CONF_IC = common dso_local global i32 0, align 4
@icache_size = common dso_local global i32 0, align 4
@CONF_IB = common dso_local global i32 0, align 4
@CONF_DC = common dso_local global i32 0, align 4
@dcache_size = common dso_local global i32 0, align 4
@CONF_DB = common dso_local global i32 0, align 4
@MIPS_CPU_CACHE_CDEX_P = common dso_local global i32 0, align 4
@MIPS_CPU_PREFETCH = common dso_local global i32 0, align 4
@R10K_CONF_IC = common dso_local global i32 0, align 4
@R10K_CONF_DC = common dso_local global i32 0, align 4
@VR41_CONF_P4K = common dso_local global i32 0, align 4
@VR41_CONF_BP = common dso_local global i32 0, align 4
@PRID_REV_MASK = common dso_local global i32 0, align 4
@PRID_REV_LOONGSON3A_R2_0 = common dso_local global i32 0, align 4
@MIPS_CACHE_VTAG = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Don't know how to probe P-caches on this cpu.\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid icache line size\00", align 1
@MIPS_CONF_VI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid dcache line size\00", align 1
@PRID_IMP_MASK = common dso_local global i32 0, align 4
@PRID_IMP_R4000 = common dso_local global i32 0, align 4
@PRID_REV_R4400 = common dso_local global i32 0, align 4
@CONF_SC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Improper R4000SC processor configuration detected\00", align 1
@MIPS_CACHE_PINDEX = common dso_local global i32 0, align 4
@MIPS_CONF7_IAR = common dso_local global i32 0, align 4
@MIPS_CACHE_ALIASES = common dso_local global i32 0, align 4
@MIPS_CONF7_AR = common dso_local global i32 0, align 4
@MIPS_IC_SNOOPS_REMOTE = common dso_local global i32 0, align 4
@MIPS_CACHE_IC_F_DC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Primary instruction cache %ldkB, %s, %s, linesize %d bytes.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"VIVT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"VIPT\00", align 1
@way_string = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"Primary data cache %ldkB, %s, %s, %s, linesize %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PIPT\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"cache aliases\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"no aliases\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_pcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_pcache() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %7 = call i32 (...) @read_c0_config()
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @read_c0_prid()
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = call i32 (...) @current_cpu_type()
  switch i32 %9, label %674 [
    i32 144, label %10
    i32 143, label %10
    i32 142, label %10
    i32 159, label %10
    i32 141, label %62
    i32 137, label %110
    i32 149, label %161
    i32 148, label %161
    i32 150, label %161
    i32 146, label %161
    i32 145, label %161
    i32 147, label %161
    i32 154, label %207
    i32 153, label %207
    i32 152, label %207
    i32 151, label %207
    i32 132, label %243
    i32 133, label %249
    i32 129, label %331
    i32 136, label %331
    i32 135, label %331
    i32 134, label %331
    i32 131, label %331
    i32 130, label %331
    i32 140, label %377
    i32 165, label %443
    i32 164, label %502
    i32 169, label %616
  ]

10:                                               ; preds = %0, %0, %0, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CONF_IC, align 4
  %13 = and i32 %11, %12
  %14 = lshr i32 %13, 9
  %15 = add i32 12, %14
  %16 = shl i32 1, %15
  store i32 %16, i32* @icache_size, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CONF_IB, align 4
  %19 = and i32 %17, %18
  %20 = lshr i32 %19, 5
  %21 = shl i32 16, %20
  %22 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %26 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* @icache_size, align 4
  %29 = sdiv i32 %28, 2
  %30 = call i8* @__ffs(i32 %29)
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @CONF_DC, align 4
  %36 = and i32 %34, %35
  %37 = lshr i32 %36, 6
  %38 = add i32 12, %37
  %39 = shl i32 1, %38
  store i32 %39, i32* @dcache_size, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @CONF_DB, align 4
  %42 = and i32 %40, %41
  %43 = lshr i32 %42, 4
  %44 = shl i32 16, %43
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %49 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 2, i32* %50, align 4
  %51 = load i32, i32* @dcache_size, align 4
  %52 = sdiv i32 %51, 2
  %53 = call i8* @__ffs(i32 %52)
  %54 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %58 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %59 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %825

62:                                               ; preds = %0
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @CONF_IC, align 4
  %65 = and i32 %63, %64
  %66 = lshr i32 %65, 9
  %67 = add i32 12, %66
  %68 = shl i32 1, %67
  store i32 %68, i32* @icache_size, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @CONF_IB, align 4
  %71 = and i32 %69, %70
  %72 = lshr i32 %71, 5
  %73 = shl i32 16, %72
  %74 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %75 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %78 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  %80 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %81 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  store i8* null, i8** %82, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @CONF_DC, align 4
  %85 = and i32 %83, %84
  %86 = lshr i32 %85, 6
  %87 = add i32 12, %86
  %88 = shl i32 1, %87
  store i32 %88, i32* @dcache_size, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @CONF_DB, align 4
  %91 = and i32 %89, %90
  %92 = lshr i32 %91, 4
  %93 = shl i32 16, %92
  %94 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %95 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %98 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 2, i32* %99, align 4
  %100 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %101 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  store i8* null, i8** %102, align 8
  %103 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %104 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %107 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %825

110:                                              ; preds = %0
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @CONF_IC, align 4
  %113 = and i32 %111, %112
  %114 = lshr i32 %113, 9
  %115 = add i32 12, %114
  %116 = shl i32 1, %115
  store i32 %116, i32* @icache_size, align 4
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @CONF_IB, align 4
  %119 = and i32 %117, %118
  %120 = lshr i32 %119, 5
  %121 = shl i32 16, %120
  %122 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %123 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %126 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i32 4, i32* %127, align 4
  %128 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %129 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  store i8* null, i8** %130, align 8
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @CONF_DC, align 4
  %133 = and i32 %131, %132
  %134 = lshr i32 %133, 6
  %135 = add i32 12, %134
  %136 = shl i32 1, %135
  store i32 %136, i32* @dcache_size, align 4
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* @CONF_DB, align 4
  %139 = and i32 %137, %138
  %140 = lshr i32 %139, 4
  %141 = shl i32 16, %140
  %142 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %143 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %146 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 4, i32* %147, align 4
  %148 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %149 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  store i8* null, i8** %150, align 8
  %151 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %152 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %153 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %157 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %158 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %825

161:                                              ; preds = %0, %0, %0, %0, %0, %0
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* @CONF_IC, align 4
  %164 = and i32 %162, %163
  %165 = lshr i32 %164, 9
  %166 = add i32 12, %165
  %167 = shl i32 1, %166
  store i32 %167, i32* @icache_size, align 4
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* @CONF_IB, align 4
  %170 = and i32 %168, %169
  %171 = lshr i32 %170, 5
  %172 = shl i32 16, %171
  %173 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %174 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %177 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %180 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  store i8* null, i8** %181, align 8
  %182 = load i32, i32* %2, align 4
  %183 = load i32, i32* @CONF_DC, align 4
  %184 = and i32 %182, %183
  %185 = lshr i32 %184, 6
  %186 = add i32 12, %185
  %187 = shl i32 1, %186
  store i32 %187, i32* @dcache_size, align 4
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @CONF_DB, align 4
  %190 = and i32 %188, %189
  %191 = lshr i32 %190, 4
  %192 = shl i32 16, %191
  %193 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %194 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %197 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i32 1, i32* %198, align 4
  %199 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %200 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 5
  store i8* null, i8** %201, align 8
  %202 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %203 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %204 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %825

207:                                              ; preds = %0, %0, %0, %0
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* @R10K_CONF_IC, align 4
  %210 = and i32 %208, %209
  %211 = lshr i32 %210, 29
  %212 = add i32 12, %211
  %213 = shl i32 1, %212
  store i32 %213, i32* @icache_size, align 4
  %214 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %215 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  store i32 64, i32* %216, align 8
  %217 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %218 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  store i32 2, i32* %219, align 4
  %220 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %221 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 5
  store i8* null, i8** %222, align 8
  %223 = load i32, i32* %2, align 4
  %224 = load i32, i32* @R10K_CONF_DC, align 4
  %225 = and i32 %223, %224
  %226 = lshr i32 %225, 26
  %227 = add i32 12, %226
  %228 = shl i32 1, %227
  store i32 %228, i32* @dcache_size, align 4
  %229 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %230 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i32 32, i32* %231, align 8
  %232 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %233 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  store i32 2, i32* %234, align 4
  %235 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %236 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 5
  store i8* null, i8** %237, align 8
  %238 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %239 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %240 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %825

243:                                              ; preds = %0
  %244 = load i32, i32* %2, align 4
  %245 = load i32, i32* @VR41_CONF_P4K, align 4
  %246 = xor i32 %245, -1
  %247 = and i32 %244, %246
  %248 = call i32 @write_c0_config(i32 %247)
  br label %249

249:                                              ; preds = %0, %243
  %250 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %251 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 3200
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %256 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 3201
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %261 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 3202
  br i1 %263, label %264, label %278

264:                                              ; preds = %259, %254, %249
  %265 = load i32, i32* %2, align 4
  %266 = or i32 %265, 4194304
  store i32 %266, i32* %2, align 4
  %267 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %268 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 3200
  br i1 %270, label %271, label %275

271:                                              ; preds = %264
  %272 = load i32, i32* @VR41_CONF_BP, align 4
  %273 = load i32, i32* %2, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %271, %264
  %276 = load i32, i32* %2, align 4
  %277 = call i32 @write_c0_config(i32 %276)
  br label %284

278:                                              ; preds = %259
  %279 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %280 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %281 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %278, %275
  %285 = load i32, i32* %2, align 4
  %286 = load i32, i32* @CONF_IC, align 4
  %287 = and i32 %285, %286
  %288 = lshr i32 %287, 9
  %289 = add i32 10, %288
  %290 = shl i32 1, %289
  store i32 %290, i32* @icache_size, align 4
  %291 = load i32, i32* %2, align 4
  %292 = load i32, i32* @CONF_IB, align 4
  %293 = and i32 %291, %292
  %294 = lshr i32 %293, 5
  %295 = shl i32 16, %294
  %296 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %297 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  store i32 %295, i32* %298, align 8
  %299 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %300 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 1
  store i32 2, i32* %301, align 4
  %302 = load i32, i32* @icache_size, align 4
  %303 = sdiv i32 %302, 2
  %304 = call i8* @__ffs(i32 %303)
  %305 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %306 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 5
  store i8* %304, i8** %307, align 8
  %308 = load i32, i32* %2, align 4
  %309 = load i32, i32* @CONF_DC, align 4
  %310 = and i32 %308, %309
  %311 = lshr i32 %310, 6
  %312 = add i32 10, %311
  %313 = shl i32 1, %312
  store i32 %313, i32* @dcache_size, align 4
  %314 = load i32, i32* %2, align 4
  %315 = load i32, i32* @CONF_DB, align 4
  %316 = and i32 %314, %315
  %317 = lshr i32 %316, 4
  %318 = shl i32 16, %317
  %319 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %320 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  store i32 %318, i32* %321, align 8
  %322 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %323 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  store i32 2, i32* %324, align 4
  %325 = load i32, i32* @dcache_size, align 4
  %326 = sdiv i32 %325, 2
  %327 = call i8* @__ffs(i32 %326)
  %328 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %329 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 5
  store i8* %327, i8** %330, align 8
  br label %825

331:                                              ; preds = %0, %0, %0, %0, %0, %0
  %332 = load i32, i32* %2, align 4
  %333 = load i32, i32* @CONF_IC, align 4
  %334 = and i32 %332, %333
  %335 = lshr i32 %334, 9
  %336 = add i32 10, %335
  %337 = shl i32 1, %336
  store i32 %337, i32* @icache_size, align 4
  %338 = load i32, i32* %2, align 4
  %339 = load i32, i32* @CONF_IB, align 4
  %340 = and i32 %338, %339
  %341 = lshr i32 %340, 5
  %342 = shl i32 16, %341
  %343 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %344 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 0
  store i32 %342, i32* %345, align 8
  %346 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %347 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 1
  store i32 1, i32* %348, align 4
  %349 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %350 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 5
  store i8* null, i8** %351, align 8
  %352 = load i32, i32* %2, align 4
  %353 = load i32, i32* @CONF_DC, align 4
  %354 = and i32 %352, %353
  %355 = lshr i32 %354, 6
  %356 = add i32 10, %355
  %357 = shl i32 1, %356
  store i32 %357, i32* @dcache_size, align 4
  %358 = load i32, i32* %2, align 4
  %359 = load i32, i32* @CONF_DB, align 4
  %360 = and i32 %358, %359
  %361 = lshr i32 %360, 4
  %362 = shl i32 16, %361
  %363 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %364 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 0
  store i32 %362, i32* %365, align 8
  %366 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %367 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  store i32 1, i32* %368, align 4
  %369 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %370 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 5
  store i8* null, i8** %371, align 8
  %372 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %373 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %374 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 8
  br label %825

377:                                              ; preds = %0
  %378 = call i32 (...) @rm7k_erratum31()
  %379 = load i32, i32* %2, align 4
  %380 = load i32, i32* @CONF_IC, align 4
  %381 = and i32 %379, %380
  %382 = lshr i32 %381, 9
  %383 = add i32 12, %382
  %384 = shl i32 1, %383
  store i32 %384, i32* @icache_size, align 4
  %385 = load i32, i32* %2, align 4
  %386 = load i32, i32* @CONF_IB, align 4
  %387 = and i32 %385, %386
  %388 = lshr i32 %387, 5
  %389 = shl i32 16, %388
  %390 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %391 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 0
  store i32 %389, i32* %392, align 8
  %393 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %394 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 1
  store i32 4, i32* %395, align 4
  %396 = load i32, i32* @icache_size, align 4
  %397 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %398 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sdiv i32 %396, %400
  %402 = call i8* @__ffs(i32 %401)
  %403 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %404 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 5
  store i8* %402, i8** %405, align 8
  %406 = load i32, i32* %2, align 4
  %407 = load i32, i32* @CONF_DC, align 4
  %408 = and i32 %406, %407
  %409 = lshr i32 %408, 6
  %410 = add i32 12, %409
  %411 = shl i32 1, %410
  store i32 %411, i32* @dcache_size, align 4
  %412 = load i32, i32* %2, align 4
  %413 = load i32, i32* @CONF_DB, align 4
  %414 = and i32 %412, %413
  %415 = lshr i32 %414, 4
  %416 = shl i32 16, %415
  %417 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %418 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 0
  store i32 %416, i32* %419, align 8
  %420 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %421 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 1
  store i32 4, i32* %422, align 4
  %423 = load i32, i32* @dcache_size, align 4
  %424 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %425 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = sdiv i32 %423, %427
  %429 = call i8* @__ffs(i32 %428)
  %430 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %431 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 5
  store i8* %429, i8** %432, align 8
  %433 = load i32, i32* @MIPS_CPU_CACHE_CDEX_P, align 4
  %434 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %435 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = or i32 %436, %433
  store i32 %437, i32* %435, align 8
  %438 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %439 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %440 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 8
  br label %825

443:                                              ; preds = %0
  %444 = load i32, i32* %2, align 4
  %445 = load i32, i32* @CONF_IC, align 4
  %446 = and i32 %444, %445
  %447 = lshr i32 %446, 9
  %448 = add i32 12, %447
  %449 = shl i32 1, %448
  store i32 %449, i32* @icache_size, align 4
  %450 = load i32, i32* %2, align 4
  %451 = load i32, i32* @CONF_IB, align 4
  %452 = and i32 %450, %451
  %453 = lshr i32 %452, 5
  %454 = shl i32 16, %453
  %455 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %456 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %456, i32 0, i32 0
  store i32 %454, i32* %457, align 8
  %458 = load i32, i32* %3, align 4
  %459 = and i32 %458, 3
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %443
  %462 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %463 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 1
  store i32 4, i32* %464, align 4
  br label %469

465:                                              ; preds = %443
  %466 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %467 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 1
  store i32 2, i32* %468, align 4
  br label %469

469:                                              ; preds = %465, %461
  %470 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %471 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %470, i32 0, i32 3
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 5
  store i8* null, i8** %472, align 8
  %473 = load i32, i32* %2, align 4
  %474 = load i32, i32* @CONF_DC, align 4
  %475 = and i32 %473, %474
  %476 = lshr i32 %475, 6
  %477 = add i32 12, %476
  %478 = shl i32 1, %477
  store i32 %478, i32* @dcache_size, align 4
  %479 = load i32, i32* %2, align 4
  %480 = load i32, i32* @CONF_DB, align 4
  %481 = and i32 %479, %480
  %482 = lshr i32 %481, 4
  %483 = shl i32 16, %482
  %484 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %485 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %484, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 0
  store i32 %483, i32* %486, align 8
  %487 = load i32, i32* %3, align 4
  %488 = and i32 %487, 3
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %469
  %491 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %492 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 1
  store i32 4, i32* %493, align 4
  br label %498

494:                                              ; preds = %469
  %495 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %496 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 1
  store i32 2, i32* %497, align 4
  br label %498

498:                                              ; preds = %494, %490
  %499 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %500 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 5
  store i8* null, i8** %501, align 8
  br label %825

502:                                              ; preds = %0
  %503 = call i64 (...) @read_c0_config1()
  store i64 %503, i64* %5, align 8
  %504 = load i64, i64* %5, align 8
  %505 = lshr i64 %504, 19
  %506 = and i64 %505, 7
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %6, align 4
  %508 = load i32, i32* %6, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %502
  %511 = load i32, i32* %6, align 4
  %512 = shl i32 2, %511
  %513 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %514 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %513, i32 0, i32 3
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i32 0, i32 0
  store i32 %512, i32* %515, align 8
  br label %520

516:                                              ; preds = %502
  %517 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %518 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 0
  store i32 0, i32* %519, align 8
  br label %520

520:                                              ; preds = %516, %510
  %521 = load i64, i64* %5, align 8
  %522 = lshr i64 %521, 22
  %523 = and i64 %522, 7
  %524 = trunc i64 %523 to i32
  %525 = shl i32 64, %524
  %526 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %527 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %526, i32 0, i32 3
  %528 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %527, i32 0, i32 2
  store i32 %525, i32* %528, align 8
  %529 = load i64, i64* %5, align 8
  %530 = lshr i64 %529, 16
  %531 = and i64 %530, 7
  %532 = add i64 1, %531
  %533 = trunc i64 %532 to i32
  %534 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %535 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i32 0, i32 1
  store i32 %533, i32* %536, align 4
  %537 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %538 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %542 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = mul nsw i32 %540, %544
  %546 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %547 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = mul nsw i32 %545, %549
  store i32 %550, i32* @icache_size, align 4
  %551 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %552 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %551, i32 0, i32 3
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 5
  store i8* null, i8** %553, align 8
  %554 = load i64, i64* %5, align 8
  %555 = lshr i64 %554, 10
  %556 = and i64 %555, 7
  %557 = trunc i64 %556 to i32
  store i32 %557, i32* %6, align 4
  %558 = load i32, i32* %6, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %520
  %561 = load i32, i32* %6, align 4
  %562 = shl i32 2, %561
  %563 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %564 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 0
  store i32 %562, i32* %565, align 8
  br label %570

566:                                              ; preds = %520
  %567 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %568 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 0
  store i32 0, i32* %569, align 8
  br label %570

570:                                              ; preds = %566, %560
  %571 = load i64, i64* %5, align 8
  %572 = lshr i64 %571, 13
  %573 = and i64 %572, 7
  %574 = trunc i64 %573 to i32
  %575 = shl i32 64, %574
  %576 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %577 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %576, i32 0, i32 2
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i32 0, i32 2
  store i32 %575, i32* %578, align 8
  %579 = load i64, i64* %5, align 8
  %580 = lshr i64 %579, 7
  %581 = and i64 %580, 7
  %582 = add i64 1, %581
  %583 = trunc i64 %582 to i32
  %584 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %585 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 1
  store i32 %583, i32* %586, align 4
  %587 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %588 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 8
  %591 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %592 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %591, i32 0, i32 2
  %593 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 4
  %595 = mul nsw i32 %590, %594
  %596 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %597 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = mul nsw i32 %595, %599
  store i32 %600, i32* @dcache_size, align 4
  %601 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %602 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %601, i32 0, i32 2
  %603 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i32 0, i32 5
  store i8* null, i8** %603, align 8
  %604 = load i32, i32* %3, align 4
  %605 = load i32, i32* @PRID_REV_MASK, align 4
  %606 = and i32 %604, %605
  %607 = load i32, i32* @PRID_REV_LOONGSON3A_R2_0, align 4
  %608 = icmp uge i32 %606, %607
  br i1 %608, label %609, label %615

609:                                              ; preds = %570
  %610 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %611 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %612 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = or i32 %613, %610
  store i32 %614, i32* %612, align 8
  br label %615

615:                                              ; preds = %609, %570
  br label %825

616:                                              ; preds = %0
  %617 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %618 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %617, i32 0, i32 3
  %619 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %618, i32 0, i32 0
  store i32 128, i32* %619, align 8
  %620 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %621 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %620, i32 0, i32 3
  %622 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %621, i32 0, i32 2
  store i32 16, i32* %622, align 8
  %623 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %624 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 1
  store i32 8, i32* %625, align 4
  %626 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %627 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %628 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %627, i32 0, i32 3
  %629 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %628, i32 0, i32 3
  %630 = load i32, i32* %629, align 4
  %631 = or i32 %630, %626
  store i32 %631, i32* %629, align 4
  %632 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %633 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %632, i32 0, i32 3
  %634 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %637 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %636, i32 0, i32 3
  %638 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = mul nsw i32 %635, %639
  %641 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %642 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %641, i32 0, i32 3
  %643 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = mul nsw i32 %640, %644
  store i32 %645, i32* @icache_size, align 4
  %646 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %647 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %647, i32 0, i32 0
  store i32 128, i32* %648, align 8
  %649 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %650 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %649, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %650, i32 0, i32 1
  store i32 8, i32* %651, align 4
  %652 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %653 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %653, i32 0, i32 2
  store i32 8, i32* %654, align 8
  %655 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %656 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %655, i32 0, i32 2
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 2
  %658 = load i32, i32* %657, align 8
  %659 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %660 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %659, i32 0, i32 2
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = mul nsw i32 %658, %662
  %664 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %665 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 8
  %668 = mul nsw i32 %663, %667
  store i32 %668, i32* @dcache_size, align 4
  %669 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %670 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %671 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 8
  %673 = or i32 %672, %669
  store i32 %673, i32* %671, align 8
  br label %825

674:                                              ; preds = %0
  %675 = load i32, i32* %2, align 4
  %676 = load i32, i32* @MIPS_CONF_M, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %674
  %680 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %681

681:                                              ; preds = %679, %674
  %682 = call i64 (...) @read_c0_config1()
  store i64 %682, i64* %5, align 8
  %683 = load i64, i64* %5, align 8
  %684 = lshr i64 %683, 19
  %685 = and i64 %684, 7
  %686 = trunc i64 %685 to i32
  store i32 %686, i32* %6, align 4
  %687 = load i32, i32* %6, align 4
  %688 = icmp eq i32 %687, 7
  br i1 %688, label %689, label %691

689:                                              ; preds = %681
  %690 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %691

691:                                              ; preds = %689, %681
  %692 = load i32, i32* %6, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %697

694:                                              ; preds = %691
  %695 = load i32, i32* %6, align 4
  %696 = shl i32 2, %695
  br label %698

697:                                              ; preds = %691
  br label %698

698:                                              ; preds = %697, %694
  %699 = phi i32 [ %696, %694 ], [ 0, %697 ]
  %700 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %701 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %700, i32 0, i32 3
  %702 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %701, i32 0, i32 0
  store i32 %699, i32* %702, align 8
  %703 = load i64, i64* %5, align 8
  %704 = lshr i64 %703, 22
  %705 = add i64 %704, 1
  %706 = and i64 %705, 7
  %707 = trunc i64 %706 to i32
  %708 = shl i32 32, %707
  %709 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %710 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %709, i32 0, i32 3
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 2
  store i32 %708, i32* %711, align 8
  %712 = load i64, i64* %5, align 8
  %713 = lshr i64 %712, 16
  %714 = and i64 %713, 7
  %715 = add i64 1, %714
  %716 = trunc i64 %715 to i32
  %717 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %718 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %717, i32 0, i32 3
  %719 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %718, i32 0, i32 1
  store i32 %716, i32* %719, align 4
  %720 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %721 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %720, i32 0, i32 3
  %722 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %721, i32 0, i32 2
  %723 = load i32, i32* %722, align 8
  %724 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %725 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %724, i32 0, i32 3
  %726 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %725, i32 0, i32 1
  %727 = load i32, i32* %726, align 4
  %728 = mul nsw i32 %723, %727
  %729 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %730 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %729, i32 0, i32 3
  %731 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 8
  %733 = mul nsw i32 %728, %732
  store i32 %733, i32* @icache_size, align 4
  %734 = load i32, i32* @icache_size, align 4
  %735 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %736 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %735, i32 0, i32 3
  %737 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 4
  %739 = sdiv i32 %734, %738
  %740 = call i8* @__ffs(i32 %739)
  %741 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %742 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %742, i32 0, i32 5
  store i8* %740, i8** %743, align 8
  %744 = load i32, i32* %2, align 4
  %745 = load i32, i32* @MIPS_CONF_VI, align 4
  %746 = and i32 %744, %745
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %755

748:                                              ; preds = %698
  %749 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %750 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %751 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %750, i32 0, i32 3
  %752 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %751, i32 0, i32 3
  %753 = load i32, i32* %752, align 4
  %754 = or i32 %753, %749
  store i32 %754, i32* %752, align 4
  br label %755

755:                                              ; preds = %748, %698
  %756 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %757 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %756, i32 0, i32 2
  %758 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %757, i32 0, i32 3
  store i32 0, i32* %758, align 4
  %759 = load i64, i64* %5, align 8
  %760 = lshr i64 %759, 10
  %761 = and i64 %760, 7
  %762 = trunc i64 %761 to i32
  store i32 %762, i32* %6, align 4
  %763 = load i32, i32* %6, align 4
  %764 = icmp eq i32 %763, 7
  br i1 %764, label %765, label %767

765:                                              ; preds = %755
  %766 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %767

767:                                              ; preds = %765, %755
  %768 = load i32, i32* %6, align 4
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %773

770:                                              ; preds = %767
  %771 = load i32, i32* %6, align 4
  %772 = shl i32 2, %771
  br label %774

773:                                              ; preds = %767
  br label %774

774:                                              ; preds = %773, %770
  %775 = phi i32 [ %772, %770 ], [ 0, %773 ]
  %776 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %777 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %776, i32 0, i32 2
  %778 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %777, i32 0, i32 0
  store i32 %775, i32* %778, align 8
  %779 = load i64, i64* %5, align 8
  %780 = lshr i64 %779, 13
  %781 = add i64 %780, 1
  %782 = and i64 %781, 7
  %783 = trunc i64 %782 to i32
  %784 = shl i32 32, %783
  %785 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %786 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %785, i32 0, i32 2
  %787 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %786, i32 0, i32 2
  store i32 %784, i32* %787, align 8
  %788 = load i64, i64* %5, align 8
  %789 = lshr i64 %788, 7
  %790 = and i64 %789, 7
  %791 = add i64 1, %790
  %792 = trunc i64 %791 to i32
  %793 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %794 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %793, i32 0, i32 2
  %795 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %794, i32 0, i32 1
  store i32 %792, i32* %795, align 4
  %796 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %797 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %796, i32 0, i32 2
  %798 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %797, i32 0, i32 2
  %799 = load i32, i32* %798, align 8
  %800 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %801 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %800, i32 0, i32 2
  %802 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %801, i32 0, i32 1
  %803 = load i32, i32* %802, align 4
  %804 = mul nsw i32 %799, %803
  %805 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %806 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %805, i32 0, i32 2
  %807 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  %809 = mul nsw i32 %804, %808
  store i32 %809, i32* @dcache_size, align 4
  %810 = load i32, i32* @dcache_size, align 4
  %811 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %812 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %811, i32 0, i32 2
  %813 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = sdiv i32 %810, %814
  %816 = call i8* @__ffs(i32 %815)
  %817 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %818 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %817, i32 0, i32 2
  %819 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %818, i32 0, i32 5
  store i8* %816, i8** %819, align 8
  %820 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %821 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %822 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 8
  %824 = or i32 %823, %820
  store i32 %824, i32* %822, align 8
  br label %825

825:                                              ; preds = %774, %616, %615, %498, %377, %331, %284, %207, %161, %110, %62, %10
  %826 = load i32, i32* %3, align 4
  %827 = load i32, i32* @PRID_IMP_MASK, align 4
  %828 = and i32 %826, %827
  %829 = load i32, i32* @PRID_IMP_R4000, align 4
  %830 = icmp eq i32 %828, %829
  br i1 %830, label %831, label %853

831:                                              ; preds = %825
  %832 = load i32, i32* %3, align 4
  %833 = load i32, i32* @PRID_REV_MASK, align 4
  %834 = and i32 %832, %833
  %835 = load i32, i32* @PRID_REV_R4400, align 4
  %836 = icmp ult i32 %834, %835
  br i1 %836, label %837, label %853

837:                                              ; preds = %831
  %838 = load i32, i32* %2, align 4
  %839 = load i32, i32* @CONF_SC, align 4
  %840 = and i32 %838, %839
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %853, label %842

842:                                              ; preds = %837
  %843 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %844 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %843, i32 0, i32 3
  %845 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 8
  %847 = icmp ne i32 %846, 16
  br i1 %847, label %848, label %853

848:                                              ; preds = %842
  %849 = load i32, i32* @PAGE_SIZE, align 4
  %850 = icmp sle i32 %849, 32768
  br i1 %850, label %851, label %853

851:                                              ; preds = %848
  %852 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %853

853:                                              ; preds = %851, %848, %842, %837, %831, %825
  %854 = load i32, i32* @icache_size, align 4
  %855 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %856 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %855, i32 0, i32 3
  %857 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %856, i32 0, i32 1
  %858 = load i32, i32* %857, align 4
  %859 = sdiv i32 %854, %858
  %860 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %861 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %860, i32 0, i32 3
  %862 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %861, i32 0, i32 4
  store i32 %859, i32* %862, align 8
  %863 = load i32, i32* @dcache_size, align 4
  %864 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %865 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %864, i32 0, i32 2
  %866 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %865, i32 0, i32 1
  %867 = load i32, i32* %866, align 4
  %868 = sdiv i32 %863, %867
  %869 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %870 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %869, i32 0, i32 2
  %871 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %870, i32 0, i32 4
  store i32 %868, i32* %871, align 8
  %872 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %873 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %872, i32 0, i32 3
  %874 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 8
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %889

877:                                              ; preds = %853
  %878 = load i32, i32* @icache_size, align 4
  %879 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %880 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %879, i32 0, i32 3
  %881 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %880, i32 0, i32 0
  %882 = load i32, i32* %881, align 8
  %883 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %884 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %883, i32 0, i32 3
  %885 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %884, i32 0, i32 1
  %886 = load i32, i32* %885, align 4
  %887 = mul nsw i32 %882, %886
  %888 = sdiv i32 %878, %887
  br label %890

889:                                              ; preds = %853
  br label %890

890:                                              ; preds = %889, %877
  %891 = phi i32 [ %888, %877 ], [ 0, %889 ]
  %892 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %893 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %892, i32 0, i32 3
  %894 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %893, i32 0, i32 2
  store i32 %891, i32* %894, align 8
  %895 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %896 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %895, i32 0, i32 2
  %897 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 8
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %912

900:                                              ; preds = %890
  %901 = load i32, i32* @dcache_size, align 4
  %902 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %903 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %902, i32 0, i32 2
  %904 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 8
  %906 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %907 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %906, i32 0, i32 2
  %908 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %907, i32 0, i32 1
  %909 = load i32, i32* %908, align 4
  %910 = mul nsw i32 %905, %909
  %911 = sdiv i32 %901, %910
  br label %913

912:                                              ; preds = %890
  br label %913

913:                                              ; preds = %912, %900
  %914 = phi i32 [ %911, %900 ], [ 0, %912 ]
  %915 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %916 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %915, i32 0, i32 2
  %917 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %916, i32 0, i32 2
  store i32 %914, i32* %917, align 8
  %918 = call i32 (...) @current_cpu_type()
  switch i32 %918, label %965 [
    i32 176, label %919
    i32 174, label %919
    i32 168, label %919
    i32 167, label %919
    i32 139, label %919
    i32 138, label %919
    i32 128, label %919
    i32 154, label %926
    i32 153, label %926
    i32 152, label %926
    i32 151, label %926
    i32 172, label %927
    i32 177, label %927
    i32 163, label %930
    i32 162, label %930
    i32 175, label %930
    i32 173, label %930
    i32 178, label %930
    i32 166, label %930
    i32 158, label %930
    i32 156, label %930
    i32 161, label %930
    i32 155, label %930
    i32 157, label %930
    i32 160, label %930
  ]

919:                                              ; preds = %913, %913, %913, %913, %913, %913, %913
  %920 = load i32, i32* @MIPS_CACHE_PINDEX, align 4
  %921 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %922 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %921, i32 0, i32 2
  %923 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %922, i32 0, i32 3
  %924 = load i32, i32* %923, align 4
  %925 = or i32 %924, %920
  store i32 %925, i32* %923, align 4
  br label %983

926:                                              ; preds = %913, %913, %913, %913
  br label %983

927:                                              ; preds = %913, %913
  %928 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %929 = call i32 @alias_74k_erratum(%struct.cpuinfo_mips* %928)
  store i32 %929, i32* %4, align 4
  br label %930

930:                                              ; preds = %913, %913, %913, %913, %913, %913, %913, %913, %913, %913, %913, %913, %927
  %931 = call i32 (...) @read_c0_config7()
  %932 = load i32, i32* @MIPS_CONF7_IAR, align 4
  %933 = and i32 %931, %932
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %949, label %935

935:                                              ; preds = %930
  %936 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %937 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %936, i32 0, i32 3
  %938 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %937, i32 0, i32 4
  %939 = load i32, i32* %938, align 8
  %940 = load i32, i32* @PAGE_SIZE, align 4
  %941 = icmp sgt i32 %939, %940
  br i1 %941, label %942, label %949

942:                                              ; preds = %935
  %943 = load i32, i32* @MIPS_CACHE_ALIASES, align 4
  %944 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %945 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %944, i32 0, i32 3
  %946 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %945, i32 0, i32 3
  %947 = load i32, i32* %946, align 4
  %948 = or i32 %947, %943
  store i32 %948, i32* %946, align 4
  br label %949

949:                                              ; preds = %942, %935, %930
  %950 = load i32, i32* %4, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %964, label %952

952:                                              ; preds = %949
  %953 = call i32 (...) @read_c0_config7()
  %954 = load i32, i32* @MIPS_CONF7_AR, align 4
  %955 = and i32 %953, %954
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %957, label %964

957:                                              ; preds = %952
  %958 = load i32, i32* @MIPS_CACHE_PINDEX, align 4
  %959 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %960 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %959, i32 0, i32 2
  %961 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %960, i32 0, i32 3
  %962 = load i32, i32* %961, align 4
  %963 = or i32 %962, %958
  store i32 %963, i32* %961, align 4
  br label %983

964:                                              ; preds = %952, %949
  br label %965

965:                                              ; preds = %913, %964
  %966 = load i32, i32* %4, align 4
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %975, label %968

968:                                              ; preds = %965
  %969 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %970 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %969, i32 0, i32 2
  %971 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %970, i32 0, i32 4
  %972 = load i32, i32* %971, align 8
  %973 = load i32, i32* @PAGE_SIZE, align 4
  %974 = icmp sgt i32 %972, %973
  br i1 %974, label %975, label %982

975:                                              ; preds = %968, %965
  %976 = load i32, i32* @MIPS_CACHE_ALIASES, align 4
  %977 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %978 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %977, i32 0, i32 2
  %979 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %978, i32 0, i32 3
  %980 = load i32, i32* %979, align 4
  %981 = or i32 %980, %976
  store i32 %981, i32* %979, align 4
  br label %982

982:                                              ; preds = %975, %968
  br label %983

983:                                              ; preds = %982, %957, %926, %919
  %984 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %985 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %984, i32 0, i32 2
  %986 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %985, i32 0, i32 3
  %987 = load i32, i32* %986, align 4
  %988 = load i32, i32* @MIPS_CACHE_PINDEX, align 4
  %989 = and i32 %987, %988
  %990 = icmp ne i32 %989, 0
  br i1 %990, label %991, label %999

991:                                              ; preds = %983
  %992 = load i32, i32* @MIPS_CACHE_ALIASES, align 4
  %993 = xor i32 %992, -1
  %994 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %995 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %994, i32 0, i32 2
  %996 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %995, i32 0, i32 3
  %997 = load i32, i32* %996, align 4
  %998 = and i32 %997, %993
  store i32 %998, i32* %996, align 4
  br label %999

999:                                              ; preds = %991, %983
  %1000 = call i64 (...) @mips_cm_present()
  %1001 = icmp ne i64 %1000, 0
  br i1 %1001, label %1002, label %1009

1002:                                             ; preds = %999
  %1003 = load i32, i32* @MIPS_IC_SNOOPS_REMOTE, align 4
  %1004 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1005 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1004, i32 0, i32 3
  %1006 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1005, i32 0, i32 3
  %1007 = load i32, i32* %1006, align 4
  %1008 = or i32 %1007, %1003
  store i32 %1008, i32* %1006, align 4
  br label %1009

1009:                                             ; preds = %1002, %999
  %1010 = call i32 (...) @current_cpu_type()
  switch i32 %1010, label %1043 [
    i32 176, label %1011
    i32 171, label %1018
    i32 168, label %1018
    i32 167, label %1018
    i32 170, label %1025
    i32 165, label %1039
  ]

1011:                                             ; preds = %1009
  %1012 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %1013 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1014 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1013, i32 0, i32 3
  %1015 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1014, i32 0, i32 3
  %1016 = load i32, i32* %1015, align 4
  %1017 = or i32 %1016, %1012
  store i32 %1017, i32* %1015, align 4
  br label %1043

1018:                                             ; preds = %1009, %1009, %1009
  %1019 = load i32, i32* @MIPS_CACHE_IC_F_DC, align 4
  %1020 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1021 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1020, i32 0, i32 3
  %1022 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1021, i32 0, i32 3
  %1023 = load i32, i32* %1022, align 4
  %1024 = or i32 %1023, %1019
  store i32 %1024, i32* %1022, align 4
  br label %1043

1025:                                             ; preds = %1009
  %1026 = load i32, i32* @MIPS_CACHE_IC_F_DC, align 4
  %1027 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1028 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1027, i32 0, i32 3
  %1029 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1028, i32 0, i32 3
  %1030 = load i32, i32* %1029, align 4
  %1031 = or i32 %1030, %1026
  store i32 %1031, i32* %1029, align 4
  %1032 = load i32, i32* @MIPS_CACHE_ALIASES, align 4
  %1033 = xor i32 %1032, -1
  %1034 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1035 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1034, i32 0, i32 2
  %1036 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1035, i32 0, i32 3
  %1037 = load i32, i32* %1036, align 4
  %1038 = and i32 %1037, %1033
  store i32 %1038, i32* %1036, align 4
  br label %1043

1039:                                             ; preds = %1009
  %1040 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1041 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1040, i32 0, i32 3
  %1042 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1041, i32 0, i32 1
  store i32 1, i32* %1042, align 4
  br label %1043

1043:                                             ; preds = %1039, %1009, %1025, %1018, %1011
  %1044 = load i32, i32* @icache_size, align 4
  %1045 = ashr i32 %1044, 10
  %1046 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1047 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1046, i32 0, i32 3
  %1048 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1047, i32 0, i32 3
  %1049 = load i32, i32* %1048, align 4
  %1050 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %1051 = and i32 %1049, %1050
  %1052 = icmp ne i32 %1051, 0
  %1053 = zext i1 %1052 to i64
  %1054 = select i1 %1052, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %1055 = load i32*, i32** @way_string, align 8
  %1056 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1057 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1056, i32 0, i32 3
  %1058 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1057, i32 0, i32 1
  %1059 = load i32, i32* %1058, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i32, i32* %1055, i64 %1060
  %1062 = load i32, i32* %1061, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = inttoptr i64 %1063 to i8*
  %1065 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1066 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1065, i32 0, i32 3
  %1067 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1066, i32 0, i32 0
  %1068 = load i32, i32* %1067, align 8
  %1069 = call i32 (i8*, i32, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %1045, i8* %1054, i8* %1064, i32 %1068)
  %1070 = load i32, i32* @dcache_size, align 4
  %1071 = ashr i32 %1070, 10
  %1072 = load i32*, i32** @way_string, align 8
  %1073 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1074 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1073, i32 0, i32 2
  %1075 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1074, i32 0, i32 1
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds i32, i32* %1072, i64 %1077
  %1079 = load i32, i32* %1078, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = inttoptr i64 %1080 to i8*
  %1082 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1083 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1082, i32 0, i32 2
  %1084 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1083, i32 0, i32 3
  %1085 = load i32, i32* %1084, align 4
  %1086 = load i32, i32* @MIPS_CACHE_PINDEX, align 4
  %1087 = and i32 %1085, %1086
  %1088 = icmp ne i32 %1087, 0
  %1089 = zext i1 %1088 to i64
  %1090 = select i1 %1088, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %1091 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1092 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1091, i32 0, i32 2
  %1093 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1092, i32 0, i32 3
  %1094 = load i32, i32* %1093, align 4
  %1095 = load i32, i32* @MIPS_CACHE_ALIASES, align 4
  %1096 = and i32 %1094, %1095
  %1097 = icmp ne i32 %1096, 0
  %1098 = zext i1 %1097 to i64
  %1099 = select i1 %1097, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)
  %1100 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %1101 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %1100, i32 0, i32 2
  %1102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1101, i32 0, i32 0
  %1103 = load i32, i32* %1102, align 8
  %1104 = call i32 (i8*, i32, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %1071, i8* %1081, i8* %1090, i8* %1099, i32 %1103)
  ret void
}

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i8* @__ffs(i32) #1

declare dso_local i32 @write_c0_config(i32) #1

declare dso_local i32 @rm7k_erratum31(...) #1

declare dso_local i64 @read_c0_config1(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @alias_74k_erratum(%struct.cpuinfo_mips*) #1

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i64 @mips_cm_present(...) #1

declare dso_local i32 @printk(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
