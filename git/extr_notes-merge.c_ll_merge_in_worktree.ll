; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_ll_merge_in_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_ll_merge_in_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.notes_merge_pair = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to execute internal merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*, %struct.notes_merge_pair*)* @ll_merge_in_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_merge_in_worktree(%struct.notes_merge_options* %0, %struct.notes_merge_pair* %1) #0 {
  %3 = alloca %struct.notes_merge_options*, align 8
  %4 = alloca %struct.notes_merge_pair*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %3, align 8
  store %struct.notes_merge_pair* %1, %struct.notes_merge_pair** %4, align 8
  %10 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %4, align 8
  %11 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %10, i32 0, i32 3
  %12 = call i32 @read_mmblob(%struct.TYPE_10__* %6, i32* %11)
  %13 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %4, align 8
  %14 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %13, i32 0, i32 2
  %15 = call i32 @read_mmblob(%struct.TYPE_10__* %7, i32* %14)
  %16 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %4, align 8
  %17 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %16, i32 0, i32 1
  %18 = call i32 @read_mmblob(%struct.TYPE_10__* %8, i32* %17)
  %19 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %4, align 8
  %20 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %19, i32 0, i32 0
  %21 = call i32 @oid_to_hex(i32* %20)
  %22 = load %struct.notes_merge_options*, %struct.notes_merge_options** %3, align 8
  %23 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.notes_merge_options*, %struct.notes_merge_options** %3, align 8
  %26 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.notes_merge_options*, %struct.notes_merge_options** %3, align 8
  %29 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ll_merge(%struct.TYPE_11__* %5, i32 %21, %struct.TYPE_10__* %6, i32* null, %struct.TYPE_10__* %7, i32 %24, %struct.TYPE_10__* %8, i32 %27, i32 %32, i32* null)
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @free(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %2
  %50 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %4, align 8
  %53 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @write_buf_to_worktree(i32* %53, i32 %55, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @free(i32 %60)
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @read_mmblob(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ll_merge(%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @write_buf_to_worktree(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
