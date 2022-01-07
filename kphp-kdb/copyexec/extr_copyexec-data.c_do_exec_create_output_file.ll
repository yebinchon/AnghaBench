; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_exec_create_output_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_exec_create_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c".c%d.%s.%s\00", align 1
@cur_transaction_hash = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"create_output_file: creat (%s, O_RDWR | O_CREAT | O_TRUNC | O_EXCL, 0000) failed. %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"create_output_file: unlink (%s) failed. %m\0A\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"create_output_file: fcntl (%d, F_SETFD, FD_CLOEXEC) failed. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_exec_create_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exec_create_output_file(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** @cur_transaction_hash, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @snprintf(i8* %8, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %10, i8* %11)
  %13 = icmp slt i32 %12, 128
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i8* %16, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %29 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %3, align 4
  br label %50

30:                                               ; preds = %2
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %32 = call i64 @unlink(i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %36 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = call i32 @fd_close(i32* %7)
  store i32 -2, i32* %3, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @F_SETFD, align 4
  %41 = load i32, i32* @FD_CLOEXEC, align 4
  %42 = call i64 @fcntl(i32 %39, i32 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 @fd_close(i32* %7)
  store i32 -3, i32* %3, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %44, %34, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @fd_close(i32*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
