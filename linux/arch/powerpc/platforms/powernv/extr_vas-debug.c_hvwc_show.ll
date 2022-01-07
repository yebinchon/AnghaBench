; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_hvwc_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_hvwc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.vas_window* }
%struct.vas_window = type { i32 }

@vas_mutex = common dso_local global i32 0, align 4
@LPID = common dso_local global i32 0, align 4
@PID = common dso_local global i32 0, align 4
@XLATE_MSR = common dso_local global i32 0, align 4
@XLATE_LPCR = common dso_local global i32 0, align 4
@XLATE_CTL = common dso_local global i32 0, align 4
@AMR = common dso_local global i32 0, align 4
@SEIDR = common dso_local global i32 0, align 4
@FAULT_TX_WIN = common dso_local global i32 0, align 4
@OSU_INTR_SRC_RA = common dso_local global i32 0, align 4
@HV_INTR_SRC_RA = common dso_local global i32 0, align 4
@PSWID = common dso_local global i32 0, align 4
@LFIFO_BAR = common dso_local global i32 0, align 4
@LDATA_STAMP_CTL = common dso_local global i32 0, align 4
@LDMA_CACHE_CTL = common dso_local global i32 0, align 4
@LRFIFO_PUSH = common dso_local global i32 0, align 4
@CURR_MSG_COUNT = common dso_local global i32 0, align 4
@LNOTIFY_AFTER_COUNT = common dso_local global i32 0, align 4
@LRX_WCRED = common dso_local global i32 0, align 4
@LRX_WCRED_ADDER = common dso_local global i32 0, align 4
@TX_WCRED = common dso_local global i32 0, align 4
@TX_WCRED_ADDER = common dso_local global i32 0, align 4
@LFIFO_SIZE = common dso_local global i32 0, align 4
@WINCTL = common dso_local global i32 0, align 4
@WIN_STATUS = common dso_local global i32 0, align 4
@WIN_CTX_CACHING_CTL = common dso_local global i32 0, align 4
@TX_RSVD_BUF_COUNT = common dso_local global i32 0, align 4
@LRFIFO_WIN_PTR = common dso_local global i32 0, align 4
@LNOTIFY_CTL = common dso_local global i32 0, align 4
@LNOTIFY_PID = common dso_local global i32 0, align 4
@LNOTIFY_LPID = common dso_local global i32 0, align 4
@LNOTIFY_TID = common dso_local global i32 0, align 4
@LNOTIFY_SCOPE = common dso_local global i32 0, align 4
@NX_UTIL_ADDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hvwc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvwc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vas_window*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.vas_window*, %struct.vas_window** %7, align 8
  store %struct.vas_window* %8, %struct.vas_window** %5, align 8
  %9 = call i32 @mutex_lock(i32* @vas_mutex)
  %10 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %11 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %181

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %18 = load i32, i32* @LPID, align 4
  %19 = call i32 @VREG(i32 %18)
  %20 = call i32 @print_reg(%struct.seq_file* %16, %struct.vas_window* %17, i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %23 = load i32, i32* @PID, align 4
  %24 = call i32 @VREG(i32 %23)
  %25 = call i32 @print_reg(%struct.seq_file* %21, %struct.vas_window* %22, i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %28 = load i32, i32* @XLATE_MSR, align 4
  %29 = call i32 @VREG(i32 %28)
  %30 = call i32 @print_reg(%struct.seq_file* %26, %struct.vas_window* %27, i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %33 = load i32, i32* @XLATE_LPCR, align 4
  %34 = call i32 @VREG(i32 %33)
  %35 = call i32 @print_reg(%struct.seq_file* %31, %struct.vas_window* %32, i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %38 = load i32, i32* @XLATE_CTL, align 4
  %39 = call i32 @VREG(i32 %38)
  %40 = call i32 @print_reg(%struct.seq_file* %36, %struct.vas_window* %37, i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %43 = load i32, i32* @AMR, align 4
  %44 = call i32 @VREG(i32 %43)
  %45 = call i32 @print_reg(%struct.seq_file* %41, %struct.vas_window* %42, i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %48 = load i32, i32* @SEIDR, align 4
  %49 = call i32 @VREG(i32 %48)
  %50 = call i32 @print_reg(%struct.seq_file* %46, %struct.vas_window* %47, i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %53 = load i32, i32* @FAULT_TX_WIN, align 4
  %54 = call i32 @VREG(i32 %53)
  %55 = call i32 @print_reg(%struct.seq_file* %51, %struct.vas_window* %52, i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %58 = load i32, i32* @OSU_INTR_SRC_RA, align 4
  %59 = call i32 @VREG(i32 %58)
  %60 = call i32 @print_reg(%struct.seq_file* %56, %struct.vas_window* %57, i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %63 = load i32, i32* @HV_INTR_SRC_RA, align 4
  %64 = call i32 @VREG(i32 %63)
  %65 = call i32 @print_reg(%struct.seq_file* %61, %struct.vas_window* %62, i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %68 = load i32, i32* @PSWID, align 4
  %69 = call i32 @VREG(i32 %68)
  %70 = call i32 @print_reg(%struct.seq_file* %66, %struct.vas_window* %67, i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %73 = load i32, i32* @LFIFO_BAR, align 4
  %74 = call i32 @VREG(i32 %73)
  %75 = call i32 @print_reg(%struct.seq_file* %71, %struct.vas_window* %72, i32 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %78 = load i32, i32* @LDATA_STAMP_CTL, align 4
  %79 = call i32 @VREG(i32 %78)
  %80 = call i32 @print_reg(%struct.seq_file* %76, %struct.vas_window* %77, i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %83 = load i32, i32* @LDMA_CACHE_CTL, align 4
  %84 = call i32 @VREG(i32 %83)
  %85 = call i32 @print_reg(%struct.seq_file* %81, %struct.vas_window* %82, i32 %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %88 = load i32, i32* @LRFIFO_PUSH, align 4
  %89 = call i32 @VREG(i32 %88)
  %90 = call i32 @print_reg(%struct.seq_file* %86, %struct.vas_window* %87, i32 %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %93 = load i32, i32* @CURR_MSG_COUNT, align 4
  %94 = call i32 @VREG(i32 %93)
  %95 = call i32 @print_reg(%struct.seq_file* %91, %struct.vas_window* %92, i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %98 = load i32, i32* @LNOTIFY_AFTER_COUNT, align 4
  %99 = call i32 @VREG(i32 %98)
  %100 = call i32 @print_reg(%struct.seq_file* %96, %struct.vas_window* %97, i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %103 = load i32, i32* @LRX_WCRED, align 4
  %104 = call i32 @VREG(i32 %103)
  %105 = call i32 @print_reg(%struct.seq_file* %101, %struct.vas_window* %102, i32 %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %108 = load i32, i32* @LRX_WCRED_ADDER, align 4
  %109 = call i32 @VREG(i32 %108)
  %110 = call i32 @print_reg(%struct.seq_file* %106, %struct.vas_window* %107, i32 %109)
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %113 = load i32, i32* @TX_WCRED, align 4
  %114 = call i32 @VREG(i32 %113)
  %115 = call i32 @print_reg(%struct.seq_file* %111, %struct.vas_window* %112, i32 %114)
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %118 = load i32, i32* @TX_WCRED_ADDER, align 4
  %119 = call i32 @VREG(i32 %118)
  %120 = call i32 @print_reg(%struct.seq_file* %116, %struct.vas_window* %117, i32 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %123 = load i32, i32* @LFIFO_SIZE, align 4
  %124 = call i32 @VREG(i32 %123)
  %125 = call i32 @print_reg(%struct.seq_file* %121, %struct.vas_window* %122, i32 %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %128 = load i32, i32* @WINCTL, align 4
  %129 = call i32 @VREG(i32 %128)
  %130 = call i32 @print_reg(%struct.seq_file* %126, %struct.vas_window* %127, i32 %129)
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %133 = load i32, i32* @WIN_STATUS, align 4
  %134 = call i32 @VREG(i32 %133)
  %135 = call i32 @print_reg(%struct.seq_file* %131, %struct.vas_window* %132, i32 %134)
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %138 = load i32, i32* @WIN_CTX_CACHING_CTL, align 4
  %139 = call i32 @VREG(i32 %138)
  %140 = call i32 @print_reg(%struct.seq_file* %136, %struct.vas_window* %137, i32 %139)
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %143 = load i32, i32* @TX_RSVD_BUF_COUNT, align 4
  %144 = call i32 @VREG(i32 %143)
  %145 = call i32 @print_reg(%struct.seq_file* %141, %struct.vas_window* %142, i32 %144)
  %146 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %147 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %148 = load i32, i32* @LRFIFO_WIN_PTR, align 4
  %149 = call i32 @VREG(i32 %148)
  %150 = call i32 @print_reg(%struct.seq_file* %146, %struct.vas_window* %147, i32 %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %153 = load i32, i32* @LNOTIFY_CTL, align 4
  %154 = call i32 @VREG(i32 %153)
  %155 = call i32 @print_reg(%struct.seq_file* %151, %struct.vas_window* %152, i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %157 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %158 = load i32, i32* @LNOTIFY_PID, align 4
  %159 = call i32 @VREG(i32 %158)
  %160 = call i32 @print_reg(%struct.seq_file* %156, %struct.vas_window* %157, i32 %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %163 = load i32, i32* @LNOTIFY_LPID, align 4
  %164 = call i32 @VREG(i32 %163)
  %165 = call i32 @print_reg(%struct.seq_file* %161, %struct.vas_window* %162, i32 %164)
  %166 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %167 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %168 = load i32, i32* @LNOTIFY_TID, align 4
  %169 = call i32 @VREG(i32 %168)
  %170 = call i32 @print_reg(%struct.seq_file* %166, %struct.vas_window* %167, i32 %169)
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %173 = load i32, i32* @LNOTIFY_SCOPE, align 4
  %174 = call i32 @VREG(i32 %173)
  %175 = call i32 @print_reg(%struct.seq_file* %171, %struct.vas_window* %172, i32 %174)
  %176 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %177 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %178 = load i32, i32* @NX_UTIL_ADDER, align 4
  %179 = call i32 @VREG(i32 %178)
  %180 = call i32 @print_reg(%struct.seq_file* %176, %struct.vas_window* %177, i32 %179)
  br label %181

181:                                              ; preds = %15, %14
  %182 = call i32 @mutex_unlock(i32* @vas_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @print_reg(%struct.seq_file*, %struct.vas_window*, i32) #1

declare dso_local i32 @VREG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
