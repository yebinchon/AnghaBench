; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_append_to_last_header.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_append_to_last_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }
%struct.evkeyval = type { i8* }

@evkeyvalq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evkeyvalq*, i8*)* @evhttp_append_to_last_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_append_to_last_header(%struct.evkeyvalq* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evkeyvalq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evkeyval*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.evkeyvalq* %0, %struct.evkeyvalq** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.evkeyvalq*, %struct.evkeyvalq** %4, align 8
  %11 = load i32, i32* @evkeyvalq, align 4
  %12 = call %struct.evkeyval* @TAILQ_LAST(%struct.evkeyvalq* %10, i32 %11)
  store %struct.evkeyval* %12, %struct.evkeyval** %6, align 8
  %13 = load %struct.evkeyval*, %struct.evkeyval** %6, align 8
  %14 = icmp eq %struct.evkeyval* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.evkeyval*, %struct.evkeyval** %6, align 8
  %18 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %33, %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @evutil_rtrim_lws_(i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.evkeyval*, %struct.evkeyval** %6, align 8
  %42 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 2
  %48 = call i8* @mm_realloc(i8* %43, i64 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %67

52:                                               ; preds = %36
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 32, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  %63 = call i32 @memcpy(i8* %59, i8* %60, i64 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.evkeyval*, %struct.evkeyval** %6, align 8
  %66 = getelementptr inbounds %struct.evkeyval, %struct.evkeyval* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %51, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.evkeyval* @TAILQ_LAST(%struct.evkeyvalq*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @evutil_rtrim_lws_(i8*) #1

declare dso_local i8* @mm_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
