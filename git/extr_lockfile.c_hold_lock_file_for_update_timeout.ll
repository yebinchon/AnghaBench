; ModuleID = '/home/carl/AnghaBench/git/extr_lockfile.c_hold_lock_file_for_update_timeout.c'
source_filename = "/home/carl/AnghaBench/git/extr_lockfile.c_hold_lock_file_for_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.lock_file = type { i32 }

@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOCK_REPORT_ON_ERROR = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hold_lock_file_for_update_timeout(%struct.lock_file* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.lock_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 4
  store %struct.lock_file* %0, %struct.lock_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.lock_file*, %struct.lock_file** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @lock_file_timeout(%struct.lock_file* %11, i8* %12, i32 %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @unable_to_lock_die(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LOCK_REPORT_ON_ERROR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @unable_to_lock_message(i8* %34, i32 %35, %struct.strbuf* %10)
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %41

41:                                               ; preds = %32, %27
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @lock_file_timeout(%struct.lock_file*, i8*, i32, i64) #1

declare dso_local i32 @unable_to_lock_die(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unable_to_lock_message(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
