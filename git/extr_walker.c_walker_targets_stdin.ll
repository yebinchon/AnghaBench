; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_walker_targets_stdin.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_walker_targets_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walker_targets_stdin(i8*** %0, i8*** %1) #0 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8*** %0, i8**** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load i8***, i8**** %3, align 8
  store i8** null, i8*** %11, align 8
  %12 = load i8***, i8**** %4, align 8
  store i8** null, i8*** %12, align 8
  br label %13

13:                                               ; preds = %2, %50
  store i8* null, i8** %8, align 8
  %14 = load i32, i32* @stdin, align 4
  %15 = call i64 @strbuf_getline_lf(%struct.strbuf* %7, i32 %14)
  %16 = load i64, i64* @EOF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %67

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 9)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8 0, i8* %27, align 1
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 64, %39 ]
  store i32 %41, i32* %6, align 4
  %42 = load i8***, i8**** %3, align 8
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @REALLOC_ARRAY(i8** %43, i32 %44)
  %46 = load i8***, i8**** %4, align 8
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @REALLOC_ARRAY(i8** %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %29
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @xstrdup(i8* %51)
  %53 = load i8***, i8**** %3, align 8
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %52, i8** %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @xstrdup_or_null(i8* %58)
  %60 = load i8***, i8**** %4, align 8
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %13

67:                                               ; preds = %18
  %68 = call i32 @strbuf_release(%struct.strbuf* %7)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @REALLOC_ARRAY(i8**, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @xstrdup_or_null(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
