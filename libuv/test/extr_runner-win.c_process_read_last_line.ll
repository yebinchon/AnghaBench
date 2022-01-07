; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_read_last_line.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_read_last_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@INVALID_FILE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_read_last_line(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GetFileSize(i32 %18, i32* null)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @INVALID_FILE_SIZE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  store i32 1, i32* %4, align 4
  br label %91

30:                                               ; preds = %24
  %31 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 8)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %36, %37
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, 1
  %48 = call i32 @ReadFile(i32 %44, i8* %45, i64 %47, i64* %9, %struct.TYPE_7__* %11)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %91

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %72, %51
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %10, align 8
  %56 = icmp ugt i64 %54, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %57
  br label %73

72:                                               ; preds = %64
  br label %53

73:                                               ; preds = %71, %53
  %74 = load i64, i64* %10, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @memmove(i8* %77, i8* %80, i64 %83)
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 0, i8* %90, align 1
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %50, %27, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @GetFileSize(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ReadFile(i32, i8*, i64, i64*, %struct.TYPE_7__*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
