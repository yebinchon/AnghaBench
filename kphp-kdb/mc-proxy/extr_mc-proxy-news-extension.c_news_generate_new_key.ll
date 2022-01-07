; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_generate_new_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_generate_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.news_gather_extra = type { i32, i32, i32, i32, i32, i32 }

@NEWS_UG_EXTENSION = common dso_local global i64 0, align 8
@NEWS_G_EXTENSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%%raw_updates%d[%d,%d]:%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%%raw_comm_updates[%d,%d]:%d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%%raw_user_comm_updates[%d,%d]:%d,%d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%%raw_user_comm_bookmarks%d,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @news_generate_new_key(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.news_gather_extra*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.news_gather_extra*
  store %struct.news_gather_extra* %12, %struct.news_gather_extra** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %21 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %24 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %27 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %30 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %89

33:                                               ; preds = %15
  %34 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %35 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %41 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %44 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %47 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %88

50:                                               ; preds = %33
  %51 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %52 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %58 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %61 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %64 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %67 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %87

70:                                               ; preds = %50
  %71 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %72 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %78 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.news_gather_extra*, %struct.news_gather_extra** %9, align 8
  %81 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %86

84:                                               ; preds = %70
  %85 = call i32 @assert(i32 0)
  br label %86

86:                                               ; preds = %84, %75
  br label %87

87:                                               ; preds = %86, %55
  br label %88

88:                                               ; preds = %87, %38
  br label %89

89:                                               ; preds = %88, %18
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
