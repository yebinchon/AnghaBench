; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_iter_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcode_iter_init(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %27, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 8, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %56

49:                                               ; preds = %35
  %50 = load i32*, i32** %7, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %40
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %80, %56
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @bcode_iter_get_val(%struct.TYPE_5__* %71, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %14, align 4
  br label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %61

81:                                               ; preds = %61
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = call i32 @bcode_iter_next(%struct.TYPE_5__* %86)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcode_iter_get_val(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bcode_iter_next(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
