; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_window_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_window_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.git_pack_file*, i32**, i32, i32*)* @pack_window_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pack_window_open(%struct.git_pack_file* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.git_pack_file*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.git_pack_file* %0, %struct.git_pack_file** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %11 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %17 = call i64 @packfile_open(%struct.git_pack_file* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %5, align 8
  br label %40

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %23 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 20
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %40

33:                                               ; preds = %29
  %34 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %35 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %34, i32 0, i32 0
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @git_mwindow_open(%struct.TYPE_2__* %35, i32** %36, i32 %37, i32 20, i32* %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %33, %32, %28, %19
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

declare dso_local i64 @packfile_open(%struct.git_pack_file*) #1

declare dso_local i8* @git_mwindow_open(%struct.TYPE_2__*, i32**, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
