; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i32, i32 (i32)*, %struct.TYPE_2__, i32 (i32)*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 (i8*)* }

@EINVAL = common dso_local global i32 0, align 4
@REGCACHE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_bulk_read(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.regmap*, %struct.regmap** %6, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.regmap*, %struct.regmap** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @regmap_volatile_range(%struct.regmap* %22, i32 %23, i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IS_ALIGNED(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %170

35:                                               ; preds = %4
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %170

41:                                               ; preds = %35
  %42 = load %struct.regmap*, %struct.regmap** %6, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %41
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = getelementptr inbounds %struct.regmap, %struct.regmap* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (i8*)*, i32 (i8*)** %49, align 8
  %51 = icmp ne i32 (i8*)* %50, null
  br i1 %51, label %52, label %98

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.regmap*, %struct.regmap** %6, align 8
  %57 = getelementptr inbounds %struct.regmap, %struct.regmap* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REGCACHE_NONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %55, %52
  %62 = load %struct.regmap*, %struct.regmap** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %9, align 8
  %67 = mul i64 %65, %66
  %68 = call i32 @regmap_raw_read(%struct.regmap* %62, i32 %63, i8* %64, i64 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %170

73:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = mul i64 %77, %78
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = load %struct.regmap*, %struct.regmap** %6, align 8
  %83 = getelementptr inbounds %struct.regmap, %struct.regmap* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (i8*)*, i32 (i8*)** %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %86, i64 %88
  %90 = call i32 %85(i8* %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  br label %74

97:                                               ; preds = %74
  br label %168

98:                                               ; preds = %55, %46, %41
  %99 = load i8*, i8** %8, align 8
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %14, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %15, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i32*
  store i32* %104, i32** %16, align 8
  %105 = load %struct.regmap*, %struct.regmap** %6, align 8
  %106 = getelementptr inbounds %struct.regmap, %struct.regmap* %105, i32 0, i32 4
  %107 = load i32 (i32)*, i32 (i32)** %106, align 8
  %108 = load %struct.regmap*, %struct.regmap** %6, align 8
  %109 = getelementptr inbounds %struct.regmap, %struct.regmap* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %107(i32 %110)
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %156, %98
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %9, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %112
  %118 = load %struct.regmap*, %struct.regmap** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = load %struct.regmap*, %struct.regmap** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @regmap_get_offset(%struct.regmap* %121, i32 %122)
  %124 = add nsw i64 %120, %123
  %125 = call i32 @_regmap_read(%struct.regmap* %118, i64 %124, i32* %17)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %160

129:                                              ; preds = %117
  %130 = load %struct.regmap*, %struct.regmap** %6, align 8
  %131 = getelementptr inbounds %struct.regmap, %struct.regmap* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  switch i64 %133, label %152 [
    i64 4, label %134
    i64 2, label %140
    i64 1, label %146
  ]

134:                                              ; preds = %129
  %135 = load i32, i32* %17, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %155

140:                                              ; preds = %129
  %141 = load i32, i32* %17, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %155

146:                                              ; preds = %129
  %147 = load i32, i32* %17, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %155

152:                                              ; preds = %129
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %160

155:                                              ; preds = %146, %140, %134
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %112

159:                                              ; preds = %112
  br label %160

160:                                              ; preds = %159, %152, %128
  %161 = load %struct.regmap*, %struct.regmap** %6, align 8
  %162 = getelementptr inbounds %struct.regmap, %struct.regmap* %161, i32 0, i32 2
  %163 = load i32 (i32)*, i32 (i32)** %162, align 8
  %164 = load %struct.regmap*, %struct.regmap** %6, align 8
  %165 = getelementptr inbounds %struct.regmap, %struct.regmap* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 %163(i32 %166)
  br label %168

168:                                              ; preds = %160, %97
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %71, %38, %32
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @regmap_volatile_range(%struct.regmap*, i32, i64) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @regmap_raw_read(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i32 @_regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i64 @regmap_get_offset(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
