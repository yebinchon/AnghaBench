; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.salsa20_ctx = type { i8** }

@salsa20_setkey.sigma = internal constant [16 x i8] c"expand 32-byte k", align 16
@salsa20_setkey.tau = internal constant [16 x i8] c"expand 16-byte k", align 16
@SALSA20_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@SALSA20_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i8*, i32)* @salsa20_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salsa20_setkey(%struct.crypto_skcipher* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.salsa20_ctx*, align 8
  %9 = alloca i8*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.salsa20_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.salsa20_ctx* %11, %struct.salsa20_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SALSA20_MIN_KEY_SIZE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SALSA20_MAX_KEY_SIZE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %130

22:                                               ; preds = %15, %3
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = call i8* @get_unaligned_le32(i8* %24)
  %26 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = call i8* @get_unaligned_le32(i8* %31)
  %33 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  store i8* %32, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = call i8* @get_unaligned_le32(i8* %38)
  %40 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  %46 = call i8* @get_unaligned_le32(i8* %45)
  %47 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 4
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %22
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 16
  store i8* %55, i8** %6, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @salsa20_setkey.sigma, i64 0, i64 0), i8** %9, align 8
  br label %57

56:                                               ; preds = %22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @salsa20_setkey.tau, i64 0, i64 0), i8** %9, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = call i8* @get_unaligned_le32(i8* %59)
  %61 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 11
  store i8* %60, i8** %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = call i8* @get_unaligned_le32(i8* %66)
  %68 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 12
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = call i8* @get_unaligned_le32(i8* %73)
  %75 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 13
  store i8* %74, i8** %78, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 12
  %81 = call i8* @get_unaligned_le32(i8* %80)
  %82 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 14
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = call i8* @get_unaligned_le32(i8* %87)
  %89 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = call i8* @get_unaligned_le32(i8* %94)
  %96 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 5
  store i8* %95, i8** %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = call i8* @get_unaligned_le32(i8* %101)
  %103 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 10
  store i8* %102, i8** %106, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 12
  %109 = call i8* @get_unaligned_le32(i8* %108)
  %110 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 15
  store i8* %109, i8** %113, align 8
  %114 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 6
  store i8* null, i8** %117, align 8
  %118 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 7
  store i8* null, i8** %121, align 8
  %122 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 8
  store i8* null, i8** %125, align 8
  %126 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %8, align 8
  %127 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 9
  store i8* null, i8** %129, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %57, %19
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.salsa20_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i8* @get_unaligned_le32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
