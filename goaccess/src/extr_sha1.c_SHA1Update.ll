; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_sha1.c_SHA1Update.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_sha1.c_SHA1Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1Update(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 3
  %15 = and i32 %14, 63
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 3
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %3
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %43, %44
  %46 = icmp ugt i32 %45, 63
  br i1 %46, label %47, label %83

47:                                               ; preds = %34
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub i32 64, %55
  store i32 %56, i32* %7, align 4
  %57 = call i32 @memcpy(i32* %53, i32* %54, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @SHA1Transform(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %79, %47
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 63
  %68 = load i32, i32* %6, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @SHA1Transform(i32 %73, i32* %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 64
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %84

83:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub i32 %95, %96
  %98 = call i32 @memcpy(i32* %90, i32* %94, i32 %97)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SHA1Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
