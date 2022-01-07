; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i8*, i32, %struct.regcache_lzo_ctx** }
%struct.regcache_lzo_ctx = type { i64*, i64, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @regcache_lzo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_init(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.regcache_lzo_ctx**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = call i32 @regcache_lzo_block_count(%struct.regmap* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.regcache_lzo_ctx** @kcalloc(i32 %15, i32 8, i32 %16)
  %18 = load %struct.regmap*, %struct.regmap** %3, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 3
  store %struct.regcache_lzo_ctx** %17, %struct.regcache_lzo_ctx*** %19, align 8
  %20 = load %struct.regmap*, %struct.regmap** %3, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 3
  %22 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %21, align 8
  %23 = icmp ne %struct.regcache_lzo_ctx** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %183

27:                                               ; preds = %1
  %28 = load %struct.regmap*, %struct.regmap** %3, align 8
  %29 = getelementptr inbounds %struct.regmap, %struct.regmap* %28, i32 0, i32 3
  %30 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %29, align 8
  store %struct.regcache_lzo_ctx** %30, %struct.regcache_lzo_ctx*** %4, align 8
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64* @bitmap_zalloc(i64 %34, i32 %35)
  store i64* %36, i64** %12, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %179

42:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %90, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.regcache_lzo_ctx* @kzalloc(i32 32, i32 %48)
  %50 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %50, i64 %52
  store %struct.regcache_lzo_ctx* %49, %struct.regcache_lzo_ctx** %53, align 8
  %54 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %54, i64 %56
  %58 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %57, align 8
  %59 = icmp ne %struct.regcache_lzo_ctx* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %47
  %61 = load i64*, i64** %12, align 8
  %62 = call i32 @bitmap_free(i64* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %179

65:                                               ; preds = %47
  %66 = load i64*, i64** %12, align 8
  %67 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %67, i64 %69
  %71 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %70, align 8
  %72 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %71, i32 0, i32 0
  store i64* %66, i64** %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %74, i64 %76
  %78 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %77, align 8
  %79 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %78, i32 0, i32 1
  store i64 %73, i64* %79, align 8
  %80 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %80, i64 %82
  %84 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %83, align 8
  %85 = call i32 @regcache_lzo_prepare(%struct.regcache_lzo_ctx* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %65
  br label %179

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %43

93:                                               ; preds = %43
  %94 = load %struct.regmap*, %struct.regmap** %3, align 8
  %95 = call i32 @regcache_lzo_get_blksize(%struct.regmap* %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.regmap*, %struct.regmap** %3, align 8
  %97 = getelementptr inbounds %struct.regmap, %struct.regmap* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %10, align 8
  %99 = load %struct.regmap*, %struct.regmap** %3, align 8
  %100 = getelementptr inbounds %struct.regmap, %struct.regmap* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.regmap*, %struct.regmap** %3, align 8
  %103 = getelementptr inbounds %struct.regmap, %struct.regmap* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8* %106, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %171, %93
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %178

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %113, i64 %115
  %117 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %116, align 8
  %118 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %117, i32 0, i32 2
  store i8* %112, i8** %118, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ugt i8* %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %111
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %132, i64 %134
  %136 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %135, align 8
  %137 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %136, i32 0, i32 3
  store i32 %131, i32* %137, align 8
  br label %146

138:                                              ; preds = %111
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %140, i64 %142
  %144 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %143, align 8
  %145 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %144, i32 0, i32 3
  store i32 %139, i32* %145, align 8
  br label %146

146:                                              ; preds = %138, %125
  %147 = load %struct.regmap*, %struct.regmap** %3, align 8
  %148 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %148, i64 %150
  %152 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %151, align 8
  %153 = call i32 @regcache_lzo_compress_cache_block(%struct.regmap* %147, %struct.regcache_lzo_ctx* %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %179

157:                                              ; preds = %146
  %158 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %158, i64 %160
  %162 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %161, align 8
  %163 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.regcache_lzo_ctx**, %struct.regcache_lzo_ctx*** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %165, i64 %167
  %169 = load %struct.regcache_lzo_ctx*, %struct.regcache_lzo_ctx** %168, align 8
  %170 = getelementptr inbounds %struct.regcache_lzo_ctx, %struct.regcache_lzo_ctx* %169, i32 0, i32 4
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %157
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i8*, i8** %10, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %10, align 8
  br label %107

178:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %183

179:                                              ; preds = %156, %88, %60, %39
  %180 = load %struct.regmap*, %struct.regmap** %3, align 8
  %181 = call i32 @regcache_lzo_exit(%struct.regmap* %180)
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %179, %178, %24
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @regcache_lzo_block_count(%struct.regmap*) #1

declare dso_local %struct.regcache_lzo_ctx** @kcalloc(i32, i32, i32) #1

declare dso_local i64* @bitmap_zalloc(i64, i32) #1

declare dso_local %struct.regcache_lzo_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_free(i64*) #1

declare dso_local i32 @regcache_lzo_prepare(%struct.regcache_lzo_ctx*) #1

declare dso_local i32 @regcache_lzo_get_blksize(%struct.regmap*) #1

declare dso_local i32 @regcache_lzo_compress_cache_block(%struct.regmap*, %struct.regcache_lzo_ctx*) #1

declare dso_local i32 @regcache_lzo_exit(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
