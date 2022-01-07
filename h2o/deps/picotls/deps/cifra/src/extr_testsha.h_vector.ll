; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 (i32*, i32*)*, i32 (i32*, i32*, i64)*, i32 (i32*)* }

@CF_MAXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64, i8*, i64)* @vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @CF_MAXHASH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %13, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = call i32 %25(i32* %15)
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32 (i32*, i32*, i64)*, i32 (i32*, i32*, i64)** %31, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 %32(i32* %15, i32* %33, i64 1)
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %13, align 8
  br label %39

39:                                               ; preds = %29, %5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32 (i32*, i32*, i64)*, i32 (i32*, i32*, i64)** %41, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 %42(i32* %15, i32* %43, i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %47, align 8
  %49 = call i32 %48(i32* %15, i32* %19)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_CHECK(i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @memcmp(i32* %19, i8* %57, i64 %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_CHECK(i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %13, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %8, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32 (i32*)*, i32 (i32*)** %67, align 8
  %69 = call i32 %68(i32* %15)
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %39
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32 (i32*, i32*, i64)*, i32 (i32*, i32*, i64)** %77, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 1
  %84 = call i32 %78(i32* %15, i32* %79, i64 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, 1
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 1
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %13, align 8
  br label %97

97:                                               ; preds = %75, %39
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32 (i32*, i32*, i64)*, i32 (i32*, i32*, i64)** %99, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 %100(i32* %15, i32* %101, i64 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %105, align 8
  %107 = call i32 %106(i32* %15, i32* %19)
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @memcmp(i32* %19, i8* %108, i64 %109)
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @TEST_CHECK(i32 %112)
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST_CHECK(i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
