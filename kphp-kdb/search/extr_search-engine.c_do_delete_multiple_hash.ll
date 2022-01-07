; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_delete_multiple_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_delete_multiple_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.hashset_ll = type { i32 }

@value_buff = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"u = %llx\0A\00", align 1
@delete_hash_query_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_multiple_hash(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hashset_ll, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i8*, i8** @value_buff, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.connection*, %struct.connection** %4, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @read_in(i32* %16, i8* %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %44, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 10, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @hashset_ll_init(%struct.hashset_ll* %9, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %101

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %92, %56
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 44)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %12)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %95

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %95

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @hashset_ll_insert(%struct.hashset_ll* %9, i64 %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i8*, i8** %11, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %10, align 8
  br label %58

95:                                               ; preds = %91, %79, %73, %58
  %96 = call i32 @do_delete_items_with_hash_using_hashset(%struct.hashset_ll* %9)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @delete_hash_query_items, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* @delete_hash_query_items, align 4
  %100 = call i32 @hashset_ll_free(%struct.hashset_ll* %9)
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %55
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @hashset_ll_init(%struct.hashset_ll*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @hashset_ll_insert(%struct.hashset_ll*, i64) #1

declare dso_local i32 @do_delete_items_with_hash_using_hashset(%struct.hashset_ll*) #1

declare dso_local i32 @hashset_ll_free(%struct.hashset_ll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
