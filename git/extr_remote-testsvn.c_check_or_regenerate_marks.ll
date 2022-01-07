; ModuleID = '/home/carl/AnghaBench/git/extr_remote-testsvn.c_check_or_regenerate_marks.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-testsvn.c_check_or_regenerate_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@notes_ref = common dso_local global i32 0, align 4
@marksfilename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c":%d \00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_or_regenerate_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_or_regenerate_marks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load i32, i32* @notes_ref, align 4
  %14 = call i32 @init_notes(i32* null, i32 %13, i32* null, i32 0)
  %15 = load i32, i32* @marksfilename, align 4
  %16 = call i32* @fopen(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = call i32 (...) @regenerate_marks()
  %21 = load i32, i32* @marksfilename, align 4
  %22 = call i32* @xfopen(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @fclose(i32* %23)
  br label %52

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %43, %25
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @strbuf_getline_lf(%struct.strbuf* %5, i32* %29)
  %31 = load i64, i64* @EOF, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @starts_with(i32 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %33
  br label %28

44:                                               ; preds = %40, %28
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 (...) @regenerate_marks()
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %19
  %53 = call i32 @free_notes(i32* null)
  %54 = call i32 @strbuf_release(%struct.strbuf* %4)
  %55 = call i32 @strbuf_release(%struct.strbuf* %5)
  br label %56

56:                                               ; preds = %52, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_notes(i32*, i32, i32*, i32) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @regenerate_marks(...) #2

declare dso_local i32* @xfopen(i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i64 @starts_with(i32, i32) #2

declare dso_local i32 @free_notes(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
