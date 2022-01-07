; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_fill_hashmap.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_fill_hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, %struct.entry*, i32*, i32*, i32*, i32* }
%struct.entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, %struct.hashmap*, i32, i32, i32, i32)* @fill_hashmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_hashmap(i32* %0, i32* %1, i32* %2, i32* %3, %struct.hashmap* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.hashmap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store %struct.hashmap* %4, %struct.hashmap** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %22 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %25 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %28 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %31 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %35 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %37 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i64 @xdl_malloc(i32 %41)
  %43 = inttoptr i64 %42 to %struct.entry*
  %44 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %45 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %44, i32 0, i32 1
  store %struct.entry* %43, %struct.entry** %45, align 8
  %46 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %47 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %46, i32 0, i32 1
  %48 = load %struct.entry*, %struct.entry** %47, align 8
  %49 = icmp ne %struct.entry* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %84

51:                                               ; preds = %9
  %52 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %53 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %52, i32 0, i32 1
  %54 = load %struct.entry*, %struct.entry** %53, align 8
  %55 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %56 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(%struct.entry* %54, i32 0, i32 %60)
  br label %62

62:                                               ; preds = %66, %51
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %17, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %71 = call i32 @insert_record(i32* %67, i32 %68, %struct.hashmap* %70, i32 1)
  br label %62

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %19, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = load %struct.hashmap*, %struct.hashmap** %15, align 8
  %82 = call i32 @insert_record(i32* %78, i32 %79, %struct.hashmap* %81, i32 2)
  br label %73

83:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i64 @xdl_malloc(i32) #1

declare dso_local i32 @memset(%struct.entry*, i32, i32) #1

declare dso_local i32 @insert_record(i32*, i32, %struct.hashmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
