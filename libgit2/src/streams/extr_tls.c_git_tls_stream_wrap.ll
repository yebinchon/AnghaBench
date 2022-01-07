; ModuleID = '/home/carl/AnghaBench/libgit2/src/streams/extr_tls.c_git_tls_stream_wrap.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/streams/extr_tls.c_git_tls_stream_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32**, i32*, i8*)*, i32 }

@GIT_STREAM_TLS = common dso_local global i32 0, align 4
@GIT_ERROR_SSL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"there is no TLS stream available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_tls_stream_wrap(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32**, i32*, i8*)*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i32**, i32*, i8*)* null, i32 (i32**, i32*, i8*)** %8, align 8
  %10 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @GIT_STREAM_TLS, align 4
  %21 = call i64 @git_stream_registry_lookup(%struct.TYPE_3__* %9, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %25 = load i32 (i32**, i32*, i8*)*, i32 (i32**, i32*, i8*)** %24, align 8
  store i32 (i32**, i32*, i8*)* %25, i32 (i32**, i32*, i8*)** %8, align 8
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32 (i32**, i32*, i8*)*, i32 (i32**, i32*, i8*)** %8, align 8
  %29 = icmp ne i32 (i32**, i32*, i8*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @GIT_ERROR_SSL, align 4
  %32 = call i32 @git_error_set(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i32 (i32**, i32*, i8*)*, i32 (i32**, i32*, i8*)** %8, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 %34(i32** %35, i32* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_stream_registry_lookup(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
