; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_key_from_agent.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_key_from_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32*, %struct.TYPE_7__* }

@GIT_CREDTYPE_SSH_KEY = common dso_local global i32 0, align 4
@ssh_key_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cred_ssh_key_from_agent(%struct.TYPE_8__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %10 = icmp ne %struct.TYPE_8__** %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %16)
  %18 = load i32, i32* @GIT_CREDTYPE_SSH_KEY, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ssh_key_free, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.TYPE_7__* @git__strdup(i8* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %38, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @git__strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
