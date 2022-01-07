; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5+-pmu.c_power5p_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5+-pmu.c_power5p_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU0_ALT = common dso_local global i32 0, align 4
@PM_ISU0 = common dso_local global i32 0, align 4
@unit_cons = common dso_local global i64** null, align 8
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LSU1 = common dso_local global i32 0, align 4
@PM_GRS = common dso_local global i32 0, align 4
@grsel_shift = common dso_local global i32* null, align 8
@PM_GRS_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @power5p_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5p_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PM_PMC_SH, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @PM_PMC_MSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 6
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %172

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %14, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %15, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 5
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 5242889
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 6291461
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %172

50:                                               ; preds = %46, %43, %27
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %159

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PM_UNIT_SH, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* @PM_UNIT_MSK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @PM_LASTUNIT, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %172

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PM_ISU0_ALT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @PM_ISU0, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64**, i64*** @unit_cons, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %14, align 8
  %82 = load i64**, i64*** @unit_cons, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %15, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PM_BYTE_SH, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32, i32* @PM_BYTE_MSK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %96, 4
  br i1 %97, label %98, label %108

98:                                               ; preds = %72
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @PM_LSU1, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %4, align 4
  br label %172

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 3
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %103, %72
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @PM_GRS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 7
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 6
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 7, i32 3
  store i32 %118, i32* %13, align 4
  %119 = load i32*, i32** @grsel_shift, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = shl i64 %125, %127
  %129 = load i64, i64* %14, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %14, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @PM_GRS_SH, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = shl i64 %136, %138
  %140 = load i64, i64* %15, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %15, align 8
  br label %142

142:                                              ; preds = %112, %108
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 4, %143
  %145 = sub nsw i32 24, %144
  %146 = zext i32 %145 to i64
  %147 = shl i64 15, %146
  %148 = load i64, i64* %14, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %14, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 4, %152
  %154 = sub nsw i32 24, %153
  %155 = zext i32 %154 to i64
  %156 = shl i64 %151, %155
  %157 = load i64, i64* %15, align 8
  %158 = or i64 %157, %156
  store i64 %158, i64* %15, align 8
  br label %159

159:                                              ; preds = %142, %51
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 5
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i64, i64* %14, align 8
  %164 = or i64 %163, 2251799813685248
  store i64 %164, i64* %14, align 8
  %165 = load i64, i64* %15, align 8
  %166 = or i64 %165, 281474976710656
  store i64 %166, i64* %15, align 8
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i64, i64* %14, align 8
  %169 = load i64*, i64** %6, align 8
  store i64 %168, i64* %169, align 8
  %170 = load i64, i64* %15, align 8
  %171 = load i64*, i64** %7, align 8
  store i64 %170, i64* %171, align 8
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %167, %102, %65, %49, %26
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
