; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_decode_quic_address.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_decode_quic_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32**, i32*)* @decode_quic_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_quic_address(%struct.TYPE_14__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_14__* %8, i32 0, i32 48)
  %10 = load i32**, i32*** %6, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp uge i32* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %16, align 8
  %19 = load i32, i32* %17, align 4
  switch i32 %19, label %94 [
    i32 4, label %20
    i32 6, label %54
    i32 0, label %89
  ]

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %21 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = icmp slt i64 %27, 6
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %96

30:                                               ; preds = %20
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcpy(i32* %38, i32* %40, i32 4)
  %42 = load i32**, i32*** %6, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %42, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @memcpy(i32* %47, i32* %49, i32 2)
  %51 = load i32**, i32*** %6, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %51, align 8
  br label %95

54:                                               ; preds = %15
  %55 = load i32*, i32** %7, align 8
  %56 = load i32**, i32*** %6, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %55 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = icmp slt i64 %61, 18
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %96

64:                                               ; preds = %54
  %65 = load i32, i32* @AF_INET6, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %6, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @memcpy(i32* %73, i32* %75, i32 16)
  %77 = load i32**, i32*** %6, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  store i32* %79, i32** %77, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %6, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @memcpy(i32* %82, i32* %84, i32 2)
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32* %88, i32** %86, align 8
  br label %95

89:                                               ; preds = %15
  %90 = load i32, i32* @AF_UNSPEC, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %95

94:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %96

95:                                               ; preds = %89, %64, %30
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %94, %63, %29, %14
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
