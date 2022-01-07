; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_suni.c_suni_hz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_suni.c_suni_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suni_priv = type { %struct.k_sonet_stats, %struct.atm_dev*, %struct.suni_priv* }
%struct.k_sonet_stats = type { i32 }
%struct.atm_dev = type { i32 }
%struct.timer_list = type { i32 }

@sunis = common dso_local global %struct.suni_priv* null, align 8
@MRI = common dso_local global i32 0, align 4
@section_bip = common dso_local global i32 0, align 4
@RSOP_SBL = common dso_local global i32 0, align 4
@RSOP_SBM = common dso_local global i32 0, align 4
@line_bip = common dso_local global i32 0, align 4
@RLOP_LBL = common dso_local global i32 0, align 4
@RLOP_LB = common dso_local global i32 0, align 4
@RLOP_LBM = common dso_local global i32 0, align 4
@path_bip = common dso_local global i32 0, align 4
@RPOP_PBL = common dso_local global i32 0, align 4
@RPOP_PBM = common dso_local global i32 0, align 4
@line_febe = common dso_local global i32 0, align 4
@RLOP_LFL = common dso_local global i32 0, align 4
@RLOP_LF = common dso_local global i32 0, align 4
@RLOP_LFM = common dso_local global i32 0, align 4
@path_febe = common dso_local global i32 0, align 4
@RPOP_PFL = common dso_local global i32 0, align 4
@RPOP_PFM = common dso_local global i32 0, align 4
@corr_hcs = common dso_local global i32 0, align 4
@RACP_CHEC = common dso_local global i32 0, align 4
@uncorr_hcs = common dso_local global i32 0, align 4
@RACP_UHEC = common dso_local global i32 0, align 4
@rx_cells = common dso_local global i32 0, align 4
@RACP_RCCL = common dso_local global i32 0, align 4
@RACP_RCC = common dso_local global i32 0, align 4
@RACP_RCCM = common dso_local global i32 0, align 4
@tx_cells = common dso_local global i32 0, align 4
@TACP_TCCL = common dso_local global i32 0, align 4
@TACP_TCC = common dso_local global i32 0, align 4
@TACP_TCCM = common dso_local global i32 0, align 4
@poll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @suni_hz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suni_hz(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.suni_priv*, align 8
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca %struct.k_sonet_stats*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.suni_priv*, %struct.suni_priv** @sunis, align 8
  store %struct.suni_priv* %6, %struct.suni_priv** %3, align 8
  br label %7

7:                                                ; preds = %119, %1
  %8 = load %struct.suni_priv*, %struct.suni_priv** %3, align 8
  %9 = icmp ne %struct.suni_priv* %8, null
  br i1 %9, label %10, label %123

10:                                               ; preds = %7
  %11 = load %struct.suni_priv*, %struct.suni_priv** %3, align 8
  %12 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %11, i32 0, i32 1
  %13 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  store %struct.atm_dev* %13, %struct.atm_dev** %4, align 8
  %14 = load %struct.suni_priv*, %struct.suni_priv** %3, align 8
  %15 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %14, i32 0, i32 0
  store %struct.k_sonet_stats* %15, %struct.k_sonet_stats** %5, align 8
  %16 = load i32, i32* @MRI, align 4
  %17 = call i32 @PUT(i32 0, i32 %16)
  %18 = call i32 @udelay(i32 1)
  %19 = load i32, i32* @section_bip, align 4
  %20 = load i32, i32* @RSOP_SBL, align 4
  %21 = call i32 @GET(i32 %20)
  %22 = and i32 %21, 255
  %23 = load i32, i32* @RSOP_SBM, align 4
  %24 = call i32 @GET(i32 %23)
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = call i32 @ADD_LIMITED(i32 %19, i32 %27)
  %29 = load i32, i32* @line_bip, align 4
  %30 = load i32, i32* @RLOP_LBL, align 4
  %31 = call i32 @GET(i32 %30)
  %32 = and i32 %31, 255
  %33 = load i32, i32* @RLOP_LB, align 4
  %34 = call i32 @GET(i32 %33)
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32, i32* @RLOP_LBM, align 4
  %39 = call i32 @GET(i32 %38)
  %40 = and i32 %39, 15
  %41 = shl i32 %40, 16
  %42 = or i32 %37, %41
  %43 = call i32 @ADD_LIMITED(i32 %29, i32 %42)
  %44 = load i32, i32* @path_bip, align 4
  %45 = load i32, i32* @RPOP_PBL, align 4
  %46 = call i32 @GET(i32 %45)
  %47 = and i32 %46, 255
  %48 = load i32, i32* @RPOP_PBM, align 4
  %49 = call i32 @GET(i32 %48)
  %50 = and i32 %49, 255
  %51 = shl i32 %50, 8
  %52 = or i32 %47, %51
  %53 = call i32 @ADD_LIMITED(i32 %44, i32 %52)
  %54 = load i32, i32* @line_febe, align 4
  %55 = load i32, i32* @RLOP_LFL, align 4
  %56 = call i32 @GET(i32 %55)
  %57 = and i32 %56, 255
  %58 = load i32, i32* @RLOP_LF, align 4
  %59 = call i32 @GET(i32 %58)
  %60 = and i32 %59, 255
  %61 = shl i32 %60, 8
  %62 = or i32 %57, %61
  %63 = load i32, i32* @RLOP_LFM, align 4
  %64 = call i32 @GET(i32 %63)
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 16
  %67 = or i32 %62, %66
  %68 = call i32 @ADD_LIMITED(i32 %54, i32 %67)
  %69 = load i32, i32* @path_febe, align 4
  %70 = load i32, i32* @RPOP_PFL, align 4
  %71 = call i32 @GET(i32 %70)
  %72 = and i32 %71, 255
  %73 = load i32, i32* @RPOP_PFM, align 4
  %74 = call i32 @GET(i32 %73)
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 8
  %77 = or i32 %72, %76
  %78 = call i32 @ADD_LIMITED(i32 %69, i32 %77)
  %79 = load i32, i32* @corr_hcs, align 4
  %80 = load i32, i32* @RACP_CHEC, align 4
  %81 = call i32 @GET(i32 %80)
  %82 = and i32 %81, 255
  %83 = call i32 @ADD_LIMITED(i32 %79, i32 %82)
  %84 = load i32, i32* @uncorr_hcs, align 4
  %85 = load i32, i32* @RACP_UHEC, align 4
  %86 = call i32 @GET(i32 %85)
  %87 = and i32 %86, 255
  %88 = call i32 @ADD_LIMITED(i32 %84, i32 %87)
  %89 = load i32, i32* @rx_cells, align 4
  %90 = load i32, i32* @RACP_RCCL, align 4
  %91 = call i32 @GET(i32 %90)
  %92 = and i32 %91, 255
  %93 = load i32, i32* @RACP_RCC, align 4
  %94 = call i32 @GET(i32 %93)
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 8
  %97 = or i32 %92, %96
  %98 = load i32, i32* @RACP_RCCM, align 4
  %99 = call i32 @GET(i32 %98)
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 16
  %102 = or i32 %97, %101
  %103 = call i32 @ADD_LIMITED(i32 %89, i32 %102)
  %104 = load i32, i32* @tx_cells, align 4
  %105 = load i32, i32* @TACP_TCCL, align 4
  %106 = call i32 @GET(i32 %105)
  %107 = and i32 %106, 255
  %108 = load i32, i32* @TACP_TCC, align 4
  %109 = call i32 @GET(i32 %108)
  %110 = and i32 %109, 255
  %111 = shl i32 %110, 8
  %112 = or i32 %107, %111
  %113 = load i32, i32* @TACP_TCCM, align 4
  %114 = call i32 @GET(i32 %113)
  %115 = and i32 %114, 7
  %116 = shl i32 %115, 16
  %117 = or i32 %112, %116
  %118 = call i32 @ADD_LIMITED(i32 %104, i32 %117)
  br label %119

119:                                              ; preds = %10
  %120 = load %struct.suni_priv*, %struct.suni_priv** %3, align 8
  %121 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %120, i32 0, i32 2
  %122 = load %struct.suni_priv*, %struct.suni_priv** %121, align 8
  store %struct.suni_priv* %122, %struct.suni_priv** %3, align 8
  br label %7

123:                                              ; preds = %7
  %124 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %125 = icmp ne %struct.timer_list* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i64, i64* @jiffies, align 8
  %128 = load i64, i64* @HZ, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @mod_timer(i32* @poll_timer, i64 %129)
  br label %131

131:                                              ; preds = %126, %123
  ret void
}

declare dso_local i32 @PUT(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ADD_LIMITED(i32, i32) #1

declare dso_local i32 @GET(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
