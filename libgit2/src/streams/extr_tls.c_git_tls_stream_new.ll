; ModuleID = '/home/carl/AnghaBench/libgit2/src/streams/extr_tls.c_git_tls_stream_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/streams/extr_tls.c_git_tls_stream_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32**, i8*, i8*)*, i32 }

@GIT_STREAM_TLS = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_SSL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"there is no TLS stream available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tls_stream_new(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32**, i8*, i8*)*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i32**, i8*, i8*)* null, i32 (i32**, i8*, i8*)** %8, align 8
  %11 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = phi i1 [ false, %14 ], [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @GIT_STREAM_TLS, align 4
  %25 = call i32 @git_stream_registry_lookup(%struct.TYPE_3__* %9, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %29 = load i32 (i32**, i8*, i8*)*, i32 (i32**, i8*, i8*)** %28, align 8
  store i32 (i32**, i8*, i8*)* %29, i32 (i32**, i8*, i8*)** %8, align 8
  br label %38

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GIT_ENOTFOUND, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32 (i32**, i8*, i8*)*, i32 (i32**, i8*, i8*)** %8, align 8
  %40 = icmp ne i32 (i32**, i8*, i8*)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @GIT_ERROR_SSL, align 4
  %43 = call i32 @git_error_set(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

44:                                               ; preds = %38
  %45 = load i32 (i32**, i8*, i8*)*, i32 (i32**, i8*, i8*)** %8, align 8
  %46 = load i32**, i32*** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 %45(i32** %46, i8* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %41, %35
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_stream_registry_lookup(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
