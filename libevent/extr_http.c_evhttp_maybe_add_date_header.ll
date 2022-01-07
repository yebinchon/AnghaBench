; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_maybe_add_date_header.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_maybe_add_date_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evkeyvalq*)* @evhttp_maybe_add_date_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_maybe_add_date_header(%struct.evkeyvalq* %0) #0 {
  %2 = alloca %struct.evkeyvalq*, align 8
  %3 = alloca [50 x i8], align 16
  store %struct.evkeyvalq* %0, %struct.evkeyvalq** %2, align 8
  %4 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %5 = call i32* @evhttp_find_header(%struct.evkeyvalq* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %9 = call i32 @evutil_date_rfc1123(i8* %8, i32 50, i32* null)
  %10 = sext i32 %9 to i64
  %11 = sub i64 50, %10
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %16 = call i32 @evhttp_add_header(%struct.evkeyvalq* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32* @evhttp_find_header(%struct.evkeyvalq*, i8*) #1

declare dso_local i32 @evutil_date_rfc1123(i8*, i32, i32*) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
