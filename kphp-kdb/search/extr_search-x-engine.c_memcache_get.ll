; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"worst_search_queries\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"unknown query \22get %s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_at_prefix_length(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = call i32 @searchx_prepare_stats(%struct.connection* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i32, i32* @stats_buff, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @return_one_key(%struct.connection* %29, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %99

38:                                               ; preds = %22, %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 8
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.connection*, %struct.connection** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @do_search_query(%struct.connection* %46, i8* %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %99

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @do_get_rate(%struct.connection* %60, i8* %61, i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %99

65:                                               ; preds = %54, %51
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 4
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.connection*, %struct.connection** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @do_get_hash(%struct.connection* %73, i8* %74, i32 %75, i32 %76)
  store i32 0, i32* %4, align 4
  br label %99

78:                                               ; preds = %68, %65
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 20
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @memcmp(i8* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 20)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.connection*, %struct.connection** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @worst_search_queries(%struct.connection* %86, i8* %87, i32 %88, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %99

91:                                               ; preds = %81, %78
  %92 = load i32, i32* @verbosity, align 4
  %93 = icmp sge i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %91
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %85, %72, %59, %45, %26
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @searchx_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @do_search_query(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @do_get_rate(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @do_get_hash(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @worst_search_queries(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
