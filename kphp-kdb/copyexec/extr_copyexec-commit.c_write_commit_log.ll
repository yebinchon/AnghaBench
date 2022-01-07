; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_write_commit_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_write_commit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@COMMIT_LOG_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/.commit.log\00", align 1
@transaction_dirname = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"transaction_id\09%d\0Acommitted_transaction_size\09%u\0Aaux_binlog_path\09%s\0A\00", align 1
@transactions = common dso_local global i32 0, align 4
@committed_transaction_size = common dso_local global i32 0, align 4
@binlog_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_commit_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_commit_log() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @COMMIT_LOG_BUFF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = load i8*, i8** @transaction_dirname, align 8
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_WRONLY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_EXCL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %9, i32 %26, i32 416)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @COMMIT_LOG_BUFF_SIZE, align 4
  %29 = load i32, i32* @transactions, align 4
  %30 = load i32, i32* @committed_transaction_size, align 4
  %31 = load i8*, i8** @binlog_name, align 8
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @COMMIT_LOG_BUFF_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %0
  %38 = load i32, i32* @COMMIT_LOG_BUFF_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @write(i32 %41, i8* %12, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
