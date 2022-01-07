; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup_variable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@MTRR_TYPE_INVALID = common dso_local global i32 0, align 4
@num_var_ranges = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*)* @mtrr_type_lookup_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtrr_type_lookup_variable(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MTRR_TYPE_INVALID, align 4
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %173, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @num_var_ranges, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %176

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 2048
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %173

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 32
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = add nsw i32 %47, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 32
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PAGE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = add nsw i32 %64, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %17, align 2
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %18, align 2
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %39
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %39
  %100 = phi i1 [ false, %39 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %19, align 2
  %103 = load i16, i16* %17, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* %18, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i16, i16* %19, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %108, %99
  %113 = load i16, i16* %17, align 2
  %114 = icmp ne i16 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @get_mtrr_size(i32 %117)
  %119 = add nsw i32 %116, %118
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = call i32 @WARN_ON(i32 1)
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 1, i32* %142, align 4
  %143 = load i32*, i32** %11, align 8
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %108
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %173

153:                                              ; preds = %144
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 255
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @MTRR_TYPE_INVALID, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %153
  %165 = load i32, i32* %16, align 4
  store i32 %165, i32* %15, align 4
  br label %173

166:                                              ; preds = %153
  %167 = load i32*, i32** %11, align 8
  store i32 0, i32* %167, align 4
  %168 = call i64 @check_type_overlap(i32* %15, i32* %16)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* %16, align 4
  store i32 %171, i32* %6, align 4
  br label %184

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %164, %152, %38
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %25

176:                                              ; preds = %25
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @MTRR_TYPE_INVALID, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %6, align 4
  br label %184

182:                                              ; preds = %176
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 0), align 8
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %182, %180, %170
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @get_mtrr_size(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @check_type_overlap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
