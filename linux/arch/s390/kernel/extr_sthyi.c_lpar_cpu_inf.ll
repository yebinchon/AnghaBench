; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_lpar_cpu_inf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_lpar_cpu_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpar_cpu_inf = type { %struct.cpu_inf, %struct.cpu_inf }
%struct.cpu_inf = type { i32, i32, i32, i32, i32, i32 }
%struct.diag204_x_part_block = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DIAG204_CPU_ONLINE = common dso_local global i32 0, align 4
@DED_WEIGHT = common dso_local global i64 0, align 8
@DIAG204_CPU_CAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diag204_x_part_block* (%struct.lpar_cpu_inf*, i32, i8*, %struct.diag204_x_part_block*)* @lpar_cpu_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diag204_x_part_block* @lpar_cpu_inf(%struct.lpar_cpu_inf* %0, i32 %1, i8* %2, %struct.diag204_x_part_block* %3) #0 {
  %5 = alloca %struct.lpar_cpu_inf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.diag204_x_part_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cpu_inf*, align 8
  store %struct.lpar_cpu_inf* %0, %struct.lpar_cpu_inf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.diag204_x_part_block* %3, %struct.diag204_x_part_block** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %162, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %17 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %165

21:                                               ; preds = %14
  %22 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %23 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DIAG204_CPU_ONLINE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %162

34:                                               ; preds = %21
  %35 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %36 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @cpu_id(i32 %42, i8* %43)
  switch i32 %44, label %99 [
    i32 129, label %45
    i32 128, label %72
  ]

45:                                               ; preds = %34
  %46 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %47 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %46, i32 0, i32 1
  store %struct.cpu_inf* %47, %struct.cpu_inf** %13, align 8
  %48 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %49 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DED_WEIGHT, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %60 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = or i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %58, %45
  br label %100

72:                                               ; preds = %34
  %73 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %74 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %73, i32 0, i32 0
  store %struct.cpu_inf* %74, %struct.cpu_inf** %13, align 8
  %75 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %76 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DED_WEIGHT, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %72
  %86 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %87 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = or i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %85, %72
  br label %100

99:                                               ; preds = %34
  br label %162

100:                                              ; preds = %98, %71
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %162

104:                                              ; preds = %100
  %105 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %106 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DIAG204_CPU_CAPPED, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %118 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cpu_inf*, %struct.cpu_inf** %13, align 8
  %126 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %130 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cpu_inf*, %struct.cpu_inf** %13, align 8
  %138 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %142 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DED_WEIGHT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %104
  %152 = load %struct.cpu_inf*, %struct.cpu_inf** %13, align 8
  %153 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %161

156:                                              ; preds = %104
  %157 = load %struct.cpu_inf*, %struct.cpu_inf** %13, align 8
  %158 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %103, %99, %33
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %14

165:                                              ; preds = %14
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %174 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %178 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %171, %168, %165
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %183 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.lpar_cpu_inf*, %struct.lpar_cpu_inf** %5, align 8
  %189 = getelementptr inbounds %struct.lpar_cpu_inf, %struct.lpar_cpu_inf* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.cpu_inf, %struct.cpu_inf* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %187
  store i32 %192, i32* %190, align 4
  %193 = load %struct.diag204_x_part_block*, %struct.diag204_x_part_block** %8, align 8
  %194 = getelementptr inbounds %struct.diag204_x_part_block, %struct.diag204_x_part_block* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = bitcast %struct.TYPE_4__* %198 to %struct.diag204_x_part_block*
  ret %struct.diag204_x_part_block* %199
}

declare dso_local i32 @cpu_id(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
