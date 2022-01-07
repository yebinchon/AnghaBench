; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_get_str_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_get_str_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HASH_STR_PRIME = common dso_local global i32 0, align 4
@HS = common dso_local global %struct.TYPE_5__** null, align 8
@tot_str = common dso_local global i64 0, align 8
@MAX_STR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i32)* @get_str_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_str_f(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %2
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 %19, 131
  store i32 %20, i32* %6, align 4
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %25, 239
  store i32 %26, i32* %7, align 4
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* @HASH_STR_PRIME, align 4
  %33 = load i32, i32* %6, align 4
  %34 = urem i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HASH_STR_PRIME, align 4
  %37 = sub i32 %36, 1
  %38 = urem i32 %35, %37
  %39 = add i32 1, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %74, %31
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strcmp(i32 %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %59, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %3, align 8
  br label %105

64:                                               ; preds = %47
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @HASH_STR_PRIME, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @HASH_STR_PRIME, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %40

75:                                               ; preds = %40
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i64, i64* @tot_str, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* @tot_str, align 8
  %81 = load i64, i64* @tot_str, align 8
  %82 = load i64, i64* @MAX_STR, align 8
  %83 = icmp sle i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = call %struct.TYPE_5__* @zmalloc0(i32 4)
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %90, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @zstrdup(i8* %91)
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HS, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %3, align 8
  br label %105

104:                                              ; preds = %75
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %105

105:                                              ; preds = %104, %78, %58
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %106
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @zmalloc0(i32) #1

declare dso_local i32 @zstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
