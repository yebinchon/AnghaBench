; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_dump.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64, i32 }

@RM_INIT_MAGIC = common dso_local global i64 0, align 8
@RM_TMP_MAGIC = common dso_local global i64 0, align 8
@rwm_dump.R = internal global [10004 x i8] zeroinitializer, align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%d bytes not printed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_dump(%struct.raw_message* %0) #0 {
  %2 = alloca %struct.raw_message*, align 8
  %3 = alloca %struct.raw_message, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %2, align 8
  %6 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %7 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RM_INIT_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %13 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RM_TMP_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %22 = call i32 @rwm_clone(%struct.raw_message* %3, %struct.raw_message* %21)
  %23 = call i32 @rwm_fetch_data(%struct.raw_message* %3, i8* getelementptr inbounds ([10004 x i8], [10004 x i8]* @rwm_dump.R, i64 0, i64 0), i32 10004)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 10000
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 10000, %26 ], [ %28, %27 ]
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* getelementptr inbounds ([10004 x i8], [10004 x i8]* @rwm_dump.R, i64 0, i64 0), i64 %32
  %34 = call i32 @hexdump(i8* getelementptr inbounds ([10004 x i8], [10004 x i8]* @rwm_dump.R, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %41 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %29
  %47 = call i32 @rwm_free(%struct.raw_message* %3)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_clone(%struct.raw_message*, %struct.raw_message*) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, i8*, i32) #1

declare dso_local i32 @hexdump(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
