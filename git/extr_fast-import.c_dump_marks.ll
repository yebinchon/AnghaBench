; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_dump_marks.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_dump_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@export_marks_file = common dso_local global i32 0, align 4
@import_marks_file = common dso_local global i64 0, align 8
@import_marks_file_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to write marks file %s\00", align 1
@failure = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to write marks file %s: %s\00", align 1
@marks = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Unable to write file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_marks() #0 {
  %1 = alloca %struct.lock_file, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %struct.lock_file* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @export_marks_file, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i64, i64* @import_marks_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @import_marks_file_done, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  br label %47

14:                                               ; preds = %10, %7
  %15 = load i32, i32* @export_marks_file, align 4
  %16 = call i64 @hold_lock_file_for_update(%struct.lock_file* %1, i32 %15, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @export_marks_file, align 4
  %20 = call i32 @error_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @failure, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @failure, align 4
  br label %47

23:                                               ; preds = %14
  %24 = call i32* @fdopen_lock_file(%struct.lock_file* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %3, align 4
  %29 = call i32 @rollback_lock_file(%struct.lock_file* %1)
  %30 = load i32, i32* @export_marks_file, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %32)
  %34 = load i32, i32* @failure, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @failure, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @marks, align 4
  %39 = call i32 @dump_marks_helper(i32* %37, i32 0, i32 %38)
  %40 = call i64 @commit_lock_file(%struct.lock_file* %1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @export_marks_file, align 4
  %44 = call i32 @error_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @failure, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @failure, align 4
  br label %47

47:                                               ; preds = %13, %18, %27, %42, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @hold_lock_file_for_update(%struct.lock_file*, i32, i32) #2

declare dso_local i32 @error_errno(i8*, i32) #2

declare dso_local i32* @fdopen_lock_file(%struct.lock_file*, i8*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i32 @error(i8*, i32, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @dump_marks_helper(i32*, i32, i32) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
