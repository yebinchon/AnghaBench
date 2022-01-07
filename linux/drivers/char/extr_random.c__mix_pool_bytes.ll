; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c__mix_pool_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c__mix_pool_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@twist_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i8*, i32)* @_mix_pool_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mix_pool_bytes(%struct.entropy_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.entropy_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.entropy_store* %0, %struct.entropy_store** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %18 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %15, align 8
  %24 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %25 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %30 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %35 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %40 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %45 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %50 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %53 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %59, %3
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %165

59:                                               ; preds = %55
  %60 = load i8*, i8** %15, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %15, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @rol32(i32 %63, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, 1
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %67, %69
  store i64 %70, i64* %7, align 8
  %71 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %72 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %16, align 4
  %79 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %80 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %84, %86
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %93 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %95, %96
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %97, %99
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %16, align 4
  %104 = xor i32 %103, %102
  store i32 %104, i32* %16, align 4
  %105 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %106 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %110, %112
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = xor i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %119 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = and i64 %123, %125
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %16, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %132 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = and i64 %136, %138
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %16, align 4
  %143 = xor i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = ashr i32 %144, 3
  %146 = load i32*, i32** @twist_table, align 8
  %147 = load i32, i32* %16, align 4
  %148 = and i32 %147, 7
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %145, %151
  %153 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %154 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i64, i64* %7, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 7, i32 14
  %163 = add nsw i32 %158, %162
  %164 = and i32 %163, 31
  store i32 %164, i32* %13, align 4
  br label %55

165:                                              ; preds = %55
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %168 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %171 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
