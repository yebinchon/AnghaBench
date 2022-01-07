; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VALUE_BUFFSIZE = common dso_local global i32 0, align 4
@get_queries = common dso_local global i32 0, align 4
@value_buff = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"hex_random\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_at_prefix_length(i8* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 6
  br i1 %24, label %25, label %56

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @VALUE_BUFFSIZE, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* @get_queries, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @get_queries, align 4
  %44 = load i32, i32* @value_buff, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @random_get_bytes(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.connection*, %struct.connection** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i32, i32* @value_buff, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @return_one_key(%struct.connection* %47, i8* %52, i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %110

56:                                               ; preds = %37, %34, %29, %25, %3
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 10
  %66 = call i32 @sscanf(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @VALUE_BUFFSIZE, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i32, i32* @get_queries, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @get_queries, align 4
  %78 = load i32, i32* @value_buff, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @random_get_hex_bytes(i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i32, i32* @value_buff, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @return_one_key(%struct.connection* %81, i8* %86, i32 %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %110

90:                                               ; preds = %71, %68, %63, %59, %56
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %91, 5
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load %struct.connection*, %struct.connection** %5, align 8
  %99 = call i32 @random_prepare_stats(%struct.connection* %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.connection*, %struct.connection** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i32, i32* @stats_buff, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @return_one_key(%struct.connection* %100, i8* %105, i32 %106, i32 %107)
  store i32 0, i32* %4, align 4
  br label %110

109:                                              ; preds = %93, %90
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %97, %75, %41
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @random_get_bytes(i32, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @random_get_hex_bytes(i32, i32) #1

declare dso_local i32 @random_prepare_stats(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
