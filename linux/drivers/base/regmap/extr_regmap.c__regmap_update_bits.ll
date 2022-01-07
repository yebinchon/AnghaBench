; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 (i32, i32, i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32, i32, i32*, i32)* @_regmap_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_update_bits(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load %struct.regmap*, %struct.regmap** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @regmap_volatile(%struct.regmap* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load %struct.regmap*, %struct.regmap** %8, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 0
  %29 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %28, align 8
  %30 = icmp ne i32 (i32, i32, i32, i32)* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.regmap*, %struct.regmap** %8, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %33, align 8
  %35 = load %struct.regmap*, %struct.regmap** %8, align 8
  %36 = getelementptr inbounds %struct.regmap, %struct.regmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 %34(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %12, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44, %31
  br label %88

50:                                               ; preds = %26, %21
  %51 = load %struct.regmap*, %struct.regmap** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @_regmap_read(%struct.regmap* %51, i32 %52, i32* %16)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %90

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70, %58
  %75 = load %struct.regmap*, %struct.regmap** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @_regmap_write(%struct.regmap* %75, i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32*, i32** %12, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %81, %74
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %56
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i64 @regmap_volatile(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @_regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
