; ModuleID = '/home/carl/AnghaBench/git/extr_lockfile.c_get_locked_file_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_lockfile.c_get_locked_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.lock_file = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@LOCK_SUFFIX_LEN = common dso_local global i64 0, align 8
@LOCK_SUFFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"get_locked_file_path() called for malformed lock object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_locked_file_path(%struct.lock_file* %0) #0 {
  %2 = alloca %struct.lock_file*, align 8
  %3 = alloca %struct.strbuf, align 8
  store %struct.lock_file* %0, %struct.lock_file** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %5 = load %struct.lock_file*, %struct.lock_file** %2, align 8
  %6 = getelementptr inbounds %struct.lock_file, %struct.lock_file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_tempfile_path(i32 %7)
  %9 = call i32 @strbuf_addstr(%struct.strbuf* %3, i32 %8)
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LOCK_SUFFIX_LEN, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %16, %18
  %20 = load i64, i64* @LOCK_SUFFIX_LEN, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i32, i32* @LOCK_SUFFIX, align 4
  %23 = call i64 @strcmp(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14, %1
  %26 = call i32 @BUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LOCK_SUFFIX_LEN, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %3, i64 %31)
  %33 = call i8* @strbuf_detach(%struct.strbuf* %3, i32* null)
  ret i8* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @get_tempfile_path(i32) #2

declare dso_local i64 @strcmp(i64, i32) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
