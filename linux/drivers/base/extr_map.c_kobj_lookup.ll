; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_map.c_kobj_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_map.c_kobj_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_map = type { i32, %struct.probe** }
%struct.probe = type { i32, i32, i64 (i32, i8*)*, %struct.kobject* (i32, i32*, i8*)*, i8*, %struct.module*, %struct.probe* }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kobject* @kobj_lookup(%struct.kobj_map* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.probe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.kobject* (i32, i32*, i8*)*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i8*, align 8
  store %struct.kobj_map* %0, %struct.kobj_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 -1, i64* %10, align 8
  br label %14

14:                                               ; preds = %117, %3
  %15 = load %struct.kobj_map*, %struct.kobj_map** %5, align 8
  %16 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mutex_lock(i32 %17)
  %19 = load %struct.kobj_map*, %struct.kobj_map** %5, align 8
  %20 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %19, i32 0, i32 1
  %21 = load %struct.probe**, %struct.probe*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MAJOR(i32 %22)
  %24 = srem i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.probe*, %struct.probe** %21, i64 %25
  %27 = load %struct.probe*, %struct.probe** %26, align 8
  store %struct.probe* %27, %struct.probe** %9, align 8
  br label %28

28:                                               ; preds = %118, %14
  %29 = load %struct.probe*, %struct.probe** %9, align 8
  %30 = icmp ne %struct.probe* %29, null
  br i1 %30, label %31, label %122

31:                                               ; preds = %28
  %32 = load %struct.probe*, %struct.probe** %9, align 8
  %33 = getelementptr inbounds %struct.probe, %struct.probe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = load %struct.probe*, %struct.probe** %9, align 8
  %39 = getelementptr inbounds %struct.probe, %struct.probe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.probe*, %struct.probe** %9, align 8
  %42 = getelementptr inbounds %struct.probe, %struct.probe* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37, %31
  br label %118

49:                                               ; preds = %37
  %50 = load %struct.probe*, %struct.probe** %9, align 8
  %51 = getelementptr inbounds %struct.probe, %struct.probe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %122

58:                                               ; preds = %49
  %59 = load %struct.probe*, %struct.probe** %9, align 8
  %60 = getelementptr inbounds %struct.probe, %struct.probe* %59, i32 0, i32 5
  %61 = load %struct.module*, %struct.module** %60, align 8
  %62 = call i32 @try_module_get(%struct.module* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %118

65:                                               ; preds = %58
  %66 = load %struct.probe*, %struct.probe** %9, align 8
  %67 = getelementptr inbounds %struct.probe, %struct.probe* %66, i32 0, i32 5
  %68 = load %struct.module*, %struct.module** %67, align 8
  store %struct.module* %68, %struct.module** %12, align 8
  %69 = load %struct.probe*, %struct.probe** %9, align 8
  %70 = getelementptr inbounds %struct.probe, %struct.probe* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %13, align 8
  %72 = load %struct.probe*, %struct.probe** %9, align 8
  %73 = getelementptr inbounds %struct.probe, %struct.probe* %72, i32 0, i32 3
  %74 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %73, align 8
  store %struct.kobject* (i32, i32*, i8*)* %74, %struct.kobject* (i32, i32*, i8*)** %11, align 8
  %75 = load %struct.probe*, %struct.probe** %9, align 8
  %76 = getelementptr inbounds %struct.probe, %struct.probe* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.probe*, %struct.probe** %9, align 8
  %82 = getelementptr inbounds %struct.probe, %struct.probe* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.probe*, %struct.probe** %9, align 8
  %87 = getelementptr inbounds %struct.probe, %struct.probe* %86, i32 0, i32 2
  %88 = load i64 (i32, i8*)*, i64 (i32, i8*)** %87, align 8
  %89 = icmp ne i64 (i32, i8*)* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %65
  %91 = load %struct.probe*, %struct.probe** %9, align 8
  %92 = getelementptr inbounds %struct.probe, %struct.probe* %91, i32 0, i32 2
  %93 = load i64 (i32, i8*)*, i64 (i32, i8*)** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 %93(i32 %94, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.module*, %struct.module** %12, align 8
  %100 = call i32 @module_put(%struct.module* %99)
  br label %118

101:                                              ; preds = %90, %65
  %102 = load %struct.kobj_map*, %struct.kobj_map** %5, align 8
  %103 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mutex_unlock(i32 %104)
  %106 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %11, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call %struct.kobject* %106(i32 %107, i32* %108, i8* %109)
  store %struct.kobject* %110, %struct.kobject** %8, align 8
  %111 = load %struct.module*, %struct.module** %12, align 8
  %112 = call i32 @module_put(%struct.module* %111)
  %113 = load %struct.kobject*, %struct.kobject** %8, align 8
  %114 = icmp ne %struct.kobject* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load %struct.kobject*, %struct.kobject** %8, align 8
  store %struct.kobject* %116, %struct.kobject** %4, align 8
  br label %127

117:                                              ; preds = %101
  br label %14

118:                                              ; preds = %98, %64, %48
  %119 = load %struct.probe*, %struct.probe** %9, align 8
  %120 = getelementptr inbounds %struct.probe, %struct.probe* %119, i32 0, i32 6
  %121 = load %struct.probe*, %struct.probe** %120, align 8
  store %struct.probe* %121, %struct.probe** %9, align 8
  br label %28

122:                                              ; preds = %57, %28
  %123 = load %struct.kobj_map*, %struct.kobj_map** %5, align 8
  %124 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mutex_unlock(i32 %125)
  store %struct.kobject* null, %struct.kobject** %4, align 8
  br label %127

127:                                              ; preds = %122, %115
  %128 = load %struct.kobject*, %struct.kobject** %4, align 8
  ret %struct.kobject* %128
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
