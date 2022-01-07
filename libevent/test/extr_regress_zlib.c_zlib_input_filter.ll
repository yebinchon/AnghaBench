; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_zlib.c_zlib_input_filter.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_zlib.c_zlib_input_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_iovec = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32 }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@BEV_NEED_MORE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@infilter_calls = common dso_local global i32 0, align 4
@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer*, i32, i32, i8*)* @zlib_input_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_input_filter(%struct.evbuffer* %0, %struct.evbuffer* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [1 x %struct.evbuffer_iovec], align 16
  %13 = alloca [1 x %struct.evbuffer_iovec], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %7, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %18, align 8
  br label %21

21:                                               ; preds = %108, %5
  %22 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %23 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %24 = call i32 @evbuffer_peek(%struct.evbuffer* %22, i32 -1, i32* null, %struct.evbuffer_iovec* %23, i32 1)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %29 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %34 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %44

39:                                               ; preds = %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %27
  %45 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %46 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %47 = call i32 @evbuffer_reserve_space(%struct.evbuffer* %45, i32 4096, %struct.evbuffer_iovec* %46, i32 1)
  %48 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %49 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %55 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @getstate(i32 %60)
  %62 = call i32 @inflate(%struct.TYPE_3__* %59, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %64 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %65, %68
  store i32 %69, i32* %14, align 4
  %70 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %71 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %15, align 4
  %77 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @evbuffer_drain(%struct.evbuffer* %77, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %82 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 16
  %83 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %84 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %85 = call i32 @evbuffer_commit_space(%struct.evbuffer* %83, %struct.evbuffer_iovec* %84, i32 1)
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @Z_BUF_ERROR, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %44
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @BEV_NEED_MORE, align 4
  store i32 %93, i32* %6, align 4
  br label %116

94:                                               ; preds = %89
  br label %107

95:                                               ; preds = %44
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @Z_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @Z_STREAM_END, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ true, %95 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  br label %107

107:                                              ; preds = %103, %94
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %110 = call i64 @evbuffer_get_length(%struct.evbuffer* %109)
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %21, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @infilter_calls, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @infilter_calls, align 4
  %115 = load i32, i32* @BEV_OK, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %92
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @evbuffer_peek(%struct.evbuffer*, i32, i32*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @evbuffer_reserve_space(%struct.evbuffer*, i32, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @getstate(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_commit_space(%struct.evbuffer*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
