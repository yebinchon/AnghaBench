; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random_random_dev_open.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random_random_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@randombytes_internal_random_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @randombytes_internal_random_random_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_internal_random_random_dev_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_internal_random_random_dev_open.devices, i64 0, i64 0), i8*** %3, align 8
  br label %5

5:                                                ; preds = %40, %0
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @fstat(i32 %13, %struct.stat* %2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @S_ISNAM(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISCHR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %1, align 4
  br label %46

28:                                               ; preds = %21, %12
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @close(i32 %29)
  br label %37

31:                                               ; preds = %5
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %40

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i8**, i8*** %3, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %3, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %5, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @EIO, align 8
  store i64 %45, i64* @errno, align 8
  store i32 -1, i32* %1, align 4
  br label %46

46:                                               ; preds = %44, %26
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISNAM(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
