; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_show_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_show_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, i32, i32*)* @show_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_parents(%struct.commit* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.commit*, %struct.commit** %4, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 1
  %11 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %11, %struct.commit_list** %7, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 0
  %18 = load %struct.commit*, %struct.commit** %17, align 8
  store %struct.commit* %18, %struct.commit** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.commit*, %struct.commit** %8, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @find_unique_abbrev(i32* %22, i32 %23)
  %25 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %15
  %27 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 1
  %29 = load %struct.commit_list*, %struct.commit_list** %28, align 8
  store %struct.commit_list* %29, %struct.commit_list** %7, align 8
  br label %12

30:                                               ; preds = %12
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @find_unique_abbrev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
