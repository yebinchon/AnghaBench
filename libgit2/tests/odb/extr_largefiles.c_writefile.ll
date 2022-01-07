; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_writefile.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_writefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@writefile.stream = internal global i32* null, align 8
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, world.\0A\00", align 1
@odb = common dso_local global i32 0, align 4
@LARGEFILE_SIZE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @writefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writefile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 3041
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = call i32 @git_buf_puts(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %4, align 8
  br label %6

15:                                               ; preds = %6
  %16 = load i32, i32* @odb, align 4
  %17 = load i32, i32* @LARGEFILE_SIZE, align 4
  %18 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %19 = call i32 @git_odb_open_wstream(i32** @writefile.stream, i32 %16, i32 %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %32, %15
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %22, 126103
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** @writefile.stream, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @git_odb_stream_write(i32* %25, i32 %27, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load i32*, i32** %2, align 8
  %37 = load i32*, i32** @writefile.stream, align 8
  %38 = call i32 @git_odb_stream_finalize_write(i32* %36, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** @writefile.stream, align 8
  %41 = call i32 @git_odb_stream_free(i32* %40)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @git_odb_open_wstream(i32**, i32, i32, i32) #2

declare dso_local i32 @git_odb_stream_write(i32*, i32, i32) #2

declare dso_local i32 @git_odb_stream_finalize_write(i32*, i32*) #2

declare dso_local i32 @git_odb_stream_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
