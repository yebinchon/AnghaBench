; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_imap_store_msg.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_imap_store_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_store = type { i8*, i8*, %struct.imap* }
%struct.imap = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.imap_cmd_cb = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"INBOX\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"APPEND \22%s%s\22 \00", align 1
@DRV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_store*, %struct.strbuf*)* @imap_store_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_store_msg(%struct.imap_store* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imap_store*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.imap*, align 8
  %7 = alloca %struct.imap_cmd_cb, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.imap_store* %0, %struct.imap_store** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %11 = load %struct.imap_store*, %struct.imap_store** %4, align 8
  %12 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %11, i32 0, i32 2
  %13 = load %struct.imap*, %struct.imap** %12, align 8
  store %struct.imap* %13, %struct.imap** %6, align 8
  %14 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %15 = call i32 @lf_to_crlf(%struct.strbuf* %14)
  %16 = call i32 @memset(%struct.imap_cmd_cb* %7, i32 0, i32 8)
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.imap_cmd_cb, %struct.imap_cmd_cb* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = call i32 @strbuf_detach(%struct.strbuf* %21, i32* null)
  %23 = getelementptr inbounds %struct.imap_cmd_cb, %struct.imap_cmd_cb* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.imap_store*, %struct.imap_store** %4, align 8
  %25 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.imap_store*, %struct.imap_store** %4, align 8
  %33 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %34, %31 ]
  store i8* %36, i8** %8, align 8
  %37 = load %struct.imap_store*, %struct.imap_store** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @imap_exec_m(%struct.imap_store* %37, %struct.imap_cmd_cb* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.imap*, %struct.imap** %6, align 8
  %42 = getelementptr inbounds %struct.imap, %struct.imap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.imap*, %struct.imap** %6, align 8
  %45 = getelementptr inbounds %struct.imap, %struct.imap* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DRV_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @DRV_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @lf_to_crlf(%struct.strbuf*) #1

declare dso_local i32 @memset(%struct.imap_cmd_cb*, i32, i32) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @imap_exec_m(%struct.imap_store*, %struct.imap_cmd_cb*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
