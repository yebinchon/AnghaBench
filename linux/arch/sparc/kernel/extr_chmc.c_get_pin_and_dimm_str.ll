; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_get_pin_and_dimm_str.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_get_pin_and_dimm_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbusmc_obp_mem_layout = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.chmc_obp_mem_layout = type { i8**, %struct.chmc_obp_map*, i64 }
%struct.chmc_obp_map = type { i32*, i32* }

@mc_type = common dso_local global i64 0, align 8
@MC_TYPE_JBUS = common dso_local global i64 0, align 8
@JBUS_LAST_BIT = common dso_local global i32 0, align 4
@L2_LINE_ADDR_MSK = common dso_local global i64 0, align 8
@QW_BYTES = common dso_local global i64 0, align 8
@QW_BITS = common dso_local global i32 0, align 4
@SAFARI_LAST_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32*, i8**, i8*, i32)* @get_pin_and_dimm_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pin_and_dimm_str(i32 %0, i64 %1, i32* %2, i8** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.jbusmc_obp_mem_layout*, align 8
  %19 = alloca %struct.chmc_obp_mem_layout*, align 8
  %20 = alloca %struct.chmc_obp_map*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @syndrome_to_qword_code(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* @mc_type, align 8
  %25 = load i64, i64* @MC_TYPE_JBUS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %6
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.jbusmc_obp_mem_layout*
  store %struct.jbusmc_obp_mem_layout* %29, %struct.jbusmc_obp_mem_layout** %18, align 8
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @JBUS_LAST_BIT, align 4
  %32 = load i32, i32* %14, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %16, align 4
  %36 = load %struct.jbusmc_obp_mem_layout*, %struct.jbusmc_obp_mem_layout** %18, align 8
  %37 = getelementptr inbounds %struct.jbusmc_obp_mem_layout, %struct.jbusmc_obp_mem_layout* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %15, align 4
  %46 = and i32 %45, 7
  %47 = sub nsw i32 7, %46
  %48 = ashr i32 %44, %47
  %49 = and i32 %48, 1
  store i32 %49, i32* %17, align 4
  %50 = load %struct.jbusmc_obp_mem_layout*, %struct.jbusmc_obp_mem_layout** %18, align 8
  %51 = getelementptr inbounds %struct.jbusmc_obp_mem_layout, %struct.jbusmc_obp_mem_layout* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %10, align 8
  store i8* %58, i8** %59, align 8
  %60 = load %struct.jbusmc_obp_mem_layout*, %struct.jbusmc_obp_mem_layout** %18, align 8
  %61 = getelementptr inbounds %struct.jbusmc_obp_mem_layout, %struct.jbusmc_obp_mem_layout* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %136

69:                                               ; preds = %6
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast i8* %70 to %struct.chmc_obp_mem_layout*
  store %struct.chmc_obp_mem_layout* %71, %struct.chmc_obp_mem_layout** %19, align 8
  %72 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %19, align 8
  %73 = getelementptr inbounds %struct.chmc_obp_mem_layout, %struct.chmc_obp_mem_layout* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %19, align 8
  %78 = getelementptr inbounds %struct.chmc_obp_mem_layout, %struct.chmc_obp_mem_layout* %77, i32 0, i32 1
  %79 = load %struct.chmc_obp_map*, %struct.chmc_obp_map** %78, align 8
  %80 = getelementptr inbounds %struct.chmc_obp_map, %struct.chmc_obp_map* %79, i64 0
  store %struct.chmc_obp_map* %80, %struct.chmc_obp_map** %20, align 8
  br label %86

81:                                               ; preds = %69
  %82 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %19, align 8
  %83 = getelementptr inbounds %struct.chmc_obp_mem_layout, %struct.chmc_obp_mem_layout* %82, i32 0, i32 1
  %84 = load %struct.chmc_obp_map*, %struct.chmc_obp_map** %83, align 8
  %85 = getelementptr inbounds %struct.chmc_obp_map, %struct.chmc_obp_map* %84, i64 1
  store %struct.chmc_obp_map* %85, %struct.chmc_obp_map** %20, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @L2_LINE_ADDR_MSK, align 8
  %89 = and i64 %87, %88
  %90 = load i64, i64* @QW_BYTES, align 8
  %91 = udiv i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = sub nsw i32 3, %93
  %95 = load i32, i32* @QW_BITS, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* @SAFARI_LAST_BIT, align 4
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = ashr i32 %102, 2
  store i32 %103, i32* %16, align 4
  %104 = load %struct.chmc_obp_map*, %struct.chmc_obp_map** %20, align 8
  %105 = getelementptr inbounds %struct.chmc_obp_map, %struct.chmc_obp_map* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, 3
  %114 = sub nsw i32 3, %113
  %115 = shl i32 %114, 1
  %116 = ashr i32 %111, %115
  %117 = and i32 %116, 3
  store i32 %117, i32* %17, align 4
  %118 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %19, align 8
  %119 = getelementptr inbounds %struct.chmc_obp_mem_layout, %struct.chmc_obp_mem_layout* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %120, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %10, align 8
  store i8* %126, i8** %127, align 8
  %128 = load %struct.chmc_obp_map*, %struct.chmc_obp_map** %20, align 8
  %129 = getelementptr inbounds %struct.chmc_obp_map, %struct.chmc_obp_map* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %86, %27
  ret void
}

declare dso_local i32 @syndrome_to_qword_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
