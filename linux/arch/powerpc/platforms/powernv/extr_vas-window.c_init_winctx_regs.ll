; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_winctx_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_winctx_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32 }
%struct.vas_winctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VAS_LPID = common dso_local global i32 0, align 4
@LPID = common dso_local global i32 0, align 4
@VAS_PID_ID = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4
@VAS_FAULT_TX_WIN = common dso_local global i32 0, align 4
@FAULT_TX_WIN = common dso_local global i32 0, align 4
@OSU_INTR_SRC_RA = common dso_local global i32 0, align 4
@VAS_HV_INTR_SRC_RA = common dso_local global i32 0, align 4
@HV_INTR_SRC_RA = common dso_local global i32 0, align 4
@VAS_PSWID_EA_HANDLE = common dso_local global i32 0, align 4
@PSWID = common dso_local global i32 0, align 4
@SPARE1 = common dso_local global i32 0, align 4
@SPARE2 = common dso_local global i32 0, align 4
@SPARE3 = common dso_local global i32 0, align 4
@VAS_PAGE_MIGRATION_SELECT = common dso_local global i32 0, align 4
@LFIFO_BAR = common dso_local global i32 0, align 4
@VAS_LDATA_STAMP = common dso_local global i32 0, align 4
@LDATA_STAMP_CTL = common dso_local global i32 0, align 4
@VAS_LDMA_TYPE = common dso_local global i32 0, align 4
@VAS_LDMA_FIFO_DISABLE = common dso_local global i32 0, align 4
@LDMA_CACHE_CTL = common dso_local global i32 0, align 4
@LRFIFO_PUSH = common dso_local global i32 0, align 4
@CURR_MSG_COUNT = common dso_local global i32 0, align 4
@LNOTIFY_AFTER_COUNT = common dso_local global i32 0, align 4
@VAS_LRX_WCRED = common dso_local global i32 0, align 4
@LRX_WCRED = common dso_local global i32 0, align 4
@VAS_TX_WCRED = common dso_local global i32 0, align 4
@TX_WCRED = common dso_local global i32 0, align 4
@LRX_WCRED_ADDER = common dso_local global i32 0, align 4
@TX_WCRED_ADDER = common dso_local global i32 0, align 4
@VAS_LFIFO_SIZE = common dso_local global i32 0, align 4
@LFIFO_SIZE = common dso_local global i32 0, align 4
@WIN_STATUS = common dso_local global i32 0, align 4
@VAS_LRX_WIN_ID = common dso_local global i32 0, align 4
@LRFIFO_WIN_PTR = common dso_local global i32 0, align 4
@SPARE4 = common dso_local global i32 0, align 4
@VAS_NOTIFY_DISABLE = common dso_local global i32 0, align 4
@VAS_INTR_DISABLE = common dso_local global i32 0, align 4
@VAS_NOTIFY_EARLY = common dso_local global i32 0, align 4
@VAS_NOTIFY_OSU_INTR = common dso_local global i32 0, align 4
@LNOTIFY_CTL = common dso_local global i32 0, align 4
@VAS_LNOTIFY_PID = common dso_local global i32 0, align 4
@LNOTIFY_PID = common dso_local global i32 0, align 4
@VAS_LNOTIFY_LPID = common dso_local global i32 0, align 4
@LNOTIFY_LPID = common dso_local global i32 0, align 4
@VAS_LNOTIFY_TID = common dso_local global i32 0, align 4
@LNOTIFY_TID = common dso_local global i32 0, align 4
@VAS_LNOTIFY_MIN_SCOPE = common dso_local global i32 0, align 4
@VAS_LNOTIFY_MAX_SCOPE = common dso_local global i32 0, align 4
@LNOTIFY_SCOPE = common dso_local global i32 0, align 4
@SPARE5 = common dso_local global i32 0, align 4
@NX_UTIL_ADDER = common dso_local global i32 0, align 4
@SPARE6 = common dso_local global i32 0, align 4
@VAS_PUSH_TO_MEM = common dso_local global i32 0, align 4
@WIN_CTX_CACHING_CTL = common dso_local global i32 0, align 4
@VAS_WINCTL_REJ_NO_CREDIT = common dso_local global i32 0, align 4
@VAS_WINCTL_PIN = common dso_local global i32 0, align 4
@VAS_WINCTL_TX_WCRED_MODE = common dso_local global i32 0, align 4
@VAS_WINCTL_RX_WCRED_MODE = common dso_local global i32 0, align 4
@VAS_WINCTL_TX_WORD_MODE = common dso_local global i32 0, align 4
@VAS_WINCTL_RX_WORD_MODE = common dso_local global i32 0, align 4
@VAS_WINCTL_FAULT_WIN = common dso_local global i32 0, align 4
@VAS_WINCTL_NX_WIN = common dso_local global i32 0, align 4
@VAS_WINCTL_OPEN = common dso_local global i32 0, align 4
@WINCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_winctx_regs(%struct.vas_window* %0, %struct.vas_winctx* %1) #0 {
  %3 = alloca %struct.vas_window*, align 8
  %4 = alloca %struct.vas_winctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %3, align 8
  store %struct.vas_winctx* %1, %struct.vas_winctx** %4, align 8
  %7 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %8 = call i32 @reset_window_regs(%struct.vas_window* %7)
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* @VAS_LPID, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %12 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @SET_FIELD(i32 %9, i64 %10, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %16 = load i32, i32* @LPID, align 4
  %17 = call i32 @VREG(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @write_hvwc_reg(%struct.vas_window* %15, i32 %17, i64 %18)
  store i64 0, i64* %5, align 8
  %20 = load i32, i32* @VAS_PID_ID, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %23 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SET_FIELD(i32 %20, i64 %21, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %27 = load i32, i32* @PID, align 4
  %28 = call i32 @VREG(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @write_hvwc_reg(%struct.vas_window* %26, i32 %28, i64 %29)
  %31 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %32 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %33 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %32, i32 0, i32 28
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @init_xlate_regs(%struct.vas_window* %31, i32 %34)
  store i64 0, i64* %5, align 8
  %36 = load i32, i32* @VAS_FAULT_TX_WIN, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @SET_FIELD(i32 %36, i64 %37, i32 0)
  store i64 %38, i64* %5, align 8
  %39 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %40 = load i32, i32* @FAULT_TX_WIN, align 4
  %41 = call i32 @VREG(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @write_hvwc_reg(%struct.vas_window* %39, i32 %41, i64 %42)
  %44 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %45 = load i32, i32* @OSU_INTR_SRC_RA, align 4
  %46 = call i32 @VREG(i32 %45)
  %47 = call i32 @write_hvwc_reg(%struct.vas_window* %44, i32 %46, i64 0)
  store i64 0, i64* %5, align 8
  %48 = load i32, i32* @VAS_HV_INTR_SRC_RA, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %51 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @SET_FIELD(i32 %48, i64 %49, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %55 = load i32, i32* @HV_INTR_SRC_RA, align 4
  %56 = call i32 @VREG(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @write_hvwc_reg(%struct.vas_window* %54, i32 %56, i64 %57)
  store i64 0, i64* %5, align 8
  %59 = load i32, i32* @VAS_PSWID_EA_HANDLE, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %62 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @SET_FIELD(i32 %59, i64 %60, i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %66 = load i32, i32* @PSWID, align 4
  %67 = call i32 @VREG(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @write_hvwc_reg(%struct.vas_window* %65, i32 %67, i64 %68)
  %70 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %71 = load i32, i32* @SPARE1, align 4
  %72 = call i32 @VREG(i32 %71)
  %73 = call i32 @write_hvwc_reg(%struct.vas_window* %70, i32 %72, i64 0)
  %74 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %75 = load i32, i32* @SPARE2, align 4
  %76 = call i32 @VREG(i32 %75)
  %77 = call i32 @write_hvwc_reg(%struct.vas_window* %74, i32 %76, i64 0)
  %78 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %79 = load i32, i32* @SPARE3, align 4
  %80 = call i32 @VREG(i32 %79)
  %81 = call i32 @write_hvwc_reg(%struct.vas_window* %78, i32 %80, i64 0)
  %82 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %83 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %82, i32 0, i32 27
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @__pa(i32 %84)
  store i64 %85, i64* %5, align 8
  %86 = load i32, i32* @VAS_PAGE_MIGRATION_SELECT, align 4
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @SET_FIELD(i32 %86, i64 %87, i32 0)
  store i64 %88, i64* %5, align 8
  %89 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %90 = load i32, i32* @LFIFO_BAR, align 4
  %91 = call i32 @VREG(i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @write_hvwc_reg(%struct.vas_window* %89, i32 %91, i64 %92)
  store i64 0, i64* %5, align 8
  %94 = load i32, i32* @VAS_LDATA_STAMP, align 4
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %97 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @SET_FIELD(i32 %94, i64 %95, i32 %98)
  store i64 %99, i64* %5, align 8
  %100 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %101 = load i32, i32* @LDATA_STAMP_CTL, align 4
  %102 = call i32 @VREG(i32 %101)
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @write_hvwc_reg(%struct.vas_window* %100, i32 %102, i64 %103)
  store i64 0, i64* %5, align 8
  %105 = load i32, i32* @VAS_LDMA_TYPE, align 4
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %108 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @SET_FIELD(i32 %105, i64 %106, i32 %109)
  store i64 %110, i64* %5, align 8
  %111 = load i32, i32* @VAS_LDMA_FIFO_DISABLE, align 4
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %114 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @SET_FIELD(i32 %111, i64 %112, i32 %115)
  store i64 %116, i64* %5, align 8
  %117 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %118 = load i32, i32* @LDMA_CACHE_CTL, align 4
  %119 = call i32 @VREG(i32 %118)
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @write_hvwc_reg(%struct.vas_window* %117, i32 %119, i64 %120)
  %122 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %123 = load i32, i32* @LRFIFO_PUSH, align 4
  %124 = call i32 @VREG(i32 %123)
  %125 = call i32 @write_hvwc_reg(%struct.vas_window* %122, i32 %124, i64 0)
  %126 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %127 = load i32, i32* @CURR_MSG_COUNT, align 4
  %128 = call i32 @VREG(i32 %127)
  %129 = call i32 @write_hvwc_reg(%struct.vas_window* %126, i32 %128, i64 0)
  %130 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %131 = load i32, i32* @LNOTIFY_AFTER_COUNT, align 4
  %132 = call i32 @VREG(i32 %131)
  %133 = call i32 @write_hvwc_reg(%struct.vas_window* %130, i32 %132, i64 0)
  store i64 0, i64* %5, align 8
  %134 = load i32, i32* @VAS_LRX_WCRED, align 4
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %137 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @SET_FIELD(i32 %134, i64 %135, i32 %138)
  store i64 %139, i64* %5, align 8
  %140 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %141 = load i32, i32* @LRX_WCRED, align 4
  %142 = call i32 @VREG(i32 %141)
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @write_hvwc_reg(%struct.vas_window* %140, i32 %142, i64 %143)
  store i64 0, i64* %5, align 8
  %145 = load i32, i32* @VAS_TX_WCRED, align 4
  %146 = load i64, i64* %5, align 8
  %147 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %148 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @SET_FIELD(i32 %145, i64 %146, i32 %149)
  store i64 %150, i64* %5, align 8
  %151 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %152 = load i32, i32* @TX_WCRED, align 4
  %153 = call i32 @VREG(i32 %152)
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @write_hvwc_reg(%struct.vas_window* %151, i32 %153, i64 %154)
  %156 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %157 = load i32, i32* @LRX_WCRED_ADDER, align 4
  %158 = call i32 @VREG(i32 %157)
  %159 = call i32 @write_hvwc_reg(%struct.vas_window* %156, i32 %158, i64 0)
  %160 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %161 = load i32, i32* @TX_WCRED_ADDER, align 4
  %162 = call i32 @VREG(i32 %161)
  %163 = call i32 @write_hvwc_reg(%struct.vas_window* %160, i32 %162, i64 0)
  %164 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %165 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = sdiv i32 %166, 1024
  store i32 %167, i32* %6, align 4
  store i64 0, i64* %5, align 8
  %168 = load i32, i32* @VAS_LFIFO_SIZE, align 4
  %169 = load i64, i64* %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @ilog2(i32 %170)
  %172 = call i64 @SET_FIELD(i32 %168, i64 %169, i32 %171)
  store i64 %172, i64* %5, align 8
  %173 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %174 = load i32, i32* @LFIFO_SIZE, align 4
  %175 = call i32 @VREG(i32 %174)
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @write_hvwc_reg(%struct.vas_window* %173, i32 %175, i64 %176)
  %178 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %179 = load i32, i32* @WIN_STATUS, align 4
  %180 = call i32 @VREG(i32 %179)
  %181 = call i32 @write_hvwc_reg(%struct.vas_window* %178, i32 %180, i64 0)
  %182 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %183 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %184 = call i32 @init_rsvd_tx_buf_count(%struct.vas_window* %182, %struct.vas_winctx* %183)
  store i64 0, i64* %5, align 8
  %185 = load i32, i32* @VAS_LRX_WIN_ID, align 4
  %186 = load i64, i64* %5, align 8
  %187 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %188 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @SET_FIELD(i32 %185, i64 %186, i32 %189)
  store i64 %190, i64* %5, align 8
  %191 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %192 = load i32, i32* @LRFIFO_WIN_PTR, align 4
  %193 = call i32 @VREG(i32 %192)
  %194 = load i64, i64* %5, align 8
  %195 = call i32 @write_hvwc_reg(%struct.vas_window* %191, i32 %193, i64 %194)
  %196 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %197 = load i32, i32* @SPARE4, align 4
  %198 = call i32 @VREG(i32 %197)
  %199 = call i32 @write_hvwc_reg(%struct.vas_window* %196, i32 %198, i64 0)
  store i64 0, i64* %5, align 8
  %200 = load i32, i32* @VAS_NOTIFY_DISABLE, align 4
  %201 = load i64, i64* %5, align 8
  %202 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %203 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @SET_FIELD(i32 %200, i64 %201, i32 %204)
  store i64 %205, i64* %5, align 8
  %206 = load i32, i32* @VAS_INTR_DISABLE, align 4
  %207 = load i64, i64* %5, align 8
  %208 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %209 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @SET_FIELD(i32 %206, i64 %207, i32 %210)
  store i64 %211, i64* %5, align 8
  %212 = load i32, i32* @VAS_NOTIFY_EARLY, align 4
  %213 = load i64, i64* %5, align 8
  %214 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %215 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %214, i32 0, i32 12
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @SET_FIELD(i32 %212, i64 %213, i32 %216)
  store i64 %217, i64* %5, align 8
  %218 = load i32, i32* @VAS_NOTIFY_OSU_INTR, align 4
  %219 = load i64, i64* %5, align 8
  %220 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %221 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @SET_FIELD(i32 %218, i64 %219, i32 %222)
  store i64 %223, i64* %5, align 8
  %224 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %225 = load i32, i32* @LNOTIFY_CTL, align 4
  %226 = call i32 @VREG(i32 %225)
  %227 = load i64, i64* %5, align 8
  %228 = call i32 @write_hvwc_reg(%struct.vas_window* %224, i32 %226, i64 %227)
  store i64 0, i64* %5, align 8
  %229 = load i32, i32* @VAS_LNOTIFY_PID, align 4
  %230 = load i64, i64* %5, align 8
  %231 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %232 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %231, i32 0, i32 14
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @SET_FIELD(i32 %229, i64 %230, i32 %233)
  store i64 %234, i64* %5, align 8
  %235 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %236 = load i32, i32* @LNOTIFY_PID, align 4
  %237 = call i32 @VREG(i32 %236)
  %238 = load i64, i64* %5, align 8
  %239 = call i32 @write_hvwc_reg(%struct.vas_window* %235, i32 %237, i64 %238)
  store i64 0, i64* %5, align 8
  %240 = load i32, i32* @VAS_LNOTIFY_LPID, align 4
  %241 = load i64, i64* %5, align 8
  %242 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %243 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %242, i32 0, i32 15
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @SET_FIELD(i32 %240, i64 %241, i32 %244)
  store i64 %245, i64* %5, align 8
  %246 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %247 = load i32, i32* @LNOTIFY_LPID, align 4
  %248 = call i32 @VREG(i32 %247)
  %249 = load i64, i64* %5, align 8
  %250 = call i32 @write_hvwc_reg(%struct.vas_window* %246, i32 %248, i64 %249)
  store i64 0, i64* %5, align 8
  %251 = load i32, i32* @VAS_LNOTIFY_TID, align 4
  %252 = load i64, i64* %5, align 8
  %253 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %254 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %253, i32 0, i32 16
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @SET_FIELD(i32 %251, i64 %252, i32 %255)
  store i64 %256, i64* %5, align 8
  %257 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %258 = load i32, i32* @LNOTIFY_TID, align 4
  %259 = call i32 @VREG(i32 %258)
  %260 = load i64, i64* %5, align 8
  %261 = call i32 @write_hvwc_reg(%struct.vas_window* %257, i32 %259, i64 %260)
  store i64 0, i64* %5, align 8
  %262 = load i32, i32* @VAS_LNOTIFY_MIN_SCOPE, align 4
  %263 = load i64, i64* %5, align 8
  %264 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %265 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %264, i32 0, i32 17
  %266 = load i32, i32* %265, align 4
  %267 = call i64 @SET_FIELD(i32 %262, i64 %263, i32 %266)
  store i64 %267, i64* %5, align 8
  %268 = load i32, i32* @VAS_LNOTIFY_MAX_SCOPE, align 4
  %269 = load i64, i64* %5, align 8
  %270 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %271 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %270, i32 0, i32 18
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @SET_FIELD(i32 %268, i64 %269, i32 %272)
  store i64 %273, i64* %5, align 8
  %274 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %275 = load i32, i32* @LNOTIFY_SCOPE, align 4
  %276 = call i32 @VREG(i32 %275)
  %277 = load i64, i64* %5, align 8
  %278 = call i32 @write_hvwc_reg(%struct.vas_window* %274, i32 %276, i64 %277)
  %279 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %280 = load i32, i32* @SPARE5, align 4
  %281 = call i32 @VREG(i32 %280)
  %282 = call i32 @write_hvwc_reg(%struct.vas_window* %279, i32 %281, i64 0)
  %283 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %284 = load i32, i32* @NX_UTIL_ADDER, align 4
  %285 = call i32 @VREG(i32 %284)
  %286 = call i32 @write_hvwc_reg(%struct.vas_window* %283, i32 %285, i64 0)
  %287 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %288 = load i32, i32* @SPARE6, align 4
  %289 = call i32 @VREG(i32 %288)
  %290 = call i32 @write_hvwc_reg(%struct.vas_window* %287, i32 %289, i64 0)
  store i64 0, i64* %5, align 8
  %291 = load i32, i32* @VAS_PUSH_TO_MEM, align 4
  %292 = load i64, i64* %5, align 8
  %293 = call i64 @SET_FIELD(i32 %291, i64 %292, i32 1)
  store i64 %293, i64* %5, align 8
  %294 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %295 = load i32, i32* @WIN_CTX_CACHING_CTL, align 4
  %296 = call i32 @VREG(i32 %295)
  %297 = load i64, i64* %5, align 8
  %298 = call i32 @write_hvwc_reg(%struct.vas_window* %294, i32 %296, i64 %297)
  store i64 0, i64* %5, align 8
  %299 = load i32, i32* @VAS_WINCTL_REJ_NO_CREDIT, align 4
  %300 = load i64, i64* %5, align 8
  %301 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %302 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %301, i32 0, i32 19
  %303 = load i32, i32* %302, align 4
  %304 = call i64 @SET_FIELD(i32 %299, i64 %300, i32 %303)
  store i64 %304, i64* %5, align 8
  %305 = load i32, i32* @VAS_WINCTL_PIN, align 4
  %306 = load i64, i64* %5, align 8
  %307 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %308 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %307, i32 0, i32 20
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @SET_FIELD(i32 %305, i64 %306, i32 %309)
  store i64 %310, i64* %5, align 8
  %311 = load i32, i32* @VAS_WINCTL_TX_WCRED_MODE, align 4
  %312 = load i64, i64* %5, align 8
  %313 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %314 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %313, i32 0, i32 21
  %315 = load i32, i32* %314, align 4
  %316 = call i64 @SET_FIELD(i32 %311, i64 %312, i32 %315)
  store i64 %316, i64* %5, align 8
  %317 = load i32, i32* @VAS_WINCTL_RX_WCRED_MODE, align 4
  %318 = load i64, i64* %5, align 8
  %319 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %320 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %319, i32 0, i32 22
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @SET_FIELD(i32 %317, i64 %318, i32 %321)
  store i64 %322, i64* %5, align 8
  %323 = load i32, i32* @VAS_WINCTL_TX_WORD_MODE, align 4
  %324 = load i64, i64* %5, align 8
  %325 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %326 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %325, i32 0, i32 23
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @SET_FIELD(i32 %323, i64 %324, i32 %327)
  store i64 %328, i64* %5, align 8
  %329 = load i32, i32* @VAS_WINCTL_RX_WORD_MODE, align 4
  %330 = load i64, i64* %5, align 8
  %331 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %332 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %331, i32 0, i32 24
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @SET_FIELD(i32 %329, i64 %330, i32 %333)
  store i64 %334, i64* %5, align 8
  %335 = load i32, i32* @VAS_WINCTL_FAULT_WIN, align 4
  %336 = load i64, i64* %5, align 8
  %337 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %338 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %337, i32 0, i32 25
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @SET_FIELD(i32 %335, i64 %336, i32 %339)
  store i64 %340, i64* %5, align 8
  %341 = load i32, i32* @VAS_WINCTL_NX_WIN, align 4
  %342 = load i64, i64* %5, align 8
  %343 = load %struct.vas_winctx*, %struct.vas_winctx** %4, align 8
  %344 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %343, i32 0, i32 26
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @SET_FIELD(i32 %341, i64 %342, i32 %345)
  store i64 %346, i64* %5, align 8
  %347 = load i32, i32* @VAS_WINCTL_OPEN, align 4
  %348 = load i64, i64* %5, align 8
  %349 = call i64 @SET_FIELD(i32 %347, i64 %348, i32 1)
  store i64 %349, i64* %5, align 8
  %350 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %351 = load i32, i32* @WINCTL, align 4
  %352 = call i32 @VREG(i32 %351)
  %353 = load i64, i64* %5, align 8
  %354 = call i32 @write_hvwc_reg(%struct.vas_window* %350, i32 %352, i64 %353)
  ret i32 0
}

declare dso_local i32 @reset_window_regs(%struct.vas_window*) #1

declare dso_local i64 @SET_FIELD(i32, i64, i32) #1

declare dso_local i32 @write_hvwc_reg(%struct.vas_window*, i32, i64) #1

declare dso_local i32 @VREG(i32) #1

declare dso_local i32 @init_xlate_regs(%struct.vas_window*, i32) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @init_rsvd_tx_buf_count(%struct.vas_window*, %struct.vas_winctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
