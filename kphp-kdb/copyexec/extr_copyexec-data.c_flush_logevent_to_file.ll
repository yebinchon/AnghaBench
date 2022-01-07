; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_flush_logevent_to_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_flush_logevent_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffered_logevent = type { i32* }

@fd_transaction_logevents = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%d bytes to logevent file from tr%d was written (%.4s)\0A\00", align 1
@cur_transaction_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffered_logevent*)* @flush_logevent_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_logevent_to_file(%struct.buffered_logevent* %0) #0 {
  %2 = alloca %struct.buffered_logevent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buffered_logevent* %0, %struct.buffered_logevent** %2, align 8
  %6 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %7 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @memcpy(i32* %3, i32* %8, i32 4)
  %10 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %11 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  %14 = ptrtoint i32* %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @compute_crc32(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %18 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = call i32 @memcpy(i32* %20, i32* %4, i32 4)
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i32, i32* @fd_transaction_logevents, align 4
  %26 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %27 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @write(i32 %25, i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %24, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @cur_transaction_id, align 4
  %48 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %49 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i8* %52)
  %54 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %55 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load %struct.buffered_logevent*, %struct.buffered_logevent** %2, align 8
  %59 = getelementptr inbounds %struct.buffered_logevent, %struct.buffered_logevent* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @compute_crc32(i32, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
