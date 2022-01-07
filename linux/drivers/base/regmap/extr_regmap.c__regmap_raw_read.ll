; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_raw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32 (i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 (i32, i32, i64, i8*, i32)* }
%struct.regmap_range_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i8*, i32)* @_regmap_raw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_raw_read(%struct.regmap* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap_range_node*, align 8
  %11 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = getelementptr inbounds %struct.regmap, %struct.regmap* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = getelementptr inbounds %struct.regmap, %struct.regmap* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i64, i8*, i32)*, i32 (i32, i32, i64, i8*, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32, i64, i8*, i32)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %118

33:                                               ; preds = %23
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap* %34, i32 %35)
  store %struct.regmap_range_node* %36, %struct.regmap_range_node** %10, align 8
  %37 = load %struct.regmap_range_node*, %struct.regmap_range_node** %10, align 8
  %38 = icmp ne %struct.regmap_range_node* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = load %struct.regmap_range_node*, %struct.regmap_range_node** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.regmap*, %struct.regmap** %6, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = udiv i32 %42, %46
  %48 = call i32 @_regmap_select_page(%struct.regmap* %40, i32* %7, %struct.regmap_range_node* %41, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %118

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.regmap*, %struct.regmap** %6, align 8
  %56 = getelementptr inbounds %struct.regmap, %struct.regmap* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %57, align 8
  %59 = load %struct.regmap*, %struct.regmap** %6, align 8
  %60 = getelementptr inbounds %struct.regmap, %struct.regmap* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.regmap*, %struct.regmap** %6, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %58(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load %struct.regmap*, %struct.regmap** %6, align 8
  %69 = getelementptr inbounds %struct.regmap, %struct.regmap* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.regmap*, %struct.regmap** %6, align 8
  %73 = getelementptr inbounds %struct.regmap, %struct.regmap* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @regmap_set_work_buf_flag_mask(%struct.regmap* %67, i64 %71, i32 %74)
  %76 = load %struct.regmap*, %struct.regmap** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.regmap*, %struct.regmap** %6, align 8
  %80 = getelementptr inbounds %struct.regmap, %struct.regmap* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = udiv i32 %78, %82
  %84 = call i32 @trace_regmap_hw_read_start(%struct.regmap* %76, i32 %77, i32 %83)
  %85 = load %struct.regmap*, %struct.regmap** %6, align 8
  %86 = getelementptr inbounds %struct.regmap, %struct.regmap* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, i64, i8*, i32)*, i32 (i32, i32, i64, i8*, i32)** %88, align 8
  %90 = load %struct.regmap*, %struct.regmap** %6, align 8
  %91 = getelementptr inbounds %struct.regmap, %struct.regmap* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.regmap*, %struct.regmap** %6, align 8
  %94 = getelementptr inbounds %struct.regmap, %struct.regmap* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.regmap*, %struct.regmap** %6, align 8
  %97 = getelementptr inbounds %struct.regmap, %struct.regmap* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.regmap*, %struct.regmap** %6, align 8
  %101 = getelementptr inbounds %struct.regmap, %struct.regmap* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %99, %103
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 %89(i32 %92, i32 %95, i64 %104, i8* %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.regmap*, %struct.regmap** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.regmap*, %struct.regmap** %6, align 8
  %112 = getelementptr inbounds %struct.regmap, %struct.regmap* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = udiv i32 %110, %114
  %116 = call i32 @trace_regmap_hw_read_done(%struct.regmap* %108, i32 %109, i32 %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %54, %51, %30
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_select_page(%struct.regmap*, i32*, %struct.regmap_range_node*, i32) #1

declare dso_local i32 @regmap_set_work_buf_flag_mask(%struct.regmap*, i64, i32) #1

declare dso_local i32 @trace_regmap_hw_read_start(%struct.regmap*, i32, i32) #1

declare dso_local i32 @trace_regmap_hw_read_done(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
