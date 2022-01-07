; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_get_mn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_get_mn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn = type { i32, i32, i32, i32 }
%union.uvh_rh_gam_config_mmr_u = type { i8* }
%union.uv3h_gr0_gam_gr_config_u = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@UVH_RH_GAM_CONFIG_MMR = common dso_local global i32 0, align 4
@UV3H_GR0_GAM_GR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn*)* @get_mn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mn(%struct.mn* %0) #0 {
  %2 = alloca %struct.mn*, align 8
  %3 = alloca %union.uvh_rh_gam_config_mmr_u, align 8
  %4 = alloca %union.uv3h_gr0_gam_gr_config_u, align 8
  store %struct.mn* %0, %struct.mn** %2, align 8
  %5 = load %struct.mn*, %struct.mn** %2, align 8
  %6 = call i32 @memset(%struct.mn* %5, i32 0, i32 16)
  %7 = load i32, i32* @UVH_RH_GAM_CONFIG_MMR, align 4
  %8 = call i8* @uv_read_local_mmr(i32 %7)
  %9 = bitcast %union.uvh_rh_gam_config_mmr_u* %3 to i8**
  store i8* %8, i8** %9, align 8
  %10 = bitcast %union.uvh_rh_gam_config_mmr_u* %3 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mn*, %struct.mn** %2, align 8
  %14 = getelementptr inbounds %struct.mn, %struct.mn* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = call i64 (...) @is_uv4_hub()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mn*, %struct.mn** %2, align 8
  %19 = getelementptr inbounds %struct.mn, %struct.mn* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.mn*, %struct.mn** %2, align 8
  %21 = getelementptr inbounds %struct.mn, %struct.mn* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %73

22:                                               ; preds = %1
  %23 = call i64 (...) @is_uv3_hub()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = bitcast %union.uvh_rh_gam_config_mmr_u* %3 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mn*, %struct.mn** %2, align 8
  %30 = getelementptr inbounds %struct.mn, %struct.mn* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @UV3H_GR0_GAM_GR_CONFIG, align 4
  %32 = call i8* @uv_read_local_mmr(i32 %31)
  %33 = bitcast %union.uv3h_gr0_gam_gr_config_u* %4 to i8**
  store i8* %32, i8** %33, align 8
  %34 = bitcast %union.uv3h_gr0_gam_gr_config_u* %4 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mn*, %struct.mn** %2, align 8
  %38 = getelementptr inbounds %struct.mn, %struct.mn* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %72

39:                                               ; preds = %22
  %40 = call i64 (...) @is_uv2_hub()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = bitcast %union.uvh_rh_gam_config_mmr_u* %3 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mn*, %struct.mn** %2, align 8
  %47 = getelementptr inbounds %struct.mn, %struct.mn* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mn*, %struct.mn** %2, align 8
  %49 = getelementptr inbounds %struct.mn, %struct.mn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 40
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 40, i32 39
  %54 = load %struct.mn*, %struct.mn** %2, align 8
  %55 = getelementptr inbounds %struct.mn, %struct.mn* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %71

56:                                               ; preds = %39
  %57 = call i64 (...) @is_uv1_hub()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = bitcast %union.uvh_rh_gam_config_mmr_u* %3 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mn*, %struct.mn** %2, align 8
  %64 = getelementptr inbounds %struct.mn, %struct.mn* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mn*, %struct.mn** %2, align 8
  %66 = getelementptr inbounds %struct.mn, %struct.mn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mn*, %struct.mn** %2, align 8
  %69 = getelementptr inbounds %struct.mn, %struct.mn* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %56
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %25
  br label %73

73:                                               ; preds = %72, %17
  %74 = load %struct.mn*, %struct.mn** %2, align 8
  %75 = getelementptr inbounds %struct.mn, %struct.mn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.mn*, %struct.mn** %2, align 8
  %80 = getelementptr inbounds %struct.mn, %struct.mn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 64, %81
  br label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i32 [ %82, %78 ], [ 0, %83 ]
  %86 = load %struct.mn*, %struct.mn** %2, align 8
  %87 = getelementptr inbounds %struct.mn, %struct.mn* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @memset(%struct.mn*, i32, i32) #1

declare dso_local i8* @uv_read_local_mmr(i32) #1

declare dso_local i64 @is_uv4_hub(...) #1

declare dso_local i64 @is_uv3_hub(...) #1

declare dso_local i64 @is_uv2_hub(...) #1

declare dso_local i64 @is_uv1_hub(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
