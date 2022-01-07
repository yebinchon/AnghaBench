; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_raw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i64, i32, i32 (i32)*, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i64, i32 (i32)*, i32 }
%struct.TYPE_4__ = type { i64, i32 (i8*, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REGCACHE_NONE = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_raw_read(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.regmap*, %struct.regmap** %6, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.regmap*, %struct.regmap** %6, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %216

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = urem i64 %33, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %216

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = getelementptr inbounds %struct.regmap, %struct.regmap* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IS_ALIGNED(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %216

53:                                               ; preds = %43
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %216

59:                                               ; preds = %53
  %60 = load %struct.regmap*, %struct.regmap** %6, align 8
  %61 = getelementptr inbounds %struct.regmap, %struct.regmap* %60, i32 0, i32 8
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = load %struct.regmap*, %struct.regmap** %6, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %62(i32 %65)
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @regmap_volatile_range(%struct.regmap* %67, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %59
  %73 = load %struct.regmap*, %struct.regmap** %6, align 8
  %74 = getelementptr inbounds %struct.regmap, %struct.regmap* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.regmap*, %struct.regmap** %6, align 8
  %79 = getelementptr inbounds %struct.regmap, %struct.regmap* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @REGCACHE_NONE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %171

83:                                               ; preds = %77, %72, %59
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %17, align 8
  %85 = load %struct.regmap*, %struct.regmap** %6, align 8
  %86 = getelementptr inbounds %struct.regmap, %struct.regmap* %85, i32 0, i32 6
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @ENOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %207

94:                                               ; preds = %83
  %95 = load %struct.regmap*, %struct.regmap** %6, align 8
  %96 = getelementptr inbounds %struct.regmap, %struct.regmap* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i64 1, i64* %17, align 8
  br label %118

100:                                              ; preds = %94
  %101 = load %struct.regmap*, %struct.regmap** %6, align 8
  %102 = getelementptr inbounds %struct.regmap, %struct.regmap* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.regmap*, %struct.regmap** %6, align 8
  %108 = getelementptr inbounds %struct.regmap, %struct.regmap* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ugt i64 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.regmap*, %struct.regmap** %6, align 8
  %113 = getelementptr inbounds %struct.regmap, %struct.regmap* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = udiv i64 %114, %115
  store i64 %116, i64* %17, align 8
  br label %117

117:                                              ; preds = %111, %105, %100
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %17, align 8
  %121 = udiv i64 %119, %120
  store i64 %121, i64* %15, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %10, align 8
  %124 = mul i64 %122, %123
  store i64 %124, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %154, %118
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %15, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %125
  %131 = load %struct.regmap*, %struct.regmap** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %16, align 8
  %135 = call i32 @_regmap_raw_read(%struct.regmap* %131, i32 %132, i8* %133, i64 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %207

139:                                              ; preds = %130
  %140 = load %struct.regmap*, %struct.regmap** %6, align 8
  %141 = load i64, i64* %17, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i64 @regmap_get_offset(%struct.regmap* %140, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load i64, i64* %16, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr i8, i8* %149, i64 %148
  store i8* %150, i8** %8, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %9, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %9, align 8
  br label %154

154:                                              ; preds = %139
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %125

157:                                              ; preds = %125
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.regmap*, %struct.regmap** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @_regmap_raw_read(%struct.regmap* %161, i32 %162, i8* %163, i64 %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %207

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %157
  br label %206

171:                                              ; preds = %77
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %202, %171
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %11, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %172
  %178 = load %struct.regmap*, %struct.regmap** %6, align 8
  %179 = load i32, i32* %7, align 4
  %180 = zext i32 %179 to i64
  %181 = load %struct.regmap*, %struct.regmap** %6, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i64 @regmap_get_offset(%struct.regmap* %181, i32 %182)
  %184 = add nsw i64 %180, %183
  %185 = call i32 @_regmap_read(%struct.regmap* %178, i64 %184, i32* %12)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %207

189:                                              ; preds = %177
  %190 = load %struct.regmap*, %struct.regmap** %6, align 8
  %191 = getelementptr inbounds %struct.regmap, %struct.regmap* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %192, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %10, align 8
  %198 = mul i64 %196, %197
  %199 = getelementptr i8, i8* %194, i64 %198
  %200 = load i32, i32* %12, align 4
  %201 = call i32 %193(i8* %199, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %172

205:                                              ; preds = %172
  br label %206

206:                                              ; preds = %205, %170
  br label %207

207:                                              ; preds = %206, %188, %168, %138, %91
  %208 = load %struct.regmap*, %struct.regmap** %6, align 8
  %209 = getelementptr inbounds %struct.regmap, %struct.regmap* %208, i32 0, i32 3
  %210 = load i32 (i32)*, i32 (i32)** %209, align 8
  %211 = load %struct.regmap*, %struct.regmap** %6, align 8
  %212 = getelementptr inbounds %struct.regmap, %struct.regmap* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 %210(i32 %213)
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %207, %56, %50, %40, %29
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @regmap_volatile_range(%struct.regmap*, i32, i64) #1

declare dso_local i32 @_regmap_raw_read(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i64 @regmap_get_offset(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_read(%struct.regmap*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
