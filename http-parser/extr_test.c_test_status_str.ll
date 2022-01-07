; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_status_str.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_status_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@HTTP_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@HTTP_STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_str() #0 {
  %1 = load i32, i32* @HTTP_STATUS_OK, align 4
  %2 = call i32 @http_status_str(i32 %1)
  %3 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = icmp eq i64 0, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @HTTP_STATUS_NOT_FOUND, align 4
  %8 = call i32 @http_status_str(i32 %7)
  %9 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = icmp eq i64 0, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 @http_status_str(i32 1337)
  %14 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = icmp eq i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @http_status_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
