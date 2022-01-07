; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_write_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_write_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"could not lock '%s'\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not write eol to '%s'\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to finalize '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32)* @write_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_message(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lock_file, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.lock_file* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @hold_lock_file_for_update(%struct.lock_file* %10, i8* %13, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @error_errno(i32 %18, i8* %19)
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @write_in_full(i32 %22, i8* %23, i64 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @error_errno(i32 %28, i8* %29)
  %31 = call i32 @rollback_lock_file(%struct.lock_file* %10)
  store i32 -1, i32* %5, align 4
  br label %52

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @write(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @error_errno(i32 %40, i8* %41)
  %43 = call i32 @rollback_lock_file(%struct.lock_file* %10)
  store i32 -1, i32* %5, align 4
  br label %52

44:                                               ; preds = %35, %32
  %45 = call i64 @commit_lock_file(%struct.lock_file* %10)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @error(i32 %48, i8* %49)
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47, %39, %27, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @error(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
