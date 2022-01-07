; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache.c_send_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"unable to write to cache daemon\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"read error from cache daemon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @unix_stream_connect(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @write_in_full(i32 %16, i32 %19, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @die_errno(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SHUT_WR, align 4
  %30 = call i32 @shutdown(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %50
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %34 = call i32 @read_in_full(i32 %32, i8* %33, i32 1024)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @ECONNRESET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %31
  br label %54

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @write_or_die(i32 1, i8* %51, i32 %52)
  store i32 1, i32* %6, align 4
  br label %31

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @unix_stream_connect(i8*) #1

declare dso_local i64 @write_in_full(i32, i32, i32) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @read_in_full(i32, i8*, i32) #1

declare dso_local i32 @write_or_die(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
