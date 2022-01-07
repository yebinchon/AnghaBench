; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_userpass_plaintext_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_userpass_plaintext_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, i8* }

@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4
@plaintext_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cred_userpass_plaintext_new(%struct.TYPE_8__** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %10 = icmp ne %struct.TYPE_8__** %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i1 [ false, %11 ], [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call %struct.TYPE_7__* @git__malloc(i32 24)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %22)
  %24 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @plaintext_free, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @git__strdup(i8* %32)
  %34 = bitcast i8* %33 to %struct.TYPE_7__*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %17
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = call i32 @git__free(%struct.TYPE_7__* %42)
  store i32 -1, i32* %4, align 4
  br label %64

44:                                               ; preds = %17
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @git__strdup(i8* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @git__free(%struct.TYPE_7__* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = call i32 @git__free(%struct.TYPE_7__* %58)
  store i32 -1, i32* %4, align 4
  br label %64

60:                                               ; preds = %44
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %53, %41
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
