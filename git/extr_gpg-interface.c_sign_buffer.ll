; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_sign_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_sign_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.TYPE_2__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@use_format = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"--status-fd=2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-bsau\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A[GNUPG:] SIG_CREATED \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"gpg failed to sign the data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sign_buffer(%struct.strbuf* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.child_process, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.strbuf, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @use_format, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @argv_array_pushl(i32* %16, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32* null)
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* @SIGPIPE, align 4
  %26 = load i32, i32* @SIG_IGN, align 4
  %27 = call i32 @sigchain_push(i32 %25, i32 %26)
  %28 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %35 = call i32 @pipe_command(%struct.child_process* %8, i8* %30, i64 %33, %struct.strbuf* %34, i32 1024, %struct.strbuf* %13, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @SIGPIPE, align 4
  %37 = call i32 @sigchain_pop(i32 %36)
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strstr(i8* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = call i32 @strbuf_release(%struct.strbuf* %13)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @error(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %96

52:                                               ; preds = %3
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %11, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %89, %52
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %54
  %61 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 13
  br i1 %68, label %69, label %88

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %79, i8* %84, align 1
  br label %85

85:                                               ; preds = %73, %69
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %85, %60
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %54

92:                                               ; preds = %54
  %93 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @strbuf_setlen(%struct.strbuf* %93, i64 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %49
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(i32*, i32, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @pipe_command(%struct.child_process*, i8*, i64, %struct.strbuf*, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
