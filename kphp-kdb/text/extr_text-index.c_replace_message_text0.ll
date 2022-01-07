; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_replace_message_text0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_replace_message_text0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_replace_text_long = type { i32, i8*, i32, i32 }
%struct.lev_replace_text = type { i8* }

@LEV_TX_REPLACE_TEXT_LONG = common dso_local global i32 0, align 4
@LEV_TX_REPLACE_TEXT = common dso_local global i32 0, align 4
@discarded_rec = common dso_local global i32 0, align 4
@User = common dso_local global i32* null, align 8
@search_enabled = common dso_local global i64 0, align 8
@tot_search_words = common dso_local global i32 0, align 4
@UserSearchWords = common dso_local global i64* null, align 8
@max_user_search_words = common dso_local global i64 0, align 8
@max_user_search_id = common dso_local global i32 0, align 4
@msgs_read = common dso_local global i32 0, align 4
@msgs_bytes = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@UserMsgCnt = common dso_local global i32* null, align 8
@UserMsgBytes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replace_message_text0(%struct.lev_replace_text_long* %0) #0 {
  %2 = alloca %struct.lev_replace_text_long*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lev_replace_text_long* %0, %struct.lev_replace_text_long** %2, align 8
  %7 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %8 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LEV_TX_REPLACE_TEXT_LONG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %14 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %17 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %21 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -4096
  %24 = load i32, i32* @LEV_TX_REPLACE_TEXT, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %29 = bitcast %struct.lev_replace_text_long* %28 to %struct.lev_replace_text*
  %30 = getelementptr inbounds %struct.lev_replace_text, %struct.lev_replace_text* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %4, align 8
  %32 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %33 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 4095
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %19, %12
  %37 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %38 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @conv_uid(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @discarded_rec, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @discarded_rec, align 4
  br label %114

46:                                               ; preds = %36
  %47 = load i32*, i32** @User, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @assert(i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @preprocess_text(i8* %53, i32 %54)
  %56 = load i64, i64* @search_enabled, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %46
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @compute_message_distinct_words(i8* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @tot_search_words, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* @tot_search_words, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** @UserSearchWords, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %66
  store i64 %72, i64* %70, align 8
  %73 = load i64*, i64** @UserSearchWords, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @max_user_search_words, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %58
  %81 = load i64*, i64** @UserSearchWords, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* @max_user_search_words, align 8
  %86 = load %struct.lev_replace_text_long*, %struct.lev_replace_text_long** %2, align 8
  %87 = getelementptr inbounds %struct.lev_replace_text_long, %struct.lev_replace_text_long* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* @max_user_search_id, align 4
  br label %89

89:                                               ; preds = %80, %58
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i32, i32* @msgs_read, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @msgs_read, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @msgs_bytes, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* @msgs_bytes, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @max_uid, align 4
  %98 = icmp sle i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32*, i32** @UserMsgCnt, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32*, i32** @UserMsgBytes, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %107
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %90, %43
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @conv_uid(i32) #1

declare dso_local i32 @preprocess_text(i8*, i32) #1

declare dso_local i32 @compute_message_distinct_words(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
