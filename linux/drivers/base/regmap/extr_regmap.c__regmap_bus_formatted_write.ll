; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_bus_formatted_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_bus_formatted_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_range_node = type { i32 }
%struct.regmap = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.regmap.0*, i32, i32)* }
%struct.regmap.0 = type opaque
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_regmap_bus_formatted_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regmap_bus_formatted_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap_range_node*, align 8
  %10 = alloca %struct.regmap*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.regmap*
  store %struct.regmap* %12, %struct.regmap** %10, align 8
  %13 = load %struct.regmap*, %struct.regmap** %10, align 8
  %14 = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.regmap*, %struct.regmap** %10, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (%struct.regmap.0*, i32, i32)*, i32 (%struct.regmap.0*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.regmap.0*, i32, i32)* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i1 [ true, %3 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.regmap*, %struct.regmap** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap* %28, i32 %29)
  store %struct.regmap_range_node* %30, %struct.regmap_range_node** %9, align 8
  %31 = load %struct.regmap_range_node*, %struct.regmap_range_node** %9, align 8
  %32 = icmp ne %struct.regmap_range_node* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.regmap*, %struct.regmap** %10, align 8
  %35 = load %struct.regmap_range_node*, %struct.regmap_range_node** %9, align 8
  %36 = call i32 @_regmap_select_page(%struct.regmap* %34, i32* %6, %struct.regmap_range_node* %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.regmap*, %struct.regmap** %10, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32 (%struct.regmap.0*, i32, i32)*, i32 (%struct.regmap.0*, i32, i32)** %45, align 8
  %47 = load %struct.regmap*, %struct.regmap** %10, align 8
  %48 = bitcast %struct.regmap* %47 to %struct.regmap.0*
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %46(%struct.regmap.0* %48, i32 %49, i32 %50)
  %52 = load %struct.regmap*, %struct.regmap** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @trace_regmap_hw_write_start(%struct.regmap* %52, i32 %53, i32 1)
  %55 = load %struct.regmap*, %struct.regmap** %10, align 8
  %56 = getelementptr inbounds %struct.regmap, %struct.regmap* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %58, align 8
  %60 = load %struct.regmap*, %struct.regmap** %10, align 8
  %61 = getelementptr inbounds %struct.regmap, %struct.regmap* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.regmap*, %struct.regmap** %10, align 8
  %64 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.regmap*, %struct.regmap** %10, align 8
  %67 = getelementptr inbounds %struct.regmap, %struct.regmap* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %59(i32 %62, i32 %65, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.regmap*, %struct.regmap** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @trace_regmap_hw_write_done(%struct.regmap* %71, i32 %72, i32 1)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %42, %39
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.regmap_range_node* @_regmap_range_lookup(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_select_page(%struct.regmap*, i32*, %struct.regmap_range_node*, i32) #1

declare dso_local i32 @trace_regmap_hw_write_start(%struct.regmap*, i32, i32) #1

declare dso_local i32 @trace_regmap_hw_write_done(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
