; ModuleID = '/home/carl/AnghaBench/git/extr_dir.h_dir_path_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.h_dir_path_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_entry = type { i32, i8* }
%struct.pathspec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.dir_entry*, %struct.pathspec*, i32, i8*)* @dir_path_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_path_match(%struct.index_state* %0, %struct.dir_entry* %1, %struct.pathspec* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.dir_entry*, align 8
  %8 = alloca %struct.pathspec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %7, align 8
  store %struct.pathspec* %2, %struct.pathspec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %14 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %19 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %22 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br label %30

30:                                               ; preds = %17, %5
  %31 = phi i1 [ false, %5 ], [ %29, %17 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %37 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  store i32 %45, i32* %12, align 4
  %46 = load %struct.index_state*, %struct.index_state** %6, align 8
  %47 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %48 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %49 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @match_pathspec(%struct.index_state* %46, %struct.pathspec* %47, i8* %50, i32 %51, i32 %52, i8* %53, i32 %54)
  ret i32 %55
}

declare dso_local i32 @match_pathspec(%struct.index_state*, %struct.pathspec*, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
