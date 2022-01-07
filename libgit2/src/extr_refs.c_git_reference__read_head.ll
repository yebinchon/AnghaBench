; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__read_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__read_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GIT_SYMREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference__read_head(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @git_futils_readbuffer(%struct.TYPE_7__* %7, i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %51

15:                                               ; preds = %3
  %16 = call i32 @git_buf_rtrim(%struct.TYPE_7__* %7)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @GIT_SYMREF, align 4
  %20 = load i32, i32* @GIT_SYMREF, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = call i64 @git__strncmp(i64 %18, i32 %19, i64 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @GIT_SYMREF, align 4
  %28 = call i64 @strlen(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @git_buf_consume(%struct.TYPE_7__* %7, i64 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @git_path_basename(i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32* @git_reference__alloc_symbolic(i8* %33, i64 %35)
  %37 = load i32**, i32*** %4, align 8
  store i32* %36, i32** %37, align 8
  %38 = icmp eq i32* %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  br label %51

40:                                               ; preds = %24
  br label %50

41:                                               ; preds = %15
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @git_reference_lookup(i32** %42, i32* %43, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %48, %39, %14
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @git__free(i8* %52)
  %54 = call i32 @git_buf_dispose(%struct.TYPE_7__* %7)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_7__*) #2

declare dso_local i64 @git__strncmp(i64, i32, i64) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @git_buf_consume(%struct.TYPE_7__*, i64) #2

declare dso_local i8* @git_path_basename(i8*) #2

declare dso_local i32* @git_reference__alloc_symbolic(i8*, i64) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i64) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
