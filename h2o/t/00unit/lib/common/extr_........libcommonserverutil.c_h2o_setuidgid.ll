; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonserverutil.c_h2o_setuidgid.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonserverutil.c_h2o_setuidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"getpwnam_r\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown user:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"setgid(%d) failed:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"initgroups(%s, %d) failed:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"setuid(%d) failed:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_setuidgid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca [65536 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i64 0, i64* @errno, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds [65536 x i8], [65536 x i8]* %6, i64 0, i64 0
  %9 = call i64 @getpwnam_r(i8* %7, %struct.passwd* %4, i8* %8, i32 65536, %struct.passwd** %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @h2o_perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.passwd*, %struct.passwd** %5, align 8
  %15 = icmp eq %struct.passwd* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %2, align 4
  br label %68

19:                                               ; preds = %13
  %20 = load %struct.passwd*, %struct.passwd** %5, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @setgid(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.passwd*, %struct.passwd** %5, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @strerror(i64 %30)
  %32 = call i32 (i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %31)
  store i32 -1, i32* %2, align 4
  br label %68

33:                                               ; preds = %19
  %34 = load %struct.passwd*, %struct.passwd** %5, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.passwd*, %struct.passwd** %5, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @initgroups(i32 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.passwd*, %struct.passwd** %5, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.passwd*, %struct.passwd** %5, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @strerror(i64 %50)
  %52 = call i32 (i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %49, i32 %51)
  store i32 -1, i32* %2, align 4
  br label %68

53:                                               ; preds = %33
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @setuid(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.passwd*, %struct.passwd** %5, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @errno, align 8
  %65 = call i32 @strerror(i64 %64)
  %66 = call i32 (i8*, ...) @h2o_error_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %65)
  store i32 -1, i32* %2, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %59, %42, %25, %16, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @getpwnam_r(i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @h2o_perror(i8*) #1

declare dso_local i32 @h2o_error_printf(i8*, ...) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @initgroups(i32, i64) #1

declare dso_local i64 @setuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
