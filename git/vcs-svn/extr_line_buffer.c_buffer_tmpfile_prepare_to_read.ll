; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_tmpfile_prepare_to_read.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_tmpfile_prepare_to_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ftell error\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"seek error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @buffer_tmpfile_prepare_to_read(%struct.line_buffer* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.line_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %3, align 8
  %5 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @ftell(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i64 @error_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i64 @fseek(i32 %16, i32 0, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i64 @error_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %21, i64* %2, align 8
  br label %24

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @ftell(i32) #1

declare dso_local i64 @error_errno(i8*) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
