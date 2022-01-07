; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_bad_header_test.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_bad_header_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"One\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Two\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Two\0D\0A Three\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"One\0D\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"One\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Two\0D\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Two\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_bad_header_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_bad_header_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evkeyvalq, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @TAILQ_INIT(%struct.evkeyvalq* %3)
  %5 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @tt_want(i32 %7)
  %9 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @tt_want(i32 %11)
  %13 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @tt_want(i32 %15)
  %17 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = call i32 @tt_want(i32 %19)
  %21 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = call i32 @tt_want(i32 %23)
  %25 = call i32 @evhttp_add_header(%struct.evkeyvalq* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @tt_want(i32 %27)
  %29 = call i32 @evhttp_clear_headers(%struct.evkeyvalq* %3)
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.evkeyvalq*) #1

declare dso_local i32 @tt_want(i32) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

declare dso_local i32 @evhttp_clear_headers(%struct.evkeyvalq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
