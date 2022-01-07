; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_aes.c_aes_schedule.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_aes.c_aes_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@AES_BLOCKSZ = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64)* @aes_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_schedule(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @AES_BLOCKSZ, align 4
  %16 = sdiv i32 %15, 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = udiv i64 %18, 4
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %20, %25
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %11, align 8
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %43, %3
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = mul i64 %36, 4
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @read32_be(i32* %38)
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %30

46:                                               ; preds = %30
  store i64 1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @rot_word(i64 %67)
  %69 = load i32, i32* @S, align 4
  %70 = call i64 @sub_word(i64 %68, i32 %69)
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @round_constant(i64 %71)
  %73 = xor i64 %70, %72
  store i64 %73, i64* %14, align 8
  br label %85

74:                                               ; preds = %63
  %75 = load i64, i64* %9, align 8
  %76 = icmp ugt i64 %75, 6
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* @S, align 4
  %83 = call i64 @sub_word(i64 %81, i32 %82)
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %80, %77, %74
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = xor i64 %91, %92
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %47

102:                                              ; preds = %47
  ret void
}

declare dso_local i64 @read32_be(i32*) #1

declare dso_local i64 @sub_word(i64, i32) #1

declare dso_local i64 @rot_word(i64) #1

declare dso_local i64 @round_constant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
