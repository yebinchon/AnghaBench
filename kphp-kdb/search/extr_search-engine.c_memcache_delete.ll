; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"delete \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"itemswithhash%llx\00", align 1
@delete_hash_queries = common dso_local global i32 0, align 4
@delete_hash_query_items = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"item%d_%d \00", align 1
@delete_queries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"delete_item (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"delete: item_id=%lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"item%d \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"reset_all_%cate%c\00", align 1
@MAX_RATES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @sscanf(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @delete_hash_queries, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @delete_hash_queries, align 4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @do_delete_items_with_hash(i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @delete_hash_query_items, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @delete_hash_query_items, align 4
  br label %101

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, ...) @sscanf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %8)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i32, i32* @delete_queries, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @delete_queries, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = shl i64 %44, 32
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = shl i64 %51, 32
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @do_delete_item(i32 %56)
  store i32 %57, i32* %9, align 4
  br label %100

58:                                               ; preds = %34, %31, %27
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i8*, i8*, ...) @sscanf(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* @delete_queries, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @delete_queries, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @do_delete_item(i32 %73)
  store i32 %74, i32* %9, align 4
  br label %99

75:                                               ; preds = %62, %58
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 (i8*, i8*, ...) @sscanf(i8* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %11, i8* %12)
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 115
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i8, i8* %11, align 1
  %85 = call i32 @get_sorting_mode(i8 signext %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @MAX_RATES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* @delete_queries, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @delete_queries, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @do_reset_all_rates(i32 %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %92, %88, %83
  br label %98

98:                                               ; preds = %97, %79, %75
  br label %99

99:                                               ; preds = %98, %65
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.connection*, %struct.connection** %4, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 0
  %107 = call i32 @write_out(i32* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  br label %112

108:                                              ; preds = %101
  %109 = load %struct.connection*, %struct.connection** %4, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 0
  %111 = call i32 @write_out(i32* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 11)
  br label %112

112:                                              ; preds = %108, %104
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @do_delete_items_with_hash(i64) #1

declare dso_local i32 @do_delete_item(i32) #1

declare dso_local i32 @get_sorting_mode(i8 signext) #1

declare dso_local i32 @do_reset_all_rates(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
