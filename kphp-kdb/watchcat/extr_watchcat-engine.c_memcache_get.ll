; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@my_verbosity_tmp = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@MAX_VALUE_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"create_watchcat\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%lld,%d,%d%n\00", align 1
@get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @INIT, align 4
  %19 = load i32, i32* @my_verbosity_tmp, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @eat_at(i8* %26, i32 %27, i8** %8, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @watchcat_prepare_stats()
  store i32 %36, i32* %10, align 4
  %37 = load %struct.connection*, %struct.connection** %5, align 8
  %38 = load i8*, i8** @stats_buff, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* @MAX_VALUE_LEN, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = call i32 @prepare_stats(%struct.connection* %37, i8* %41, i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.connection*, %struct.connection** %5, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** @stats_buff, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @return_one_key(%struct.connection* %47, i8* %48, i8* %49, i32 %53)
  store i32 0, i32* %4, align 4
  br label %112

55:                                               ; preds = %31, %25
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 15
  br i1 %57, label %58, label %109

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %109, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 15
  %65 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %13, i32* %14, i32* %15, i32* %12)
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %108

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 15
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 40
  br i1 %75, label %76, label %108

76:                                               ; preds = %67
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 41
  br i1 %84, label %85, label %108

85:                                               ; preds = %76
  %86 = load i8*, i8** @stats_buff, align 8
  store i8* %86, i8** %16, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %17, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @memcpy(i8* %91, i8* %96, i32 %97)
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i64, i64* %13, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @subscribe_watchcat(i64 %103, i8* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %85, %76, %67, %62
  br label %109

109:                                              ; preds = %108, %58, %55
  %110 = load i32, i32* @get, align 4
  %111 = call i32 @RETURN(i32 %110, i32 0)
  br label %112

112:                                              ; preds = %109, %35
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @watchcat_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @subscribe_watchcat(i64, i8*, i32, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
