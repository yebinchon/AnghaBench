; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_send_local_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_send_local_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot open '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Cannot stat '%s'\00", align 1
@content_length = common dso_local global i32 0, align 4
@content_type = common dso_local global i32 0, align 4
@last_modified = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Cannot read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*)* @send_local_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_local_file(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @git_pathdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* %14, i8** %7, align 8
  store i64 8192, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i8* @xmalloc(i64 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @not_found(%struct.strbuf* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %11)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %37 = load i32, i32* @content_length, align 4
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hdr_int(%struct.strbuf* %36, i32 %37, i32 %39)
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = load i32, i32* @content_type, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @hdr_str(%struct.strbuf* %41, i32 %42, i8* %43)
  %45 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %46 = load i32, i32* @last_modified, align 4
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hdr_date(%struct.strbuf* %45, i32 %46, i32 %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %51 = call i32 @end_headers(%struct.strbuf* %50)
  br label %52

52:                                               ; preds = %66, %35
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @xread(i32 %53, i8* %54, i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @write_or_die(i32 1, i8* %67, i64 %68)
  br label %52

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @free(i8* %75)
  ret void
}

declare dso_local i8* @git_pathdup(i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @not_found(%struct.strbuf*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

declare dso_local i32 @hdr_int(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @hdr_str(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @hdr_date(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @end_headers(%struct.strbuf*) #1

declare dso_local i64 @xread(i32, i8*, i64) #1

declare dso_local i32 @write_or_die(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
