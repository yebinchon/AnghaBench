; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_check_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sparc_pmu = common dso_local global %struct.TYPE_4__* null, align 8
@SPARC_PMU_HAS_CONFLICTS = common dso_local global i32 0, align 4
@PIC_LOWER = common dso_local global i32 0, align 4
@PIC_UPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event**, i64*, i32)* @sparc_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_check_constraints(%struct.perf_event** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event** %0, %struct.perf_event*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %166

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sparc_pmu, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %166

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sparc_pmu, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPARC_PMU_HAS_CONFLICTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %36, i64 %38
  %40 = load %struct.perf_event*, %struct.perf_event** %39, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %35, i32* %42, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %30

46:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %166

47:                                               ; preds = %22
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @perf_event_get_msk(i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PIC_LOWER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %148

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 2
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i64*, i64** %6, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @perf_event_get_msk(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PIC_UPPER, align 4
  %72 = load i32, i32* @PIC_LOWER, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @PIC_UPPER, align 4
  %78 = load i32, i32* @PIC_LOWER, align 4
  %79 = or i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %148

82:                                               ; preds = %75, %61
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PIC_UPPER, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PIC_LOWER, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @PIC_UPPER, align 4
  %93 = load i32, i32* @PIC_LOWER, align 4
  %94 = or i32 %92, %93
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @PIC_LOWER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %96
  br label %148

103:                                              ; preds = %90, %86
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @PIC_UPPER, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @PIC_LOWER, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @PIC_UPPER, align 4
  %114 = load i32, i32* @PIC_LOWER, align 4
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @PIC_UPPER, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %122, %117
  br label %148

124:                                              ; preds = %111, %107
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @PIC_UPPER, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @PIC_LOWER, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PIC_LOWER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @PIC_UPPER, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136, %128
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @PIC_LOWER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %10, align 4
  br label %146

146:                                              ; preds = %145, %140
  br label %148

147:                                              ; preds = %136, %132
  store i32 -1, i32* %4, align 4
  br label %166

148:                                              ; preds = %146, %123, %102, %81, %60
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %151 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %150, i64 0
  %152 = load %struct.perf_event*, %struct.perf_event** %151, align 8
  %153 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %165

157:                                              ; preds = %148
  %158 = load i32, i32* %10, align 4
  %159 = xor i32 %158, 1
  %160 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %161 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %160, i64 1
  %162 = load %struct.perf_event*, %struct.perf_event** %161, align 8
  %163 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %159, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %148
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %147, %46, %21, %14
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @perf_event_get_msk(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
