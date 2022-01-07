; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_fast.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_14__ = type { i32 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@SKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*)* @skcipher_next_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_next_fast(%struct.skcipher_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca i64, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  %5 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %6 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 4
  %7 = call i8* @scatterwalk_page(%struct.TYPE_14__* %6)
  %8 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %9 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %7, i8** %11, align 8
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @offset_in_page(i32 %15)
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 3
  %24 = call i8* @scatterwalk_page(%struct.TYPE_14__* %23)
  %25 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @offset_in_page(i32 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  %39 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %40 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

46:                                               ; preds = %1
  %47 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %48 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %53 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %51, %56
  store i64 %57, i64* %4, align 8
  %58 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %59 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %64 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %62, %67
  %69 = load i64, i64* %4, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %72 = call i32 @skcipher_map_src(%struct.skcipher_walk* %71)
  %73 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %74 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %79 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %46
  %85 = load i32, i32* @SKCIPHER_WALK_DIFF, align 4
  %86 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %87 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %91 = call i32 @skcipher_map_dst(%struct.skcipher_walk* %90)
  br label %92

92:                                               ; preds = %84, %46
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %45
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @scatterwalk_page(%struct.TYPE_14__*) #1

declare dso_local i8* @offset_in_page(i32) #1

declare dso_local i32 @skcipher_map_src(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_map_dst(%struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
