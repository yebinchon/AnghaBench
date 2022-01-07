; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_expand_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_expand_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.expand_path_context = type { i32, %struct.hostinfo* }
%struct.hostinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*, i8*)* @expand_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_path(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.expand_path_context*, align 8
  %9 = alloca %struct.hostinfo*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.expand_path_context*
  store %struct.expand_path_context* %11, %struct.expand_path_context** %8, align 8
  %12 = load %struct.expand_path_context*, %struct.expand_path_context** %8, align 8
  %13 = getelementptr inbounds %struct.expand_path_context, %struct.expand_path_context* %12, i32 0, i32 1
  %14 = load %struct.hostinfo*, %struct.hostinfo** %13, align 8
  store %struct.hostinfo* %14, %struct.hostinfo** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %59 [
    i32 72, label %19
    i32 67, label %24
    i32 73, label %36
    i32 80, label %48
    i32 68, label %53
  ]

19:                                               ; preds = %3
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %22 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %21, i32 0, i32 1
  %23 = call i32 @strbuf_addbuf(%struct.strbuf* %20, i32* %22)
  store i64 1, i64* %4, align 8
  br label %60

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 72
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %33 = call i32 @get_canon_hostname(%struct.hostinfo* %32)
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %31, i32 %33)
  store i64 2, i64* %4, align 8
  br label %60

35:                                               ; preds = %24
  br label %59

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 80
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %44 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %45 = call i32 @get_ip_address(%struct.hostinfo* %44)
  %46 = call i32 @strbuf_addstr(%struct.strbuf* %43, i32 %45)
  store i64 2, i64* %4, align 8
  br label %60

47:                                               ; preds = %36
  br label %59

48:                                               ; preds = %3
  %49 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %50 = load %struct.hostinfo*, %struct.hostinfo** %9, align 8
  %51 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %50, i32 0, i32 0
  %52 = call i32 @strbuf_addbuf(%struct.strbuf* %49, i32* %51)
  store i64 1, i64* %4, align 8
  br label %60

53:                                               ; preds = %3
  %54 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %55 = load %struct.expand_path_context*, %struct.expand_path_context** %8, align 8
  %56 = getelementptr inbounds %struct.expand_path_context, %struct.expand_path_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strbuf_addstr(%struct.strbuf* %54, i32 %57)
  store i64 1, i64* %4, align 8
  br label %60

59:                                               ; preds = %3, %47, %35
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %59, %53, %48, %42, %30, %19
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @get_canon_hostname(%struct.hostinfo*) #1

declare dso_local i32 @get_ip_address(%struct.hostinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
