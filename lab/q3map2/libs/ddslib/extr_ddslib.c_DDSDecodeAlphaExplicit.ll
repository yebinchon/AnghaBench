; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodeAlphaExplicit.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodeAlphaExplicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i16, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32)* @DDSDecodeAlphaExplicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DDSDecodeAlphaExplicit(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %66, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call zeroext i16 @DDSLittleShort(i32 %26)
  store i16 %27, i16* %11, align 2
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %62, %19
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i16, i16* %11, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 15
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i16 %39, i16* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %45 = load i16, i16* %44, align 8
  %46 = zext i16 %45 to i32
  %47 = shl i32 %46, 4
  %48 = or i32 %43, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i16 %49, i16* %50, align 8
  %51 = bitcast %struct.TYPE_4__* %12 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i16, i16* %11, align 2
  %57 = zext i16 %56 to i32
  %58 = ashr i32 %57, 4
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %11, align 2
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %31
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %28

65:                                               ; preds = %28
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 4
  %71 = load i32*, i32** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %5, align 8
  br label %16

74:                                               ; preds = %16
  ret void
}

declare dso_local zeroext i16 @DDSLittleShort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
