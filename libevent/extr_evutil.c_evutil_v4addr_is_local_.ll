; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_v4addr_is_local_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_v4addr_is_local_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@INADDR_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_v4addr_is_local_(%struct.in_addr* %0) #0 {
  %2 = alloca %struct.in_addr*, align 8
  %3 = alloca i64, align 8
  store %struct.in_addr* %0, %struct.in_addr** %2, align 8
  %4 = load %struct.in_addr*, %struct.in_addr** %2, align 8
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @ntohl(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @INADDR_ANY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @evutil_v4addr_is_localhost(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @evutil_v4addr_is_linklocal(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @evutil_v4addr_is_classd(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %15, %11, %1
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @evutil_v4addr_is_localhost(i64) #1

declare dso_local i64 @evutil_v4addr_is_linklocal(i64) #1

declare dso_local i64 @evutil_v4addr_is_classd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
