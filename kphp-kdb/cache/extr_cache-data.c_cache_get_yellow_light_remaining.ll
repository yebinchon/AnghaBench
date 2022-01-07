; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_yellow_light_remaining.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_yellow_light_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cache_uri = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"cache_get_local_copy_yellow_light_remaining (\22%s\22, \22%s\22)\0A\00", align 1
@LC = common dso_local global %struct.TYPE_4__* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_get_yellow_light_remaining(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cache_uri*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.cache_uri* @get_uri_f(i8* %17, i32 0)
  store %struct.cache_uri* %18, %struct.cache_uri** %10, align 8
  %19 = load %struct.cache_uri*, %struct.cache_uri** %10, align 8
  %20 = icmp eq %struct.cache_uri* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  %23 = load %struct.cache_uri*, %struct.cache_uri** %10, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @LC, align 8
  %25 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %26 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %23, %struct.TYPE_4__* %24, i32 %25, i32 1, i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %63

30:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @LC, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strcmp(i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @LC, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @cache_local_copy_get_yellow_light_time(%struct.TYPE_4__* %59, i32* %60, i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %55, %54, %29, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cache_local_copy_get_yellow_light_time(%struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
