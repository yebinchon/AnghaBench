; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_merge_delayed_values.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_merge_delayed_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32, i32, i32* }

@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value_data* (%struct.value_data*, %struct.value_data*, i32, i32)* @merge_delayed_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value_data* @merge_delayed_values(%struct.value_data* %0, %struct.value_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.value_data*, align 8
  %6 = alloca %struct.value_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.value_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.value_data* %0, %struct.value_data** %5, align 8
  store %struct.value_data* %1, %struct.value_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.value_data*, %struct.value_data** %6, align 8
  %15 = getelementptr inbounds %struct.value_data, %struct.value_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.value_data*, %struct.value_data** %5, align 8
  %21 = getelementptr inbounds %struct.value_data, %struct.value_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  %24 = load %struct.value_data*, %struct.value_data** %5, align 8
  %25 = getelementptr inbounds %struct.value_data, %struct.value_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.value_data*, %struct.value_data** %5, align 8
  %31 = getelementptr inbounds %struct.value_data, %struct.value_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %29, %32
  %34 = call %struct.value_data* @alloc_value_data(i32 %33)
  store %struct.value_data* %34, %struct.value_data** %10, align 8
  br label %37

35:                                               ; preds = %4
  %36 = load %struct.value_data*, %struct.value_data** %5, align 8
  store %struct.value_data* %36, %struct.value_data** %10, align 8
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.value_data*, %struct.value_data** %6, align 8
  %43 = getelementptr inbounds %struct.value_data, %struct.value_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = load %struct.value_data*, %struct.value_data** %5, align 8
  %47 = getelementptr inbounds %struct.value_data, %struct.value_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.value_data*, %struct.value_data** %10, align 8
  %51 = getelementptr inbounds %struct.value_data, %struct.value_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load %struct.value_data*, %struct.value_data** %5, align 8
  %54 = getelementptr inbounds %struct.value_data, %struct.value_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.value_data*, %struct.value_data** %10, align 8
  %57 = getelementptr inbounds %struct.value_data, %struct.value_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %40
  %59 = load %struct.value_data*, %struct.value_data** %10, align 8
  %60 = getelementptr inbounds %struct.value_data, %struct.value_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %13, align 8
  %62 = load %struct.value_data*, %struct.value_data** %5, align 8
  %63 = getelementptr inbounds %struct.value_data, %struct.value_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %11, align 8
  %65 = load %struct.value_data*, %struct.value_data** %6, align 8
  %66 = getelementptr inbounds %struct.value_data, %struct.value_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %12, align 8
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %189, %58
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %192

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %133

77:                                               ; preds = %72
  %78 = load %struct.value_data*, %struct.value_data** %6, align 8
  %79 = getelementptr inbounds %struct.value_data, %struct.value_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.value_data*, %struct.value_data** %5, align 8
  %86 = getelementptr inbounds %struct.value_data, %struct.value_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 256
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  br label %107

99:                                               ; preds = %91
  %100 = load i32*, i32** %12, align 8
  %101 = bitcast i32* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = bitcast i32* %103 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %13, align 8
  br label %107

107:                                              ; preds = %99, %94
  br label %132

108:                                              ; preds = %84
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 256
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %113, %115
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  br label %131

119:                                              ; preds = %108
  %120 = load i32*, i32** %12, align 8
  %121 = bitcast i32* %120 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = bitcast i32* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i32*, i32** %13, align 8
  %128 = bitcast i32* %127 to i64*
  store i64 %126, i64* %128, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32* %130, i32** %13, align 8
  br label %131

131:                                              ; preds = %119, %111
  br label %132

132:                                              ; preds = %131, %107
  br label %158

133:                                              ; preds = %72
  %134 = load %struct.value_data*, %struct.value_data** %5, align 8
  %135 = getelementptr inbounds %struct.value_data, %struct.value_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %133
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 256
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %13, align 8
  store i32 %145, i32* %146, align 4
  br label %156

148:                                              ; preds = %140
  %149 = load i32*, i32** %11, align 8
  %150 = bitcast i32* %149 to i64*
  %151 = load i64, i64* %150, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = bitcast i32* %152 to i64*
  store i64 %151, i64* %153, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32* %155, i32** %13, align 8
  br label %156

156:                                              ; preds = %148, %143
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %132
  %159 = load %struct.value_data*, %struct.value_data** %5, align 8
  %160 = getelementptr inbounds %struct.value_data, %struct.value_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 256
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 2
  %170 = load i32*, i32** %11, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %11, align 8
  br label %173

173:                                              ; preds = %165, %158
  %174 = load %struct.value_data*, %struct.value_data** %6, align 8
  %175 = getelementptr inbounds %struct.value_data, %struct.value_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 256
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 2
  %185 = load i32*, i32** %12, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %12, align 8
  br label %188

188:                                              ; preds = %180, %173
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %9, align 4
  %191 = shl i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %68

192:                                              ; preds = %68
  %193 = load %struct.value_data*, %struct.value_data** %10, align 8
  %194 = load %struct.value_data*, %struct.value_data** %5, align 8
  %195 = icmp ne %struct.value_data* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.value_data*, %struct.value_data** %5, align 8
  %198 = call i32 @free_value_data(%struct.value_data* %197)
  br label %199

199:                                              ; preds = %196, %192
  %200 = load %struct.value_data*, %struct.value_data** %10, align 8
  ret %struct.value_data* %200
}

declare dso_local %struct.value_data* @alloc_value_data(i32) #1

declare dso_local i32 @free_value_data(%struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
