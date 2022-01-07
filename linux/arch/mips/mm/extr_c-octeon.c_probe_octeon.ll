; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_probe_octeon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-octeon.c_probe_octeon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@MIPS_CACHE_VTAG = common dso_local global i32 0, align 4
@MIPS_CPU_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unsupported Cavium Networks CPU type\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Primary instruction cache %ldkB, %s, %d way, %d sets, linesize %d bytes.\0A\00", align 1
@cpu_has_vtag_icache = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"virtually tagged\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"physically tagged\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Primary data cache %ldkB, %d-way, %d sets, linesize %d bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_octeon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_octeon() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuinfo_mips*, align 8
  %5 = alloca i32, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %4, align 8
  %6 = call i32 (...) @current_cpu_type()
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @read_c0_config1()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %237 [
    i32 131, label %9
    i32 128, label %9
    i32 130, label %113
    i32 129, label %177
  ]

9:                                                ; preds = %0, %0
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 19
  %12 = and i32 %11, 7
  %13 = shl i32 2, %12
  %14 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 22
  %19 = and i32 %18, 7
  %20 = shl i32 64, %19
  %21 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %22 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 7
  %27 = add i32 1, %26
  %28 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %32 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %33 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %40, %44
  %46 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %45, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %54 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %52, %57
  %59 = call i32 @ffs(i64 %58)
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %62 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %65 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 128, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %73

69:                                               ; preds = %9
  %70 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 2, i32* %72, align 4
  br label %77

73:                                               ; preds = %9
  %74 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %75 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %79 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 64, i32* %80, align 8
  %81 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %82 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %86 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %84, %88
  %90 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %91 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %2, align 8
  %96 = load i64, i64* %2, align 8
  %97 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %98 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %96, %101
  %103 = call i32 @ffs(i64 %102)
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %106 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %109 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %110 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %239

113:                                              ; preds = %0
  %114 = load i32, i32* %3, align 4
  %115 = lshr i32 %114, 19
  %116 = and i32 %115, 7
  %117 = shl i32 2, %116
  %118 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %119 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %122 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 8, i32* %123, align 4
  %124 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %125 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 37, i32* %126, align 8
  %127 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %128 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %129 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %134 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %138 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %136, %140
  %142 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %143 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %141, %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %1, align 8
  %148 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %149 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 128, i32* %150, align 8
  %151 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %152 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 32, i32* %153, align 8
  %154 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %155 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 8, i32* %156, align 4
  %157 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %158 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %162 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %160, %164
  %166 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %167 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %165, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %2, align 8
  %172 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %173 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %174 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %239

177:                                              ; preds = %0
  %178 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %179 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 128, i32* %180, align 8
  %181 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %182 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i32 16, i32* %183, align 4
  %184 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %185 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  store i32 39, i32* %186, align 8
  %187 = load i32, i32* @MIPS_CACHE_VTAG, align 4
  %188 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %189 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %187
  store i32 %192, i32* %190, align 8
  %193 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %194 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %198 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %196, %200
  %202 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %203 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %1, align 8
  %208 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %209 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  store i32 128, i32* %210, align 8
  %211 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %212 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  store i32 32, i32* %213, align 8
  %214 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %215 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  store i32 8, i32* %216, align 4
  %217 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %218 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %222 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %220, %224
  %226 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %227 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = mul nsw i32 %225, %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %2, align 8
  %232 = load i32, i32* @MIPS_CPU_PREFETCH, align 4
  %233 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %234 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %239

237:                                              ; preds = %0
  %238 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %177, %113, %77
  %240 = load i64, i64* %1, align 8
  %241 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %242 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = udiv i64 %240, %245
  %247 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %248 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 3
  store i64 %246, i64* %249, align 8
  %250 = load i64, i64* %2, align 8
  %251 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %252 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = udiv i64 %250, %255
  %257 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %258 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  store i64 %256, i64* %259, align 8
  %260 = load i64, i64* %1, align 8
  %261 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %262 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %266 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %264, %268
  %270 = sext i32 %269 to i64
  %271 = udiv i64 %260, %270
  %272 = trunc i64 %271 to i32
  %273 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %274 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load i64, i64* %2, align 8
  %277 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %278 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %282 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %280, %284
  %286 = sext i32 %285 to i64
  %287 = udiv i64 %276, %286
  %288 = trunc i64 %287 to i32
  %289 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %290 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  store i32 %288, i32* %291, align 4
  %292 = call i64 (...) @smp_processor_id()
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %329

294:                                              ; preds = %239
  %295 = load i64, i64* %1, align 8
  %296 = lshr i64 %295, 10
  %297 = load i64, i64* @cpu_has_vtag_icache, align 8
  %298 = icmp ne i64 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  %301 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %302 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %306 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %310 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %296, i8* %300, i32 %304, i32 %308, i32 %312)
  %314 = load i64, i64* %2, align 8
  %315 = lshr i64 %314, 10
  %316 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %317 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %321 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %325 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %315, i32 %319, i32 %323, i32 %327)
  br label %329

329:                                              ; preds = %294, %239
  ret void
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @read_c0_config1(...) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @pr_notice(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
