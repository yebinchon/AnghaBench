; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_delete_remote_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_delete_remote_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"cache_uri_delete_remote_disk: (U:%p) starting\0A\00", align 1
@LC = common dso_local global i32* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cache_uri_delete_remote_disk: ending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_uri_delete_remote_disk(%struct.cache_uri* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %11 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.cache_uri* %10)
  store i32 0, i32* %9, align 4
  %12 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %13 = load i32*, i32** @LC, align 8
  %14 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %15 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %12, i32* %13, i32 %14, i32 0, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i32*, i32** @LC, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @cache_uri_local_copy_disk_filter_match(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %36 = load i32*, i32** @LC, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @cache_uri_decr_server_stats(%struct.cache_uri* %35, i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %32
  %47 = load i32*, i32** @LC, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32*, i32** @LC, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @cache_local_copy_cpy(i32* %50, i32* %54)
  br label %56

56:                                               ; preds = %46, %32
  br label %60

57:                                               ; preds = %24
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %56
  br label %20

61:                                               ; preds = %20
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %66 = load i32*, i32** @LC, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %65, i32* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, i32*, i32, i32, i32*) #1

declare dso_local i64 @cache_uri_local_copy_disk_filter_match(i32*, i32*) #1

declare dso_local i32 @cache_uri_decr_server_stats(%struct.cache_uri*, i32*) #1

declare dso_local i32 @cache_local_copy_cpy(i32*, i32*) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
