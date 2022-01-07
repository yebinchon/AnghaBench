; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_user_comm_bookmarks.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_raw_user_comm_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"raw_user_comm_bookmarks%n\00", align 1
@Q = common dso_local global i32 0, align 4
@MAX_QUERY = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"QL = %d, bookmarks_size = %d\0A\00", align 1
@bookmarks_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_raw_user_comm_bookmarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_raw_user_comm_bookmarks(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i64 @sscanf(i8* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %11)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %11, align 4
  store i8* null, i8** %14, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = call i32 @strtol(i8* %37, i8** %14, i32 10)
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = icmp ult i8* %39, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %30
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 44
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strtol(i8* %53, i8** %14, i32 10)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %50, %45, %30
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @Q, align 4
  %59 = load i32, i32* @MAX_QUERY, align 4
  %60 = sdiv i32 %59, 3
  %61 = call i32 @get_bookmarks(i32 %56, i32 %57, i32 %58, i32 %60)
  store i32 %61, i32* @QL, align 4
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @QL, align 4
  %67 = load i32, i32* @bookmarks_size, align 4
  %68 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %55
  %70 = load i32, i32* @QL, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 -2, i32* %5, align 4
  br label %96

73:                                               ; preds = %69
  %74 = load i32, i32* @QL, align 4
  %75 = mul nsw i32 %74, 3
  %76 = load i32, i32* @MAX_QUERY, align 4
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.connection*, %struct.connection** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* @Q, align 4
  %92 = load i32, i32* @QL, align 4
  %93 = mul nsw i32 %92, 3
  %94 = call i32 @return_one_key_list(%struct.connection* %80, i8* %85, i32 %88, i32 2147483647, i32 %90, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %73, %27, %20
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @get_bookmarks(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
