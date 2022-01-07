; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_icst = type { i64, i32 }
%struct.icst_vco = type { i32 }

@ICST_INTEGRATOR_AP_CM = common dso_local global i64 0, align 8
@ICST_INTEGRATOR_CP_CM_CORE = common dso_local global i64 0, align 8
@ICST_INTEGRATOR_CP_CM_MEM = common dso_local global i64 0, align 8
@ICST_INTEGRATOR_AP_SYS = common dso_local global i64 0, align 8
@ICST_INTEGRATOR_AP_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @icst_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @icst_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_icst*, align 8
  %9 = alloca %struct.icst_vco, align 4
  %10 = alloca %struct.icst_vco, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_icst* @to_icst(%struct.clk_hw* %11)
  store %struct.clk_icst* %12, %struct.clk_icst** %8, align 8
  %13 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %14 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ICST_INTEGRATOR_AP_CM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %20 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ICST_INTEGRATOR_CP_CM_CORE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18, %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp ule i64 %25, 12000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 12000000, i64* %4, align 8
  br label %104

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = icmp uge i64 %29, 160000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 160000000, i64* %4, align 8
  br label %104

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @DIV_ROUND_CLOSEST(i64 %33, i32 1000000)
  %35 = mul nsw i32 %34, 1000000
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  br label %104

37:                                               ; preds = %18
  %38 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %39 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICST_INTEGRATOR_CP_CM_MEM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = icmp ule i64 %44, 6000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i64 6000000, i64* %4, align 8
  br label %104

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = icmp uge i64 %48, 66000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 66000000, i64* %4, align 8
  br label %104

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @DIV_ROUND_CLOSEST(i64 %52, i32 500000)
  %54 = mul nsw i32 %53, 500000
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %4, align 8
  br label %104

56:                                               ; preds = %37
  %57 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %58 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ICST_INTEGRATOR_AP_SYS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = icmp ule i64 %63, 3000000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 3000000, i64* %4, align 8
  br label %104

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = icmp uge i64 %67, 50000000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 5000000, i64* %4, align 8
  br label %104

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @DIV_ROUND_CLOSEST(i64 %71, i32 250000)
  %73 = mul nsw i32 %72, 250000
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %4, align 8
  br label %104

75:                                               ; preds = %56
  %76 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %77 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ICST_INTEGRATOR_AP_PCI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i64, i64* %6, align 8
  %83 = icmp ule i64 %82, 25000000
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = icmp ult i64 %85, 29000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  store i64 25000000, i64* %4, align 8
  br label %104

88:                                               ; preds = %84
  store i64 33000000, i64* %4, align 8
  br label %104

89:                                               ; preds = %75
  %90 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %91 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @icst_hz_to_vco(i32 %92, i64 %93)
  %95 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %10, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = bitcast %struct.icst_vco* %9 to i8*
  %97 = bitcast %struct.icst_vco* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.clk_icst*, %struct.clk_icst** %8, align 8
  %99 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @icst_hz(i32 %100, i32 %102)
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %89, %88, %87, %70, %69, %65, %51, %50, %46, %32, %31, %27
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local %struct.clk_icst* @to_icst(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @icst_hz_to_vco(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @icst_hz(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
