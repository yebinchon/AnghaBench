; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_lock_pid_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_lock_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@szPidFilename = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@pid_fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"creating %s failed. %m\0A\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"lock %s failed. %m\0A\00", align 1
@pid_filename = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_pid_file(i8* %0) #0 {
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
  %14 = load i8*, i8** @szPidFilename, align 8
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_EXCL, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @open(i8* %11, i32 %24, i32 432)
  store i64 %25, i64* @pid_fd, align 8
  %26 = load i64, i64* @pid_fd, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %54

30:                                               ; preds = %1
  %31 = load i64, i64* @pid_fd, align 8
  %32 = load i32, i32* @F_WRLCK, align 4
  %33 = call i64 @lock_whole_file(i64 %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  store i32 -2, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %54

37:                                               ; preds = %30
  %38 = call i32 @zstrdup(i8* %11)
  store i32 %38, i32* @pid_filename, align 4
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = call i64 (...) @getpid()
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* @pid_fd, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @write(i64 %47, i8* %11, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %37, %35, %28
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @open(i8*, i32, i32) #2

declare dso_local i32 @kprintf(i8*, i8*) #2

declare dso_local i64 @lock_whole_file(i64, i32) #2

declare dso_local i32 @zstrdup(i8*) #2

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
