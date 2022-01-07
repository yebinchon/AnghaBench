; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_msg_entry_is_remote.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_msg_entry_is_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_msg_entry = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_msg_entry*, %struct.TYPE_6__*)* @msg_entry_is_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_entry_is_remote(%struct.merge_msg_entry* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_msg_entry*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.merge_msg_entry*, align 8
  store %struct.merge_msg_entry* %0, %struct.merge_msg_entry** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %4, align 8
  %8 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %4, align 8
  %13 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %4, align 8
  %20 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %18
  %26 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %27 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %4, align 8
  %28 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = call i64 @git__strncmp(i32 %26, i32* %31, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call %struct.merge_msg_entry* @git_vector_get(%struct.TYPE_6__* %43, i32 0)
  store %struct.merge_msg_entry* %44, %struct.merge_msg_entry** %6, align 8
  %45 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %6, align 8
  %46 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %4, align 8
  %51 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @git__strcmp(i32* %49, i32* %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %25, %18, %11, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %42, %41
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @git__strncmp(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.merge_msg_entry* @git_vector_get(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @git__strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
