; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_create_directories.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_create_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot create directory at '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.checkout*)* @create_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_directories(i8* %0, i32 %1, %struct.checkout* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.checkout*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.checkout* %2, %struct.checkout** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @xmallocz(i32 %9)
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %85, %81, %59, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 47
  br label %40

40:                                               ; preds = %32, %28
  %41 = phi i1 [ false, %28 ], [ %39, %32 ]
  br i1 %41, label %16, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %86

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.checkout*, %struct.checkout** %6, align 8
  %55 = getelementptr inbounds %struct.checkout, %struct.checkout* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @has_dirs_only_path(i8* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %11

60:                                               ; preds = %47
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @mkdir(i8* %61, i32 511)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EEXIST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.checkout*, %struct.checkout** %6, align 8
  %70 = getelementptr inbounds %struct.checkout, %struct.checkout* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @unlink_or_warn(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @mkdir(i8* %78, i32 511)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %11

82:                                               ; preds = %77, %73, %68, %64
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @die_errno(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %60
  br label %11

86:                                               ; preds = %46, %11
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @free(i8* %87)
  ret void
}

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i64 @has_dirs_only_path(i8*, i32, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
