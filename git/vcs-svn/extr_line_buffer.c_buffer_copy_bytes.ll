; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_copy_bytes.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_line_buffer.c_buffer_copy_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }

@COPY_BUFFER_LEN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @buffer_copy_bytes(%struct.line_buffer* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.line_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.line_buffer* %0, %struct.line_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %72, %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.line_buffer*, %struct.line_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @feof(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.line_buffer*, %struct.line_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ferror(i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %26, %20, %16
  %34 = phi i1 [ false, %20 ], [ false, %16 ], [ %32, %26 ]
  br i1 %34, label %35, label %73

35:                                               ; preds = %33
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  br label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @COPY_BUFFER_LEN, align 4
  %47 = sext i32 %46 to i64
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i64 [ %44, %43 ], [ %47, %45 ]
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.line_buffer*, %struct.line_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.line_buffer, %struct.line_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @fread(i8* %15, i32 1, i64 %50, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fwrite(i8* %15, i32 1, i64 %58, i32 %59)
  %61 = load i32, i32* @stdout, align 4
  %62 = call i64 @ferror(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.line_buffer*, %struct.line_buffer** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i64 @buffer_skip_bytes(%struct.line_buffer* %66, i64 %69)
  %71 = add nsw i64 %65, %70
  store i64 %71, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %75

72:                                               ; preds = %48
  br label %16

73:                                               ; preds = %33
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %64
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @feof(i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i64 @fread(i8*, i32, i64, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #2

declare dso_local i64 @buffer_skip_bytes(%struct.line_buffer*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
