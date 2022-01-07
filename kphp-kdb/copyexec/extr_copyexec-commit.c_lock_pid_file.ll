; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_lock_pid_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_lock_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c".copyexec-commit.pid\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@pid_fd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"creating %s failed. %m\0A\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"lock %s failed. %m\0A\00", align 1
@pid_filename = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lock_pid_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_pid_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = load i32, i32* @O_WRONLY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @open(i8* %11, i32 %23, i32 432)
  store i64 %24, i64* @pid_fd, align 8
  %25 = load i64, i64* @pid_fd, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

29:                                               ; preds = %1
  %30 = load i64, i64* @pid_fd, align 8
  %31 = load i32, i32* @F_WRLCK, align 4
  %32 = call i64 @lock_whole_file(i64 %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  store i32 -2, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

36:                                               ; preds = %29
  %37 = call i32 @strdup(i8* %11)
  store i32 %37, i32* @pid_filename, align 4
  %38 = load i32, i32* @PATH_MAX, align 4
  %39 = call i64 (...) @getpid()
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* @pid_fd, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @write(i64 %46, i8* %11, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %36, %34, %27
  %54 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @open(i8*, i32, i32) #2

declare dso_local i32 @kprintf(i8*, i8*) #2

declare dso_local i64 @lock_whole_file(i64, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32 @write(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
