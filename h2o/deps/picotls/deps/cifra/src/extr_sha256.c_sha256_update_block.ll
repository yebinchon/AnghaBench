; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha256.c_sha256_update_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha256.c_sha256_update_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@K = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @sha256_update_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256_update_block(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca [16 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 5
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 6
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 7
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %61

61:                                               ; preds = %140, %2
  %62 = load i64, i64* %16, align 8
  %63 = icmp ult i64 %62, 64
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  %65 = load i64, i64* %16, align 8
  %66 = icmp ult i64 %65, 16
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @read32_be(i32* %68)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %70
  store i64 %69, i64* %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32* %73, i32** %4, align 8
  br label %104

74:                                               ; preds = %64
  %75 = load i64, i64* %16, align 8
  %76 = sub i64 %75, 2
  %77 = urem i64 %76, 16
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @SSIG1(i64 %79)
  %81 = load i64, i64* %16, align 8
  %82 = sub i64 %81, 7
  %83 = urem i64 %82, 16
  %84 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = load i64, i64* %16, align 8
  %88 = sub i64 %87, 15
  %89 = urem i64 %88, 16
  %90 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @SSIG0(i64 %91)
  %93 = add nsw i64 %86, %92
  %94 = load i64, i64* %16, align 8
  %95 = sub i64 %94, 16
  %96 = urem i64 %95, 16
  %97 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %93, %98
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = urem i64 %101, 16
  %103 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %102
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %74, %67
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @BSIG1(i64 %106)
  %108 = add nsw i64 %105, %107
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i64 @CH(i64 %109, i64 %110, i64 %111)
  %113 = add nsw i64 %108, %112
  %114 = load i64*, i64** @K, align 8
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %113, %117
  %119 = load i64, i64* %15, align 8
  %120 = add nsw i64 %118, %119
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i64 @BSIG0(i64 %121)
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @MAJ(i64 %123, i64 %124, i64 %125)
  %127 = add nsw i64 %122, %126
  store i64 %127, i64* %18, align 8
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %14, align 8
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %13, align 8
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %17, align 8
  %133 = add nsw i64 %131, %132
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %9, align 8
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %7, align 8
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* %18, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %104
  %141 = load i64, i64* %16, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %16, align 8
  br label %61

143:                                              ; preds = %61
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %144
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %151
  store i64 %157, i64* %155, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 2
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %158
  store i64 %164, i64* %162, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 3
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %165
  store i64 %171, i64* %169, align 8
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 4
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %172
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 5
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %179
  store i64 %185, i64* %183, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 6
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, %186
  store i64 %192, i64* %190, align 8
  %193 = load i64, i64* %14, align 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 7
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, %193
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 8
  ret void
}

declare dso_local i64 @read32_be(i32*) #1

declare dso_local i64 @SSIG1(i64) #1

declare dso_local i64 @SSIG0(i64) #1

declare dso_local i64 @BSIG1(i64) #1

declare dso_local i64 @CH(i64, i64, i64) #1

declare dso_local i64 @BSIG0(i64) #1

declare dso_local i64 @MAJ(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
