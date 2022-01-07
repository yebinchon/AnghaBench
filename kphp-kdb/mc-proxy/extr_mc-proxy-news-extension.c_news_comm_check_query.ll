; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_comm_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_comm_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"news_comm_check: type = %d, key = %s, key_len = %d\0A\00", align 1
@mct_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"raw_comm_updates\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%raw_comm_updates\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"comm_updates\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%comm_updates\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"raw_user_comm_updates\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"user_comm_updates\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%raw_user_comm_updates\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%user_comm_updates\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"raw_user_comm_bookmarks\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%raw_user_comm_bookmarks\00", align 1
@mct_set = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"objectlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @news_comm_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @verbosity, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @eat_at(i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @mct_get, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 17
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %97

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 13
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 21
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 21)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 17
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 17)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 22
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 22)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 18
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 18)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %7, align 4
  %83 = icmp sge i32 %82, 23
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 23)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 23)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ true, %84 ], [ %92, %88 ]
  br label %95

95:                                               ; preds = %93, %81
  %96 = phi i1 [ false, %81 ], [ %94, %93 ]
  br label %97

97:                                               ; preds = %95, %77, %70, %63, %56, %49, %45, %38, %34
  %98 = phi i1 [ true, %77 ], [ true, %70 ], [ true, %63 ], [ true, %56 ], [ true, %49 ], [ true, %45 ], [ true, %38 ], [ true, %34 ], [ %96, %95 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %124

100:                                              ; preds = %17
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @mct_set, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @mct_replace, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @mct_add, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108, %104, %100
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %113, 10
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strncmp(i8* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 10)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi i1 [ false, %112 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %108
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %120, %97
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
