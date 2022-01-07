; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_unlock_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_unlock_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_tag = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_L2C_TAG_ADDR_ALIAS_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2_ASSOC = common dso_local global i32 0, align 4
@CVMX_MIPS_SPACE_XKPHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_unlock_line(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_l2c_tag, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_l2c_tag, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.cvmx_l2c_tag, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.cvmx_l2c_tag, align 8
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @OCTEON_CN63XX, align 4
  %15 = call i64 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @cvmx_l2c_address_to_index(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %22, %25
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %62, %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CVMX_L2_ASSOC, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call { i64, i64 } @cvmx_l2c_get_tag(i32 %32, i32 %33)
  %35 = getelementptr inbounds %union.cvmx_l2c_tag, %union.cvmx_l2c_tag* %8, i32 0, i32 0
  %36 = bitcast %struct.TYPE_2__* %35 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %34, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %34, 1
  store i64 %40, i64* %39, align 8
  %41 = bitcast %union.cvmx_l2c_tag* %5 to i8*
  %42 = bitcast %union.cvmx_l2c_tag* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = bitcast %union.cvmx_l2c_tag* %5 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = bitcast %union.cvmx_l2c_tag* %5 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @CVMX_MIPS_SPACE_XKPHYS, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @CVMX_ADD_SEG(i32 %54, i32 %55)
  %57 = call i32 @CVMX_CACHE_WBIL2(i32 %56, i32 0)
  %58 = bitcast %union.cvmx_l2c_tag* %5 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %47, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %27

65:                                               ; preds = %27
  br label %114

66:                                               ; preds = %1
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cvmx_l2c_address_to_index(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %71, %74
  store i32 %75, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %110, %66
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @CVMX_L2_ASSOC, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call { i64, i64 } @cvmx_l2c_get_tag(i32 %81, i32 %82)
  %84 = getelementptr inbounds %union.cvmx_l2c_tag, %union.cvmx_l2c_tag* %13, i32 0, i32 0
  %85 = bitcast %struct.TYPE_2__* %84 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = extractvalue { i64, i64 } %83, 0
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = extractvalue { i64, i64 } %83, 1
  store i64 %89, i64* %88, align 8
  %90 = bitcast %union.cvmx_l2c_tag* %10 to i8*
  %91 = bitcast %union.cvmx_l2c_tag* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = bitcast %union.cvmx_l2c_tag* %10 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %80
  %97 = bitcast %union.cvmx_l2c_tag* %10 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @cvmx_l2c_flush_line(i32 %103, i32 %104)
  %106 = bitcast %union.cvmx_l2c_tag* %10 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %2, align 4
  br label %115

109:                                              ; preds = %96, %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %76

113:                                              ; preds = %76
  br label %114

114:                                              ; preds = %113, %65
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %102, %53
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_l2c_address_to_index(i32) #1

declare dso_local { i64, i64 } @cvmx_l2c_get_tag(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CVMX_CACHE_WBIL2(i32, i32) #1

declare dso_local i32 @CVMX_ADD_SEG(i32, i32) #1

declare dso_local i32 @cvmx_l2c_flush_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
