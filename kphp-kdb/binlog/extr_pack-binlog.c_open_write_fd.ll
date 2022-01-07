; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_pack-binlog.c_open_write_fd.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_pack-binlog.c_open_write_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffered_write = common dso_local global i32 0, align 4
@write_filename = common dso_local global i8* null, align 8
@Buff = common dso_local global i64 0, align 8
@BUFFSIZE = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@rptr = common dso_local global i64 0, align 8
@write_off = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"open (%s, O_CREAT | O_WRONLY | O_EXCL, 0640) failed. %m\0A\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot lock file '%s' for writing\0A\00", align 1
@write_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @open_write_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_write_fd(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* @buffered_write, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** @write_filename, align 8
  %10 = load i64, i64* @Buff, align 8
  %11 = load i64, i64* @BUFFSIZE, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* @wptr, align 8
  store i64 %12, i64* @rptr, align 8
  store i64 0, i64* @write_off, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = load i32, i32* @O_WRONLY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_EXCL, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i8* %16, i32 %21, i32 416)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %4, align 4
  br label %54

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @F_WRLCK, align 4
  %35 = call i64 @lock_whole_file(i32 %33, i32 %34)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  store i32 -1, i32* %4, align 4
  br label %54

46:                                               ; preds = %28
  br label %52

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* @write_fd, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %37, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
