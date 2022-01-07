; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_fast_export_blob_delta.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_fast_export.c_fast_export_blob_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@S_IFLNK = common dso_local global i64 0, align 8
@postimage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"link \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"data %ld\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fast_export_blob_delta(i64 %0, i64 %1, i8* %2, i64 %3, %struct.line_buffer* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.line_buffer*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.line_buffer* %4, %struct.line_buffer** %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp sge i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.line_buffer*, %struct.line_buffer** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @apply_delta(i64 %16, %struct.line_buffer* %17, i8* %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @S_IFLNK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @buffer_skip_bytes(i32* @postimage, i64 %25)
  %27 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %11, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @buffer_copy_bytes(i32* @postimage, i64 %33)
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @fputc(i8 signext 10, i32 %35)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @apply_delta(i64, %struct.line_buffer*, i8*, i64) #1

declare dso_local i32 @buffer_skip_bytes(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @buffer_copy_bytes(i32*, i64) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
