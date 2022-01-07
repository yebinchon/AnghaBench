; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_convert_value_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_convert_value_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32, i32*, i32 }

@MAX_EXTRA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value_data* @convert_value_data(%struct.value_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.value_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.value_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.value_data* %0, %struct.value_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.value_data*, %struct.value_data** %4, align 8
  %12 = getelementptr inbounds %struct.value_data, %struct.value_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %13, %14
  %16 = call %struct.value_data* @alloc_value_data(i32 %15)
  store %struct.value_data* %16, %struct.value_data** %7, align 8
  %17 = load %struct.value_data*, %struct.value_data** %4, align 8
  %18 = getelementptr inbounds %struct.value_data, %struct.value_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.value_data*, %struct.value_data** %7, align 8
  %21 = getelementptr inbounds %struct.value_data, %struct.value_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.value_data*, %struct.value_data** %4, align 8
  %24 = getelementptr inbounds %struct.value_data, %struct.value_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.value_data*, %struct.value_data** %7, align 8
  %29 = getelementptr inbounds %struct.value_data, %struct.value_data* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %74, %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load %struct.value_data*, %struct.value_data** %7, align 8
  %36 = getelementptr inbounds %struct.value_data, %struct.value_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load i32*, i32** %9, align 8
  %51 = bitcast i32* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = bitcast i32* %53 to i64*
  store i64 %52, i64* %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %10, align 8
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.value_data*, %struct.value_data** %4, align 8
  %60 = getelementptr inbounds %struct.value_data, %struct.value_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 256
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 2
  %70 = load i32*, i32** %9, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %9, align 8
  br label %73

73:                                               ; preds = %65, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %30

77:                                               ; preds = %30
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load %struct.value_data*, %struct.value_data** %4, align 8
  %82 = call i32 @free_value_data(%struct.value_data* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.value_data*, %struct.value_data** %7, align 8
  ret %struct.value_data* %84
}

declare dso_local %struct.value_data* @alloc_value_data(i32) #1

declare dso_local i32 @free_value_data(%struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
