; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_percent.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_decode_percent(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %8, i64 %11, i32 %13)
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %8, i64 %15, i32 1)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @ENSURE_SIZE(%struct.TYPE_4__* %17, i64 %18)
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %90, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %76

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 2
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isxdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 2
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isxdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @HEX_DECODE(i8 signext %57)
  %59 = shl i32 %58, 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 2
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @HEX_DECODE(i8 signext %64)
  %66 = add nsw i32 %59, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 2
  store i64 %75, i64* %7, align 8
  br label %89

76:                                               ; preds = %44, %36, %31, %24
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %76, %52
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %20

97:                                               ; preds = %20
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 0, i32* %104, align 4
  ret i32 0
}

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i32 @ENSURE_SIZE(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @HEX_DECODE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
