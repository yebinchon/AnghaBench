; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_bad_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_bad_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.service_cmd = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"SERVER_PROTOCOL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Allow\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"GET, HEAD\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.service_cmd*)* @bad_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_request(%struct.strbuf* %0, %struct.service_cmd* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.service_cmd*, align 8
  %5 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.service_cmd* %1, %struct.service_cmd** %4, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %15 = call i32 @http_status(%struct.strbuf* %14, i32 405, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = load %struct.service_cmd*, %struct.service_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.service_cmd*, %struct.service_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.service_cmd, %struct.service_cmd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %22 ], [ %26, %23 ]
  %29 = call i32 @hdr_str(%struct.strbuf* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %33

30:                                               ; preds = %9, %2
  %31 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %32 = call i32 @http_status(%struct.strbuf* %31, i32 400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %35 = call i32 @hdr_nocache(%struct.strbuf* %34)
  %36 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %37 = call i32 @end_headers(%struct.strbuf* %36)
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @http_status(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @hdr_str(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @hdr_nocache(%struct.strbuf*) #1

declare dso_local i32 @end_headers(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
