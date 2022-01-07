; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i64 0, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"slaves_broken\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"slaves_notconn\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"slaves_late\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"slaves_uptodate\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"slaves_all\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"slaves_bad\00", align 1

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
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 5
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = call i32 (...) @replicator_prepare_stats()
  store i32 %17, i32* %8, align 4
  %18 = load %struct.connection*, %struct.connection** %5, align 8
  %19 = load i64, i64* @stats_buff, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @prepare_stats(%struct.connection* %18, i64 %22, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.connection*, %struct.connection** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* @stats_buff, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @return_one_key(%struct.connection* %28, i8* %29, i64 %30, i32 %33)
  store i32 0, i32* %4, align 4
  br label %120

35:                                               ; preds = %12, %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 13
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* @stats_buff, align 8
  %46 = load i64, i64* @stats_buff, align 8
  %47 = call i32 @prepare_slaves_stats(i64 %46, i32 1)
  %48 = call i32 @return_one_key(%struct.connection* %43, i8* %44, i64 %45, i32 %47)
  store i32 0, i32* %4, align 4
  br label %120

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 14
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strncmp(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load %struct.connection*, %struct.connection** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* @stats_buff, align 8
  %60 = load i64, i64* @stats_buff, align 8
  %61 = call i32 @prepare_slaves_stats(i64 %60, i32 2)
  %62 = call i32 @return_one_key(%struct.connection* %57, i8* %58, i64 %59, i32 %61)
  store i32 0, i32* %4, align 4
  br label %120

63:                                               ; preds = %52, %49
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 11
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load %struct.connection*, %struct.connection** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* @stats_buff, align 8
  %74 = load i64, i64* @stats_buff, align 8
  %75 = call i32 @prepare_slaves_stats(i64 %74, i32 4)
  %76 = call i32 @return_one_key(%struct.connection* %71, i8* %72, i64 %73, i32 %75)
  store i32 0, i32* %4, align 4
  br label %120

77:                                               ; preds = %66, %63
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 15
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load %struct.connection*, %struct.connection** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* @stats_buff, align 8
  %88 = load i64, i64* @stats_buff, align 8
  %89 = call i32 @prepare_slaves_stats(i64 %88, i32 8)
  %90 = call i32 @return_one_key(%struct.connection* %85, i8* %86, i64 %87, i32 %89)
  store i32 0, i32* %4, align 4
  br label %120

91:                                               ; preds = %80, %77
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %92, 10
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strncmp(i8* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* @stats_buff, align 8
  %102 = load i64, i64* @stats_buff, align 8
  %103 = call i32 @prepare_slaves_stats(i64 %102, i32 -1)
  %104 = call i32 @return_one_key(%struct.connection* %99, i8* %100, i64 %101, i32 %103)
  store i32 0, i32* %4, align 4
  br label %120

105:                                              ; preds = %94, %91
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 10
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = load %struct.connection*, %struct.connection** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* @stats_buff, align 8
  %116 = load i64, i64* @stats_buff, align 8
  %117 = call i32 @prepare_slaves_stats(i64 %116, i32 -25)
  %118 = call i32 @return_one_key(%struct.connection* %113, i8* %114, i64 %115, i32 %117)
  store i32 0, i32* %4, align 4
  br label %120

119:                                              ; preds = %108, %105
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %112, %98, %84, %70, %56, %42, %16
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @replicator_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i64, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i64, i32) #1

declare dso_local i32 @prepare_slaves_stats(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
