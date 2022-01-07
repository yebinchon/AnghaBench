; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_cpuinfo-pvr-full.c_set_cpuinfo_pvr_full.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/cpu/extr_cpuinfo-pvr-full.c_set_cpuinfo_pvr_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo = type { i8*, i8*, i8*, i32, i32, i32, i8*, i32 }
%struct.device_node = type { i32 }
%struct.pvr_s = type { i32 }

@ver_code = common dso_local global i32 0, align 4
@VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ERROR: MB has broken PVR regs -> use DTS setting\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BARREL, MSR, PCMP or DIV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HW_MUL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HW_FPU\00", align 1
@pvr_user1 = common dso_local global i32 0, align 4
@USER1 = common dso_local global i32 0, align 4
@pvr_user2 = common dso_local global i32 0, align 4
@USER2 = common dso_local global i32 0, align 4
@mmu = common dso_local global i32 0, align 4
@USE_MMU = common dso_local global i32 0, align 4
@mmu_privins = common dso_local global i32 0, align 4
@MMU_PRIVINS = common dso_local global i32 0, align 4
@endian = common dso_local global i32 0, align 4
@ENDIAN = common dso_local global i32 0, align 4
@use_icache = common dso_local global i32 0, align 4
@USE_ICACHE = common dso_local global i32 0, align 4
@icache_tagbits = common dso_local global i32 0, align 4
@ICACHE_ADDR_TAG_BITS = common dso_local global i32 0, align 4
@icache_write = common dso_local global i32 0, align 4
@ICACHE_ALLOW_WR = common dso_local global i32 0, align 4
@icache_size = common dso_local global i32 0, align 4
@ICACHE_BYTE_SIZE = common dso_local global i32 0, align 4
@icache_base = common dso_local global i32 0, align 4
@ICACHE_BASEADDR = common dso_local global i32 0, align 4
@icache_high = common dso_local global i32 0, align 4
@ICACHE_HIGHADDR = common dso_local global i32 0, align 4
@use_dcache = common dso_local global i32 0, align 4
@USE_DCACHE = common dso_local global i32 0, align 4
@dcache_tagbits = common dso_local global i32 0, align 4
@DCACHE_ADDR_TAG_BITS = common dso_local global i32 0, align 4
@dcache_write = common dso_local global i32 0, align 4
@DCACHE_ALLOW_WR = common dso_local global i32 0, align 4
@dcache_size = common dso_local global i32 0, align 4
@DCACHE_BYTE_SIZE = common dso_local global i32 0, align 4
@dcache_base = common dso_local global i32 0, align 4
@DCACHE_BASEADDR = common dso_local global i32 0, align 4
@dcache_high = common dso_local global i32 0, align 4
@DCACHE_HIGHADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"DCACHE WB\00", align 1
@use_dopb = common dso_local global i32 0, align 4
@D_OPB = common dso_local global i32 0, align 4
@use_iopb = common dso_local global i32 0, align 4
@I_OPB = common dso_local global i32 0, align 4
@use_dlmb = common dso_local global i32 0, align 4
@D_LMB = common dso_local global i32 0, align 4
@use_ilmb = common dso_local global i32 0, align 4
@I_LMB = common dso_local global i32 0, align 4
@num_fsl = common dso_local global i32 0, align 4
@FSL_LINKS = common dso_local global i32 0, align 4
@irq_edge = common dso_local global i32 0, align 4
@INTERRUPT_IS_EDGE = common dso_local global i32 0, align 4
@irq_positive = common dso_local global i32 0, align 4
@EDGE_IS_POSITIVE = common dso_local global i32 0, align 4
@area_optimised = common dso_local global i32 0, align 4
@AREA_OPTIMISED = common dso_local global i32 0, align 4
@hw_debug = common dso_local global i32 0, align 4
@DEBUG_ENABLED = common dso_local global i32 0, align 4
@num_pc_brk = common dso_local global i32 0, align 4
@NUMBER_OF_PC_BRK = common dso_local global i32 0, align 4
@num_rd_brk = common dso_local global i32 0, align 4
@NUMBER_OF_RD_ADDR_BRK = common dso_local global i32 0, align 4
@num_wr_brk = common dso_local global i32 0, align 4
@NUMBER_OF_WR_ADDR_BRK = common dso_local global i32 0, align 4
@fpga_family_code = common dso_local global i32 0, align 4
@TARGET_FAMILY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_cpuinfo_pvr_full(%struct.cpuinfo* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.cpuinfo*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pvr_s, align 4
  %6 = alloca i8*, align 8
  store %struct.cpuinfo* %0, %struct.cpuinfo** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %7 = call i32 @get_pvr(%struct.pvr_s* %5)
  %8 = load i32, i32* @ver_code, align 4
  %9 = load i32, i32* @VERSION, align 4
  %10 = call i32 @CI(i32 %8, i32 %9)
  %11 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %12 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %235

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PVR_USE_BARREL(i32 %19)
  %21 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PVR_USE_MSR_INSTR(i32 %22)
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PVR_USE_PCMP_INSTR(i32 %26)
  %28 = or i32 %24, %27
  %29 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PVR_USE_DIV(i32 %30)
  %32 = or i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %36 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = call i32 @err_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %17
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %45 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PVR_USE_HW_MUL(i32 %47)
  %49 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PVR_USE_MUL64(i32 %50)
  %52 = or i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %6, align 8
  %55 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %56 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = call i32 @err_printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %42
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %65 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PVR_USE_FPU(i32 %67)
  %69 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PVR_USE_FPU2(i32 %70)
  %72 = or i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %6, align 8
  %75 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %76 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %62
  %81 = call i32 @err_printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %62
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %85 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PVR_OPCODE_0x0_ILLEGAL(i32 %87)
  %89 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PVR_UNALIGNED_EXCEPTION(i32 %90)
  %92 = or i32 %88, %91
  %93 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PVR_ILL_OPCODE_EXCEPTION(i32 %94)
  %96 = or i32 %92, %95
  %97 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @PVR_IOPB_BUS_EXCEPTION(i32 %98)
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PVR_DOPB_BUS_EXCEPTION(i32 %102)
  %104 = or i32 %100, %103
  %105 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PVR_DIV_ZERO_EXCEPTION(i32 %106)
  %108 = or i32 %104, %107
  %109 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PVR_FPU_EXCEPTION(i32 %110)
  %112 = or i32 %108, %111
  %113 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PVR_FSL_EXCEPTION(i32 %114)
  %116 = or i32 %112, %115
  %117 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %118 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @pvr_user1, align 4
  %120 = load i32, i32* @USER1, align 4
  %121 = call i32 @CI(i32 %119, i32 %120)
  %122 = load i32, i32* @pvr_user2, align 4
  %123 = load i32, i32* @USER2, align 4
  %124 = call i32 @CI(i32 %122, i32 %123)
  %125 = load i32, i32* @mmu, align 4
  %126 = load i32, i32* @USE_MMU, align 4
  %127 = call i32 @CI(i32 %125, i32 %126)
  %128 = load i32, i32* @mmu_privins, align 4
  %129 = load i32, i32* @MMU_PRIVINS, align 4
  %130 = call i32 @CI(i32 %128, i32 %129)
  %131 = load i32, i32* @endian, align 4
  %132 = load i32, i32* @ENDIAN, align 4
  %133 = call i32 @CI(i32 %131, i32 %132)
  %134 = load i32, i32* @use_icache, align 4
  %135 = load i32, i32* @USE_ICACHE, align 4
  %136 = call i32 @CI(i32 %134, i32 %135)
  %137 = load i32, i32* @icache_tagbits, align 4
  %138 = load i32, i32* @ICACHE_ADDR_TAG_BITS, align 4
  %139 = call i32 @CI(i32 %137, i32 %138)
  %140 = load i32, i32* @icache_write, align 4
  %141 = load i32, i32* @ICACHE_ALLOW_WR, align 4
  %142 = call i32 @CI(i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @PVR_ICACHE_LINE_LEN(i32 %144)
  %146 = shl i32 %145, 2
  %147 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %148 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @icache_size, align 4
  %150 = load i32, i32* @ICACHE_BYTE_SIZE, align 4
  %151 = call i32 @CI(i32 %149, i32 %150)
  %152 = load i32, i32* @icache_base, align 4
  %153 = load i32, i32* @ICACHE_BASEADDR, align 4
  %154 = call i32 @CI(i32 %152, i32 %153)
  %155 = load i32, i32* @icache_high, align 4
  %156 = load i32, i32* @ICACHE_HIGHADDR, align 4
  %157 = call i32 @CI(i32 %155, i32 %156)
  %158 = load i32, i32* @use_dcache, align 4
  %159 = load i32, i32* @USE_DCACHE, align 4
  %160 = call i32 @CI(i32 %158, i32 %159)
  %161 = load i32, i32* @dcache_tagbits, align 4
  %162 = load i32, i32* @DCACHE_ADDR_TAG_BITS, align 4
  %163 = call i32 @CI(i32 %161, i32 %162)
  %164 = load i32, i32* @dcache_write, align 4
  %165 = load i32, i32* @DCACHE_ALLOW_WR, align 4
  %166 = call i32 @CI(i32 %164, i32 %165)
  %167 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @PVR_DCACHE_LINE_LEN(i32 %168)
  %170 = shl i32 %169, 2
  %171 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %172 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @dcache_size, align 4
  %174 = load i32, i32* @DCACHE_BYTE_SIZE, align 4
  %175 = call i32 @CI(i32 %173, i32 %174)
  %176 = load i32, i32* @dcache_base, align 4
  %177 = load i32, i32* @DCACHE_BASEADDR, align 4
  %178 = call i32 @CI(i32 %176, i32 %177)
  %179 = load i32, i32* @dcache_high, align 4
  %180 = load i32, i32* @DCACHE_HIGHADDR, align 4
  %181 = call i32 @CI(i32 %179, i32 %180)
  %182 = getelementptr inbounds %struct.pvr_s, %struct.pvr_s* %5, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @PVR_DCACHE_USE_WRITEBACK(i32 %183)
  store i8* %184, i8** %6, align 8
  %185 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %186 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %185, i32 0, i32 6
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = icmp ne i8* %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %82
  %191 = call i32 @err_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %82
  %193 = load i8*, i8** %6, align 8
  %194 = load %struct.cpuinfo*, %struct.cpuinfo** %3, align 8
  %195 = getelementptr inbounds %struct.cpuinfo, %struct.cpuinfo* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @use_dopb, align 4
  %197 = load i32, i32* @D_OPB, align 4
  %198 = call i32 @CI(i32 %196, i32 %197)
  %199 = load i32, i32* @use_iopb, align 4
  %200 = load i32, i32* @I_OPB, align 4
  %201 = call i32 @CI(i32 %199, i32 %200)
  %202 = load i32, i32* @use_dlmb, align 4
  %203 = load i32, i32* @D_LMB, align 4
  %204 = call i32 @CI(i32 %202, i32 %203)
  %205 = load i32, i32* @use_ilmb, align 4
  %206 = load i32, i32* @I_LMB, align 4
  %207 = call i32 @CI(i32 %205, i32 %206)
  %208 = load i32, i32* @num_fsl, align 4
  %209 = load i32, i32* @FSL_LINKS, align 4
  %210 = call i32 @CI(i32 %208, i32 %209)
  %211 = load i32, i32* @irq_edge, align 4
  %212 = load i32, i32* @INTERRUPT_IS_EDGE, align 4
  %213 = call i32 @CI(i32 %211, i32 %212)
  %214 = load i32, i32* @irq_positive, align 4
  %215 = load i32, i32* @EDGE_IS_POSITIVE, align 4
  %216 = call i32 @CI(i32 %214, i32 %215)
  %217 = load i32, i32* @area_optimised, align 4
  %218 = load i32, i32* @AREA_OPTIMISED, align 4
  %219 = call i32 @CI(i32 %217, i32 %218)
  %220 = load i32, i32* @hw_debug, align 4
  %221 = load i32, i32* @DEBUG_ENABLED, align 4
  %222 = call i32 @CI(i32 %220, i32 %221)
  %223 = load i32, i32* @num_pc_brk, align 4
  %224 = load i32, i32* @NUMBER_OF_PC_BRK, align 4
  %225 = call i32 @CI(i32 %223, i32 %224)
  %226 = load i32, i32* @num_rd_brk, align 4
  %227 = load i32, i32* @NUMBER_OF_RD_ADDR_BRK, align 4
  %228 = call i32 @CI(i32 %226, i32 %227)
  %229 = load i32, i32* @num_wr_brk, align 4
  %230 = load i32, i32* @NUMBER_OF_WR_ADDR_BRK, align 4
  %231 = call i32 @CI(i32 %229, i32 %230)
  %232 = load i32, i32* @fpga_family_code, align 4
  %233 = load i32, i32* @TARGET_FAMILY, align 4
  %234 = call i32 @CI(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %192, %15
  ret void
}

declare dso_local i32 @get_pvr(%struct.pvr_s*) #1

declare dso_local i32 @CI(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PVR_USE_BARREL(i32) #1

declare dso_local i32 @PVR_USE_MSR_INSTR(i32) #1

declare dso_local i32 @PVR_USE_PCMP_INSTR(i32) #1

declare dso_local i32 @PVR_USE_DIV(i32) #1

declare dso_local i32 @err_printk(i8*) #1

declare dso_local i32 @PVR_USE_HW_MUL(i32) #1

declare dso_local i32 @PVR_USE_MUL64(i32) #1

declare dso_local i32 @PVR_USE_FPU(i32) #1

declare dso_local i32 @PVR_USE_FPU2(i32) #1

declare dso_local i32 @PVR_OPCODE_0x0_ILLEGAL(i32) #1

declare dso_local i32 @PVR_UNALIGNED_EXCEPTION(i32) #1

declare dso_local i32 @PVR_ILL_OPCODE_EXCEPTION(i32) #1

declare dso_local i32 @PVR_IOPB_BUS_EXCEPTION(i32) #1

declare dso_local i32 @PVR_DOPB_BUS_EXCEPTION(i32) #1

declare dso_local i32 @PVR_DIV_ZERO_EXCEPTION(i32) #1

declare dso_local i32 @PVR_FPU_EXCEPTION(i32) #1

declare dso_local i32 @PVR_FSL_EXCEPTION(i32) #1

declare dso_local i32 @PVR_ICACHE_LINE_LEN(i32) #1

declare dso_local i32 @PVR_DCACHE_LINE_LEN(i32) #1

declare dso_local i8* @PVR_DCACHE_USE_WRITEBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
