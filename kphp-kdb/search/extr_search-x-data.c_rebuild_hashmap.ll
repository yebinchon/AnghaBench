; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rebuild_hashmap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_rebuild_hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@rebuild_hashmap_calls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"rebuild_hashmap: old hashmap size = %d, Q_limit = %d\0A\00", align 1
@hm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Q_limit = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Not enough memory for allocate hash table for storing %d entries.\0A\00", align 1
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"log_cur_pos ()\09%lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"last_search_query\09%s\0A\00", align 1
@last_search_query = common dso_local global i8* null, align 8
@RS = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rebuild_hashmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @rebuild_hashmap_calls, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @rebuild_hashmap_calls, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 0), align 8
  %9 = load i32, i32* @Q_limit, align 4
  %10 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 1), align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @MAX_RES, align 4
  %15 = add nsw i32 %14, 10
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @MAX_RES, align 4
  %19 = add nsw i32 %18, 10
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %0
  %21 = call i32 @hashmap_ll_int_free(%struct.TYPE_7__* @hm)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @hashmap_ll_int_init(%struct.TYPE_7__* @hm, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @exit(i32 2) #3
  unreachable

30:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %31

31:                                               ; preds = %88, %30
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @R_cnt, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load i32*, i32** @R, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @get_hash_item(i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @hashmap_ll_int_get(%struct.TYPE_7__* @hm, i64 %45, i32* %4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* (...) @log_cur_pos()
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @last_search_query, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 3), align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load i32, i32* %1, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 3), align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 2), align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 2), align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** @RS, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %87

81:                                               ; preds = %35
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hm, i32 0, i32 0), align 8
  %83 = load i32*, i32** @RS, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %61
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %31

91:                                               ; preds = %31
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @hashmap_ll_int_free(%struct.TYPE_7__*) #1

declare dso_local i32 @hashmap_ll_int_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @get_hash_item(i32) #1

declare dso_local i32 @hashmap_ll_int_get(%struct.TYPE_7__*, i64, i32*) #1

declare dso_local i8* @log_cur_pos(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
