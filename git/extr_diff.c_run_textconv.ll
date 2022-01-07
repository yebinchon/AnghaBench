; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_textconv.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_textconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8**, i32 }
%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.diff_tempfile = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"error reading from textconv command '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.repository*, i8*, %struct.diff_filespec*, i64*)* @run_textconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_textconv(%struct.repository* %0, i8* %1, %struct.diff_filespec* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.diff_tempfile*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i8**, align 8
  %13 = alloca %struct.child_process, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  store i8** %16, i8*** %12, align 8
  %17 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %18 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %15, align 4
  %19 = load %struct.repository*, %struct.repository** %6, align 8
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %21 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %24 = call %struct.diff_tempfile* @prepare_temp_file(%struct.repository* %19, i32 %22, %struct.diff_filespec* %23)
  store %struct.diff_tempfile* %24, %struct.diff_tempfile** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8**, i8*** %12, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %12, align 8
  store i8* %25, i8** %26, align 8
  %28 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %29 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8**, i8*** %12, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %12, align 8
  store i8* %32, i8** %33, align 8
  %35 = load i8**, i8*** %12, align 8
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i8** %37, i8*** %38, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 -1, i32* %39, align 8
  %40 = call i64 @start_command(%struct.child_process* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = call i32 (...) @remove_tempfile()
  store i8* null, i8** %5, align 8
  br label %68

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @strbuf_read(%struct.strbuf* %14, i32 %46, i32 0)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @close(i32 %54)
  %56 = call i64 @finish_command(%struct.child_process* %13)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %52
  %62 = call i32 @strbuf_release(%struct.strbuf* %14)
  %63 = call i32 (...) @remove_tempfile()
  store i8* null, i8** %5, align 8
  br label %68

64:                                               ; preds = %58
  %65 = call i32 (...) @remove_tempfile()
  %66 = load i64*, i64** %9, align 8
  %67 = call i8* @strbuf_detach(%struct.strbuf* %14, i64* %66)
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %64, %61, %42
  %69 = load i8*, i8** %5, align 8
  ret i8* %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.diff_tempfile* @prepare_temp_file(%struct.repository*, i32, %struct.diff_filespec*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @remove_tempfile(...) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
