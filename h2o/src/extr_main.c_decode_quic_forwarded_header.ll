; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_decode_quic_forwarded_header.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_decode_quic_forwarded_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@H2O_QUIC_FORWARDED_VERSION = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32, i64)* @decode_quic_forwarded_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_quic_forwarded_header(i32* %0, i32* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = bitcast %struct.TYPE_3__* %7 to { i32, i64 }*
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 0
  store i32 %3, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %13, i32 0, i32 1
  store i64 %4, i64* %15, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = icmp slt i64 %29, 6
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %77

32:                                               ; preds = %5
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %11, align 8
  %35 = load i32, i32* %33, align 4
  %36 = icmp ne i32 %35, 128
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = call i64 @quicly_decode32(i32** %11)
  %40 = load i64, i64* @H2O_QUIC_FORWARDED_VERSION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %77

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @decode_quic_address(i32* %44, i32** %11, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %77

49:                                               ; preds = %43
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @decode_quic_address(i32* %50, i32** %11, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %77

55:                                               ; preds = %49
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = icmp slt i64 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %77

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = ptrtoint i32* %69 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  store i64 %76, i64* %6, align 8
  br label %79

77:                                               ; preds = %63, %54, %48, %42, %37, %31
  %78 = load i64, i64* @SIZE_MAX, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %64
  %80 = load i64, i64* %6, align 8
  ret i64 %80
}

declare dso_local i64 @quicly_decode32(i32**) #1

declare dso_local i32 @decode_quic_address(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
