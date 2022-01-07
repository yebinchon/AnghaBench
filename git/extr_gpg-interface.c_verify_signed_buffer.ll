; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_verify_signed_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_verify_signed_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32 }
%struct.strbuf = type { i32 }
%struct.gpg_format = type { i32, i32 }
%struct.tempfile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c".git_vtag_tmpXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not create temporary file\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed writing detached signature to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad signature '%s'\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"--status-fd=1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--verify\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"\0A[GNUPG:] GOODSIG \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_signed_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.strbuf* %4, %struct.strbuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca %struct.child_process, align 4
  %15 = alloca %struct.gpg_format*, align 8
  %16 = alloca %struct.tempfile*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store %struct.strbuf* %5, %struct.strbuf** %13, align 8
  %19 = bitcast %struct.child_process* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = call %struct.tempfile* @mks_tempfile_t(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.tempfile* %21, %struct.tempfile** %16, align 8
  %22 = load %struct.tempfile*, %struct.tempfile** %16, align 8
  %23 = icmp ne %struct.tempfile* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (i32, ...) @error_errno(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %98

27:                                               ; preds = %6
  %28 = load %struct.tempfile*, %struct.tempfile** %16, align 8
  %29 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @write_in_full(i32 %30, i8* %31, i64 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.tempfile*, %struct.tempfile** %16, align 8
  %37 = call i64 @close_tempfile_gently(%struct.tempfile* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %27
  %40 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.tempfile*, %struct.tempfile** %16, align 8
  %42 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, ...) @error_errno(i32 %40, i32 %44)
  %46 = call i32 @delete_tempfile(%struct.tempfile** %16)
  store i32 -1, i32* %7, align 4
  br label %98

47:                                               ; preds = %35
  %48 = load i8*, i8** %10, align 8
  %49 = call %struct.gpg_format* @get_format_by_sig(i8* %48)
  store %struct.gpg_format* %49, %struct.gpg_format** %15, align 8
  %50 = load %struct.gpg_format*, %struct.gpg_format** %15, align 8
  %51 = icmp ne %struct.gpg_format* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %14, i32 0, i32 0
  %57 = load %struct.gpg_format*, %struct.gpg_format** %15, align 8
  %58 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @argv_array_push(i32* %56, i32 %59)
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %14, i32 0, i32 0
  %62 = load %struct.gpg_format*, %struct.gpg_format** %15, align 8
  %63 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @argv_array_pushv(i32* %61, i32 %64)
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %14, i32 0, i32 0
  %67 = load %struct.tempfile*, %struct.tempfile** %16, align 8
  %68 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @argv_array_pushl(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %72 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %73 = icmp ne %struct.strbuf* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %55
  store %struct.strbuf* %18, %struct.strbuf** %13, align 8
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* @SIGPIPE, align 4
  %77 = load i32, i32* @SIG_IGN, align 4
  %78 = call i32 @sigchain_push(i32 %76, i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %82 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %83 = call i32 @pipe_command(%struct.child_process* %14, i8* %79, i64 %80, %struct.strbuf* %81, i32 0, %struct.strbuf* %82, i32 0)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* @SIGPIPE, align 4
  %85 = call i32 @sigchain_pop(i32 %84)
  %86 = call i32 @delete_tempfile(%struct.tempfile** %16)
  %87 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strstr(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %17, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %17, align 4
  %96 = call i32 @strbuf_release(%struct.strbuf* %18)
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %75, %39, %24
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.tempfile* @mks_tempfile_t(i8*) #2

declare dso_local i32 @error_errno(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

declare dso_local i64 @close_tempfile_gently(%struct.tempfile*) #2

declare dso_local i32 @delete_tempfile(%struct.tempfile**) #2

declare dso_local %struct.gpg_format* @get_format_by_sig(i8*) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i32 @argv_array_push(i32*, i32) #2

declare dso_local i32 @argv_array_pushv(i32*, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32, i8*, i32*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @pipe_command(%struct.child_process*, i8*, i64, %struct.strbuf*, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @strstr(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
