; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_bulk_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_bulk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { %struct.TYPE_2__, i32, i32, i32 (i32)*, i32 (i32)*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 (i8*)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_bulk_write(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IS_ALIGNED(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %160

28:                                               ; preds = %4
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i8*)*, i32 (i8*)** %36, align 8
  %38 = icmp ne i32 (i8*)* %37, null
  br i1 %38, label %110, label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = getelementptr inbounds %struct.regmap, %struct.regmap* %40, i32 0, i32 4
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.regmap*, %struct.regmap** %6, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %42(i32 %45)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %98, %39
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = load i64, i64* %12, align 8
  switch i64 %53, label %81 [
    i64 1, label %54
    i64 2, label %63
    i64 4, label %72
  ]

54:                                               ; preds = %52
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %12, align 8
  %59 = mul i64 %57, %58
  %60 = getelementptr i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  br label %84

63:                                               ; preds = %52
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = mul i64 %66, %67
  %69 = getelementptr i8, i8* %64, i64 %68
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  br label %84

72:                                               ; preds = %52
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = mul i64 %75, %76
  %78 = getelementptr i8, i8* %73, i64 %77
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  br label %84

81:                                               ; preds = %52
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %102

84:                                               ; preds = %72, %63, %54
  %85 = load %struct.regmap*, %struct.regmap** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = load %struct.regmap*, %struct.regmap** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @regmap_get_offset(%struct.regmap* %88, i32 %89)
  %91 = add nsw i64 %87, %90
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @_regmap_write(%struct.regmap* %85, i64 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %102

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %47

101:                                              ; preds = %47
  br label %102

102:                                              ; preds = %101, %96, %81
  %103 = load %struct.regmap*, %struct.regmap** %6, align 8
  %104 = getelementptr inbounds %struct.regmap, %struct.regmap* %103, i32 0, i32 3
  %105 = load i32 (i32)*, i32 (i32)** %104, align 8
  %106 = load %struct.regmap*, %struct.regmap** %6, align 8
  %107 = getelementptr inbounds %struct.regmap, %struct.regmap* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %105(i32 %108)
  br label %158

110:                                              ; preds = %33
  %111 = load i8*, i8** %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %12, align 8
  %114 = mul i64 %112, %113
  %115 = load %struct.regmap*, %struct.regmap** %6, align 8
  %116 = getelementptr inbounds %struct.regmap, %struct.regmap* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @kmemdup(i8* %111, i64 %114, i32 %117)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %160

124:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %142, %124
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %12, align 8
  %130 = mul i64 %128, %129
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %125
  %133 = load %struct.regmap*, %struct.regmap** %6, align 8
  %134 = getelementptr inbounds %struct.regmap, %struct.regmap* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32 (i8*)*, i32 (i8*)** %135, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr i8, i8* %137, i64 %139
  %141 = call i32 %136(i8* %140)
  br label %142

142:                                              ; preds = %132
  %143 = load i64, i64* %12, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %11, align 4
  br label %125

148:                                              ; preds = %125
  %149 = load %struct.regmap*, %struct.regmap** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %14, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %9, align 8
  %154 = mul i64 %152, %153
  %155 = call i32 @regmap_raw_write(%struct.regmap* %149, i32 %150, i8* %151, i64 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @kfree(i8* %156)
  br label %158

158:                                              ; preds = %148, %102
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %121, %25
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @_regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i64 @regmap_get_offset(%struct.regmap*, i32) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @regmap_raw_write(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
