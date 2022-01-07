; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_shift.c_BN_rshift.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_shift.c_BN_rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32 }

@BN_BITS2 = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_rshift(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BN_BITS2, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BN_BITS2, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @BN_BITS2, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @BN_zero(%struct.TYPE_7__* %37)
  store i32 1, i32* %4, align 4
  br label %137

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = icmp ne %struct.TYPE_7__* %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  %56 = call i32* @bn_wexpand(%struct.TYPE_7__* %49, i32 %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %137

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %14, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %13, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %60
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %92, %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %14, align 8
  %89 = load i32, i32* %87, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  br label %83

95:                                               ; preds = %83
  br label %133

96:                                               ; preds = %60
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %14, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %15, align 4
  store i32 1, i32* %8, align 4
  br label %100

100:                                              ; preds = %122, %96
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %12, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* @BN_MASK2, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %14, align 8
  %112 = load i32, i32* %110, align 4
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  %118 = load i32, i32* @BN_MASK2, align 4
  %119 = and i32 %117, %118
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %100

125:                                              ; preds = %100
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %12, align 4
  %128 = ashr i32 %126, %127
  %129 = load i32, i32* @BN_MASK2, align 4
  %130 = and i32 %128, %129
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %13, align 8
  store i32 %130, i32* %131, align 4
  br label %133

133:                                              ; preds = %125, %95
  %134 = load i32*, i32** %13, align 8
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = call i32 @bn_fix_top(%struct.TYPE_7__* %135)
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %58, %36
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @BN_zero(%struct.TYPE_7__*) #1

declare dso_local i32* @bn_wexpand(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bn_fix_top(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
