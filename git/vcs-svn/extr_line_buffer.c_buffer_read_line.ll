; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_read_line.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @buffer_read_line(%struct.line_buffer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.line_buffer*, align 8
  %4 = alloca i8*, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %3, align 8
  %5 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @fgets(i8* %7, i32 8, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  store i8 0, i8* %31, align 1
  br label %41

32:                                               ; preds = %14
  %33 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @feof(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %45

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %41, %39, %13
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @feof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
