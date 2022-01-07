; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_select_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_select_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i8*, i8* }
%struct.regmap_range_node = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32*, %struct.regmap_range_node*, i32)* @_regmap_select_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_select_page(%struct.regmap* %0, i32* %1, %struct.regmap_range_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regmap_range_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.regmap_range_node* %2, %struct.regmap_range_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %18 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  %21 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %22 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = urem i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %28 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %32 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = udiv i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %62

37:                                               ; preds = %4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %39, %40
  %42 = sub i32 %41, 1
  %43 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %44 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %112

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %53 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %54, %55
  %57 = icmp ugt i32 %51, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %112

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %67 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %72 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %65, %62
  %76 = load %struct.regmap*, %struct.regmap** %6, align 8
  %77 = getelementptr inbounds %struct.regmap, %struct.regmap* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %10, align 8
  %79 = load %struct.regmap*, %struct.regmap** %6, align 8
  %80 = getelementptr inbounds %struct.regmap, %struct.regmap* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.regmap*, %struct.regmap** %6, align 8
  %83 = getelementptr inbounds %struct.regmap, %struct.regmap* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.regmap*, %struct.regmap** %6, align 8
  %85 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %86 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %89 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %93 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %91, %94
  %96 = call i32 @_regmap_update_bits(%struct.regmap* %84, i32 %87, i32 %90, i32 %95, i32* %13, i32 0)
  store i32 %96, i32* %14, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.regmap*, %struct.regmap** %6, align 8
  %99 = getelementptr inbounds %struct.regmap, %struct.regmap* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %75
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %112

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104, %65
  %106 = load %struct.regmap_range_node*, %struct.regmap_range_node** %8, align 8
  %107 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %108, %109
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %105, %102, %58, %47
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @_regmap_update_bits(%struct.regmap*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
