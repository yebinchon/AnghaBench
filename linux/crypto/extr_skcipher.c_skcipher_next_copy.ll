; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_copy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i64, i32, i64, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.skcipher_walk_buffer = type { i64, i32* }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*)* @skcipher_next_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_next_copy(%struct.skcipher_walk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.skcipher_walk_buffer*, align 8
  %5 = alloca i32*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  %6 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %7 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %10 = call i32 @skcipher_map_src(%struct.skcipher_walk* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @memcpy(i32* %11, i32* %16, i64 %19)
  %21 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %22 = call i32 @skcipher_unmap_src(%struct.skcipher_walk* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* %23, i32** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32* %28, i32** %32, align 8
  %33 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

40:                                               ; preds = %1
  %41 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %42 = call i32 @skcipher_walk_gfp(%struct.skcipher_walk* %41)
  %43 = call %struct.skcipher_walk_buffer* @kmalloc(i32 16, i32 %42)
  store %struct.skcipher_walk_buffer* %43, %struct.skcipher_walk_buffer** %4, align 8
  %44 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %4, align 8
  %45 = icmp ne %struct.skcipher_walk_buffer* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %40
  %50 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %51 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.skcipher_walk_buffer, %struct.skcipher_walk_buffer* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %56 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.skcipher_walk_buffer, %struct.skcipher_walk_buffer* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %61 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %4, align 8
  %62 = call i32 @skcipher_queue_write(%struct.skcipher_walk* %60, %struct.skcipher_walk_buffer* %61)
  %63 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %64 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @offset_in_page(i32* %65)
  %67 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %68 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %72 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %49
  %78 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %79 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  br label %88

80:                                               ; preds = %49
  %81 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %82 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %85 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %83
  store i32* %87, i32** %85, align 8
  br label %88

88:                                               ; preds = %80, %77
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %46, %39
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @skcipher_map_src(%struct.skcipher_walk*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @skcipher_unmap_src(%struct.skcipher_walk*) #1

declare dso_local %struct.skcipher_walk_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @skcipher_walk_gfp(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_queue_write(%struct.skcipher_walk*, %struct.skcipher_walk_buffer*) #1

declare dso_local i64 @offset_in_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
