; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cast6_generic.c___cast6_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cast6_generic.c___cast6_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast6_ctx = type { i32**, i32** }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cast6_setkey(%struct.cast6_ctx* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cast6_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  store %struct.cast6_ctx* %0, %struct.cast6_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = urem i32 %13, 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %163

23:                                               ; preds = %4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 32)
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @memcpy(i32* %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  %47 = load i32, i32* %46, align 16
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %48, i32* %49, align 16
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %159, %23
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 12
  br i1 %64, label %65, label %162

65:                                               ; preds = %62
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 2, %67
  %69 = call i32 @W(i32* %66, i32 %68)
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %72, 1
  %74 = call i32 @W(i32* %70, i32 %73)
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = and i32 %76, 31
  %78 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %77, i32* %85, align 4
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 31
  %89 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %88, i32* %96, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = and i32 %98, 31
  %100 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32 %99, i32* %107, align 4
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 31
  %111 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %112 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %110, i32* %118, align 4
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %120, i32* %128, align 4
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %132 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %130, i32* %138, align 4
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %140, i32* %148, align 4
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cast6_ctx*, %struct.cast6_ctx** %6, align 8
  %152 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 %150, i32* %158, align 4
  br label %159

159:                                              ; preds = %65
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %62

162:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %16
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @W(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
