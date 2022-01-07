; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_local_copy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_delete_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i32, i32 }

@LC = common dso_local global %struct.TYPE_8__* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_uri*, %struct.cache_local_copy*)* @cache_delete_local_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_delete_local_copy(%struct.cache_uri* %0, %struct.cache_local_copy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca %struct.cache_local_copy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %4, align 8
  store %struct.cache_local_copy* %1, %struct.cache_local_copy** %5, align 8
  %9 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %11 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %12 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %9, %struct.TYPE_8__* %10, i32 %11, i32 1, i32* %8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %86

20:                                               ; preds = %15
  %21 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %22 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %29 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %30 = call i32 @cache_local_copy_unpack_location(%struct.cache_uri* %28, %struct.cache_local_copy* %29)
  br label %31

31:                                               ; preds = %27, %20
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %44 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %32

53:                                               ; preds = %48, %32
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %86

58:                                               ; preds = %53
  %59 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = call i32 @cache_uri_decr_server_stats(%struct.cache_uri* %59, %struct.TYPE_8__* %63)
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = call i32 @cache_local_copy_cpy(%struct.TYPE_8__* %74, %struct.TYPE_8__* %78)
  br label %80

80:                                               ; preds = %70, %58
  %81 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LC, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %81, %struct.TYPE_8__* %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %57, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @cache_local_copy_unpack_location(%struct.cache_uri*, %struct.cache_local_copy*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @cache_uri_decr_server_stats(%struct.cache_uri*, %struct.TYPE_8__*) #1

declare dso_local i32 @cache_local_copy_cpy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
