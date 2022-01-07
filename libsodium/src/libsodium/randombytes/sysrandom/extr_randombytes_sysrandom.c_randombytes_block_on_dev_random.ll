; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/sysrandom/extr_randombytes_sysrandom.c_randombytes_block_on_dev_random.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/sysrandom/extr_randombytes_sysrandom.c_randombytes_block_on_dev_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @randombytes_block_on_dev_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_block_on_dev_random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pollfd, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @O_RDONLY, align 4
  %6 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @POLLIN, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %2, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %2, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %31, %10
  %17 = call i32 @poll(%struct.pollfd* %2, i32 1, i32 -1)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EAGAIN, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i1 [ false, %18 ], [ %30, %29 ]
  br i1 %32, label %16, label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i64, i64* @EIO, align 8
  store i64 %39, i64* @errno, align 8
  store i32 -1, i32* %1, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @close(i32 %41)
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %40, %36, %9
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
