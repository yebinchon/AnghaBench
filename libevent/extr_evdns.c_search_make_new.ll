; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_search_make_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_search_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_state = type { %struct.search_domain* }
%struct.search_domain = type { i32, %struct.search_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.search_state*, i32, i8*)* @search_make_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @search_make_new(%struct.search_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.search_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.search_domain*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.search_state* %0, %struct.search_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %100

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  %30 = load %struct.search_state*, %struct.search_state** %5, align 8
  %31 = getelementptr inbounds %struct.search_state, %struct.search_state* %30, i32 0, i32 0
  %32 = load %struct.search_domain*, %struct.search_domain** %31, align 8
  store %struct.search_domain* %32, %struct.search_domain** %10, align 8
  br label %33

33:                                               ; preds = %94, %19
  %34 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %35 = icmp ne %struct.search_domain* %34, null
  br i1 %35, label %36, label %98

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %36
  %41 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %42 = bitcast %struct.search_domain* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 16
  store i8* %43, i8** %11, align 8
  %44 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %45 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i64
  %50 = add i64 %47, %49
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = add i64 %53, 1
  %55 = call i64 @mm_malloc(i64 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %100

60:                                               ; preds = %40
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %61, i8* %62, i32 %64)
  %66 = load i8, i8* %9, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 46, i8* %71, align 1
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %9, align 1
  %77 = sext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @memcpy(i8* %79, i8* %80, i32 %81)
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i8, i8* %9, align 1
  %86 = sext i8 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = getelementptr inbounds i8, i8* %83, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %13, align 8
  store i8* %92, i8** %4, align 8
  br label %100

93:                                               ; preds = %36
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %96 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %95, i32 0, i32 1
  %97 = load %struct.search_domain*, %struct.search_domain** %96, align 8
  store %struct.search_domain* %97, %struct.search_domain** %10, align 8
  br label %33

98:                                               ; preds = %33
  %99 = call i32 @EVUTIL_ASSERT(i32 0)
  store i8* null, i8** %4, align 8
  br label %100

100:                                              ; preds = %98, %72, %59, %18
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mm_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
