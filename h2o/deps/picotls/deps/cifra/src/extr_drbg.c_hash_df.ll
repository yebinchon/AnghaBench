; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_drbg.c_hash_df.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_drbg.c_hash_df.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*, i32*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }

@CF_MAXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32*, i64)* @hash_df to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_df(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i32* %9, i64 %10) #0 {
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca [4 x i32], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  store i64 %10, i64* %22, align 8
  store i32 1, i32* %23, align 4
  %30 = load i64, i64* %22, align 8
  %31 = mul i64 %30, 8
  store i64 %31, i64* %24, align 8
  %32 = load i32, i32* @CF_MAXHASH, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %26, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %27, align 8
  %36 = load i64, i64* %24, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %38 = call i32 @write32_be(i64 %36, i32* %37)
  br label %39

39:                                               ; preds = %42, %11
  %40 = load i64, i64* %22, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32 (i32*)*, i32 (i32*)** %44, align 8
  %46 = call i32 %45(i32* %28)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %48, align 8
  %50 = bitcast i32* %23 to i8*
  %51 = call i32 %49(i32* %28, i8* %50, i64 4)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %53, align 8
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 %54(i32* %28, i8* %56, i64 16)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %59, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 %60(i32* %28, i8* %61, i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %65, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 %66(i32* %28, i8* %67, i64 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %71, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i64, i64* %18, align 8
  %75 = call i32 %72(i32* %28, i8* %73, i64 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %77, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 %78(i32* %28, i8* %79, i64 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %83, align 8
  %85 = call i32 %84(i32* %28, i32* %35)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %22, align 8
  %90 = call i64 @MIN(i32 %88, i64 %89)
  store i64 %90, i64* %29, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i64, i64* %29, align 8
  %93 = call i32 @memcpy(i32* %91, i32* %35, i64 %92)
  %94 = load i64, i64* %29, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %21, align 8
  %97 = load i64, i64* %29, align 8
  %98 = load i64, i64* %22, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %22, align 8
  %100 = load i32, i32* %23, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %23, align 4
  br label %39

102:                                              ; preds = %39
  %103 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write32_be(i64, i32*) #2

declare dso_local i64 @MIN(i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
