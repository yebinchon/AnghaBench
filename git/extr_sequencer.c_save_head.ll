; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_save_head.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_save_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i32, i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"could not lock HEAD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to finalize '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @save_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_head(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lock_file, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.lock_file* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = call i32 (...) @git_path_head_file()
  %11 = call i32 @hold_lock_file_for_update(%struct.lock_file* %4, i32 %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i32, ...) @error_errno(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @write_in_full(i32 %20, i32 %22, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = call i32 @strbuf_release(%struct.strbuf* %5)
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 (...) @git_path_head_file()
  %32 = call i32 (i32, ...) @error_errno(i32 %30, i32 %31)
  %33 = call i32 @rollback_lock_file(%struct.lock_file* %4)
  store i32 -1, i32* %2, align 4
  br label %42

34:                                               ; preds = %17
  %35 = call i64 @commit_lock_file(%struct.lock_file* %4)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 (...) @git_path_head_file()
  %40 = call i32 @error(i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %29, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i32, i32) #2

declare dso_local i32 @git_path_head_file(...) #2

declare dso_local i32 @error_errno(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @error(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
