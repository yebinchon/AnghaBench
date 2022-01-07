; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_load_hosts_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_load_hosts_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"127.0.0.1   localhost\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"::1   localhost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i8*)* @evdns_base_load_hosts_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_load_hosts_impl(%struct.evdns_base* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.evdns_base* %0, %struct.evdns_base** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %13 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @evutil_read_file_(i8* %17, i8** %6, i64* %9, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %22 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 64)
  %23 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = call i32 @evdns_base_parse_hosts_line(%struct.evdns_base* %23, i8* %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = call i32 @strlcpy(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 64)
  %28 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %30 = call i32 @evdns_base_parse_hosts_line(%struct.evdns_base* %28, i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 -1, i32 0
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %16
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %53, %35
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 10)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  store i8 0, i8* %43, align 1
  %44 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @evdns_base_parse_hosts_line(%struct.evdns_base* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %7, align 8
  br label %53

49:                                               ; preds = %37
  %50 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @evdns_base_parse_hosts_line(%struct.evdns_base* %50, i8* %51)
  br label %54

53:                                               ; preds = %42
  br label %37

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @mm_free(i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @evutil_read_file_(i8*, i8**, i64*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @evdns_base_parse_hosts_line(%struct.evdns_base*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
