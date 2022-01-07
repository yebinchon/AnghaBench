; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_os_tmpdir.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv_os_tmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TEMPDIR\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_tmpdir(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %10, %2
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = call i32 (i8*, ...) bitcast (i32 (...)* @getenv to i32 (i8*, ...)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %56

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @getenv to i32 (i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %56

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = call i32 (i8*, ...) bitcast (i32 (...)* @getenv to i32 (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %56

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = call i32 (i8*, ...) bitcast (i32 (...)* @getenv to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %56

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %56

56:                                               ; preds = %55, %53, %44, %35, %26
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  %66 = load i64*, i64** %5, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %67, i32* %3, align 4
  br label %93

68:                                               ; preds = %56
  %69 = load i64, i64* %7, align 8
  %70 = icmp ugt i64 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %79, %71, %68
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  %87 = call i32 @memcpy(i8* %83, i8* %84, i64 %86)
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i64, i64* %7, align 8
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %82, %63, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @getenv(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
