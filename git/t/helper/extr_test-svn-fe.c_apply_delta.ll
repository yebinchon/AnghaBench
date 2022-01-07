; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-svn-fe.c_apply_delta.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-svn-fe.c_apply_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_buffer = type { i32 }
%struct.sliding_view = type { i32 }

@LINE_BUFFER_INIT = common dso_local global %struct.line_buffer zeroinitializer, align 4
@test_svnfe_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot open preimage\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot open delta\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot close preimage\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot close delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @apply_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_delta(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.line_buffer, align 4
  %7 = alloca %struct.line_buffer, align 4
  %8 = alloca %struct.sliding_view, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.line_buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.line_buffer* @LINE_BUFFER_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.line_buffer* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.line_buffer* @LINE_BUFFER_INIT to i8*), i64 4, i1 false)
  %11 = call i32 @SLIDING_VIEW_INIT(%struct.line_buffer* %6, i32 -1)
  %12 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @test_svnfe_usage, align 4
  %17 = call i32 @usage(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @buffer_init(%struct.line_buffer* %6, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @die_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @buffer_init(%struct.line_buffer* %7, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @die_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strtoumax(i8* %37, i32* null, i32 0)
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @stdout, align 4
  %41 = call i64 @svndiff0_apply(%struct.line_buffer* %7, i32 %39, %struct.sliding_view* %8, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %57

44:                                               ; preds = %34
  %45 = call i64 @buffer_deinit(%struct.line_buffer* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i64 @buffer_deinit(%struct.line_buffer* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @die_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.sliding_view, %struct.sliding_view* %8, i32 0, i32 0
  %56 = call i32 @strbuf_release(i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SLIDING_VIEW_INIT(%struct.line_buffer*, i32) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i64 @buffer_init(%struct.line_buffer*, i8*) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i64 @svndiff0_apply(%struct.line_buffer*, i32, %struct.sliding_view*, i32) #2

declare dso_local i64 @strtoumax(i8*, i32*, i32) #2

declare dso_local i64 @buffer_deinit(%struct.line_buffer*) #2

declare dso_local i32 @strbuf_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
