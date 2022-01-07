; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_server_request_add_reply.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_server_request_add_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32 }
%struct.server_request = type { i32, i32, i32, i32, %struct.server_reply_item*, %struct.server_reply_item*, %struct.server_reply_item*, i64 }
%struct.server_reply_item = type { i32, i32, i32, i32, i32, i32*, %struct.server_reply_item*, %struct.server_reply_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_server_request_add_reply(%struct.evdns_server_request* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.evdns_server_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.server_request*, align 8
  %20 = alloca %struct.server_reply_item**, align 8
  %21 = alloca %struct.server_reply_item*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %24 = load %struct.evdns_server_request*, %struct.evdns_server_request** %10, align 8
  %25 = call %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request* %24)
  store %struct.server_request* %25, %struct.server_request** %19, align 8
  store i32 -1, i32* %23, align 4
  %26 = load %struct.server_request*, %struct.server_request** %19, align 8
  %27 = getelementptr inbounds %struct.server_request, %struct.server_request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EVDNS_LOCK(i32 %28)
  %30 = load %struct.server_request*, %struct.server_request** %19, align 8
  %31 = getelementptr inbounds %struct.server_request, %struct.server_request* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %9
  br label %154

35:                                               ; preds = %9
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %52 [
    i32 129, label %37
    i32 128, label %42
    i32 130, label %47
  ]

37:                                               ; preds = %35
  %38 = load %struct.server_request*, %struct.server_request** %19, align 8
  %39 = getelementptr inbounds %struct.server_request, %struct.server_request* %38, i32 0, i32 6
  store %struct.server_reply_item** %39, %struct.server_reply_item*** %20, align 8
  %40 = load %struct.server_request*, %struct.server_request** %19, align 8
  %41 = getelementptr inbounds %struct.server_request, %struct.server_request* %40, i32 0, i32 0
  store i32* %41, i32** %22, align 8
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.server_request*, %struct.server_request** %19, align 8
  %44 = getelementptr inbounds %struct.server_request, %struct.server_request* %43, i32 0, i32 5
  store %struct.server_reply_item** %44, %struct.server_reply_item*** %20, align 8
  %45 = load %struct.server_request*, %struct.server_request** %19, align 8
  %46 = getelementptr inbounds %struct.server_request, %struct.server_request* %45, i32 0, i32 1
  store i32* %46, i32** %22, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.server_request*, %struct.server_request** %19, align 8
  %49 = getelementptr inbounds %struct.server_request, %struct.server_request* %48, i32 0, i32 4
  store %struct.server_reply_item** %49, %struct.server_reply_item*** %20, align 8
  %50 = load %struct.server_request*, %struct.server_request** %19, align 8
  %51 = getelementptr inbounds %struct.server_request, %struct.server_request* %50, i32 0, i32 2
  store i32* %51, i32** %22, align 8
  br label %53

52:                                               ; preds = %35
  br label %154

53:                                               ; preds = %47, %42, %37
  br label %54

54:                                               ; preds = %58, %53
  %55 = load %struct.server_reply_item**, %struct.server_reply_item*** %20, align 8
  %56 = load %struct.server_reply_item*, %struct.server_reply_item** %55, align 8
  %57 = icmp ne %struct.server_reply_item* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.server_reply_item**, %struct.server_reply_item*** %20, align 8
  %60 = load %struct.server_reply_item*, %struct.server_reply_item** %59, align 8
  %61 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %60, i32 0, i32 7
  store %struct.server_reply_item** %61, %struct.server_reply_item*** %20, align 8
  br label %54

62:                                               ; preds = %54
  %63 = call i8* @mm_malloc(i32 48)
  %64 = bitcast i8* %63 to %struct.server_reply_item*
  store %struct.server_reply_item* %64, %struct.server_reply_item** %21, align 8
  %65 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %66 = icmp ne %struct.server_reply_item* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %154

68:                                               ; preds = %62
  %69 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %70 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %69, i32 0, i32 7
  store %struct.server_reply_item* null, %struct.server_reply_item** %70, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i8* @mm_strdup(i8* %71)
  %73 = bitcast i8* %72 to %struct.server_reply_item*
  %74 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %75 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %74, i32 0, i32 6
  store %struct.server_reply_item* %73, %struct.server_reply_item** %75, align 8
  %76 = icmp ne %struct.server_reply_item* %73, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %79 = call i32 @mm_free(%struct.server_reply_item* %78)
  br label %154

80:                                               ; preds = %68
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %83 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %86 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %89 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %94 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %96 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %95, i32 0, i32 4
  store i32 0, i32* %96, align 8
  %97 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %98 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %148

101:                                              ; preds = %80
  %102 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %103 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load i8*, i8** %18, align 8
  %108 = call i8* @mm_strdup(i8* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %111 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %110, i32 0, i32 5
  store i32* %109, i32** %111, align 8
  %112 = icmp ne i32* %109, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %115 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %114, i32 0, i32 6
  %116 = load %struct.server_reply_item*, %struct.server_reply_item** %115, align 8
  %117 = call i32 @mm_free(%struct.server_reply_item* %116)
  %118 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %119 = call i32 @mm_free(%struct.server_reply_item* %118)
  br label %154

120:                                              ; preds = %106
  %121 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %122 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %121, i32 0, i32 4
  store i32 -1, i32* %122, align 8
  br label %147

123:                                              ; preds = %101
  %124 = load i32, i32* %16, align 4
  %125 = call i8* @mm_malloc(i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %128 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %127, i32 0, i32 5
  store i32* %126, i32** %128, align 8
  %129 = icmp ne i32* %126, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %132 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %131, i32 0, i32 6
  %133 = load %struct.server_reply_item*, %struct.server_reply_item** %132, align 8
  %134 = call i32 @mm_free(%struct.server_reply_item* %133)
  %135 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %136 = call i32 @mm_free(%struct.server_reply_item* %135)
  br label %154

137:                                              ; preds = %123
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %140 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %142 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @memcpy(i32* %143, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %120
  br label %148

148:                                              ; preds = %147, %80
  %149 = load %struct.server_reply_item*, %struct.server_reply_item** %21, align 8
  %150 = load %struct.server_reply_item**, %struct.server_reply_item*** %20, align 8
  store %struct.server_reply_item* %149, %struct.server_reply_item** %150, align 8
  %151 = load i32*, i32** %22, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %23, align 4
  br label %154

154:                                              ; preds = %148, %130, %113, %77, %67, %52, %34
  %155 = load %struct.server_request*, %struct.server_request** %19, align 8
  %156 = getelementptr inbounds %struct.server_request, %struct.server_request* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @EVDNS_UNLOCK(i32 %157)
  %159 = load i32, i32* %23, align 4
  ret i32 %159
}

declare dso_local %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request*) #1

declare dso_local i32 @EVDNS_LOCK(i32) #1

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local i32 @mm_free(%struct.server_reply_item*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @EVDNS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
