; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_skip_bytes.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_skip_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@COPY_BUFFER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @buffer_skip_bytes(%struct.line_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.line_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.line_buffer* %0, %struct.line_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @feof(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ferror(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %18, %14
  %32 = phi i1 [ false, %18 ], [ false, %14 ], [ %30, %24 ]
  br i1 %32, label %33, label %55

33:                                               ; preds = %31
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i64 [ %42, %41 ], [ %45, %43 ]
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.line_buffer*, %struct.line_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @fread(i8* %13, i32 1, i64 %48, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %14

55:                                               ; preds = %31
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i64 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @feof(i32) #2

declare dso_local i32 @ferror(i32) #2

declare dso_local i64 @fread(i8*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
