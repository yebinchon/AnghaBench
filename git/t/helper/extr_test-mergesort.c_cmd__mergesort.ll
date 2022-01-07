; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-mergesort.c_cmd__mergesort.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-mergesort.c_cmd__mergesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.line = type { i8*, %struct.line* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@get_next = common dso_local global i32 0, align 4
@set_next = common dso_local global i32 0, align 4
@compare_strings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__mergesort(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.line* null, %struct.line** %6, align 8
  store %struct.line* null, %struct.line** %7, align 8
  %9 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* @stdin, align 4
  %12 = call i64 @strbuf_getwholeline(%struct.strbuf* %8, i32 %11, i8 signext 10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %37

15:                                               ; preds = %10
  %16 = call %struct.line* @xmalloc(i32 16)
  store %struct.line* %16, %struct.line** %5, align 8
  %17 = call i8* @strbuf_detach(%struct.strbuf* %8, i32* null)
  %18 = load %struct.line*, %struct.line** %5, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.line*, %struct.line** %6, align 8
  %21 = icmp ne %struct.line* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.line*, %struct.line** %6, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i32 0, i32 1
  %25 = load %struct.line*, %struct.line** %24, align 8
  %26 = load %struct.line*, %struct.line** %5, align 8
  %27 = getelementptr inbounds %struct.line, %struct.line* %26, i32 0, i32 1
  store %struct.line* %25, %struct.line** %27, align 8
  %28 = load %struct.line*, %struct.line** %5, align 8
  %29 = load %struct.line*, %struct.line** %6, align 8
  %30 = getelementptr inbounds %struct.line, %struct.line* %29, i32 0, i32 1
  store %struct.line* %28, %struct.line** %30, align 8
  br label %35

31:                                               ; preds = %15
  %32 = load %struct.line*, %struct.line** %5, align 8
  %33 = getelementptr inbounds %struct.line, %struct.line* %32, i32 0, i32 1
  store %struct.line* null, %struct.line** %33, align 8
  %34 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %34, %struct.line** %7, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %36, %struct.line** %6, align 8
  br label %10

37:                                               ; preds = %14
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = load i32, i32* @get_next, align 4
  %40 = load i32, i32* @set_next, align 4
  %41 = load i32, i32* @compare_strings, align 4
  %42 = call %struct.line* @llist_mergesort(%struct.line* %38, i32 %39, i32 %40, i32 %41)
  store %struct.line* %42, %struct.line** %7, align 8
  br label %43

43:                                               ; preds = %46, %37
  %44 = load %struct.line*, %struct.line** %7, align 8
  %45 = icmp ne %struct.line* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.line*, %struct.line** %7, align 8
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.line*, %struct.line** %7, align 8
  %52 = getelementptr inbounds %struct.line, %struct.line* %51, i32 0, i32 1
  %53 = load %struct.line*, %struct.line** %52, align 8
  store %struct.line* %53, %struct.line** %7, align 8
  br label %43

54:                                               ; preds = %43
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32, i8 signext) #2

declare dso_local %struct.line* @xmalloc(i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local %struct.line* @llist_mergesort(%struct.line*, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
