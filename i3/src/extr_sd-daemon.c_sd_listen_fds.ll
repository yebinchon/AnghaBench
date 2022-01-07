; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_listen_fds.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_listen_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"LISTEN_PID\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"LISTEN_FDS\00", align 1
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_listen_fds(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %6, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %103

12:                                               ; preds = %1
  store i32 0, i32* @errno, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strtoul(i8* %13, i8** %6, i32 10)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %103

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = icmp ule i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %23, %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %103

34:                                               ; preds = %28
  %35 = call i64 (...) @getpid()
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %103

39:                                               ; preds = %34
  %40 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %103

43:                                               ; preds = %39
  store i32 0, i32* @errno, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strtoul(i8* %44, i8** %6, i32 10)
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %103

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %103

62:                                               ; preds = %54
  %63 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %97, %62
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @F_GETFD, align 4
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @errno, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %103

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @FD_CLOEXEC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %97

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @F_SETFD, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @FD_CLOEXEC, align 4
  %90 = or i32 %88, %89
  %91 = call i32 (i32, i32, ...) @fcntl(i32 %86, i32 %87, i32 %90)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @errno, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %64

100:                                              ; preds = %64
  %101 = load i64, i64* %7, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %93, %76, %59, %48, %42, %38, %31, %17, %11
  %104 = load i32, i32* %2, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %108 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
