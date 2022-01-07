; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_verify_headers.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_verify_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.fsck_options = type { i32 }

@FSCK_MSG_NUL_IN_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unterminated header: NUL at offset %ld\00", align 1
@FSCK_MSG_UNTERMINATED_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unterminated header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.object*, %struct.fsck_options*)* @verify_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_headers(i8* %0, i64 %1, %struct.object* %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object*, align 8
  %9 = alloca %struct.fsck_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.object* %2, %struct.object** %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %44 [
    i32 0, label %23
    i32 10, label %29
  ]

23:                                               ; preds = %17
  %24 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %25 = load %struct.object*, %struct.object** %8, align 8
  %26 = load i32, i32* @FSCK_MSG_NUL_IN_HEADER, align 4
  %27 = load i64, i64* %11, align 8
  %28 = call i32 (%struct.fsck_options*, %struct.object*, i32, i8*, ...) @report(%struct.fsck_options* %24, %struct.object* %25, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 %28, i32* %5, align 4
  br label %65

29:                                               ; preds = %17
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %65

43:                                               ; preds = %34, %29
  br label %44

44:                                               ; preds = %43, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %11, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %65

60:                                               ; preds = %51, %48
  %61 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %62 = load %struct.object*, %struct.object** %8, align 8
  %63 = load i32, i32* @FSCK_MSG_UNTERMINATED_HEADER, align 4
  %64 = call i32 (%struct.fsck_options*, %struct.object*, i32, i8*, ...) @report(%struct.fsck_options* %61, %struct.object* %62, i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %59, %42, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @report(%struct.fsck_options*, %struct.object*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
