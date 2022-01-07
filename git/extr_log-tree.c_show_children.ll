; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_show_children.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_show_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { %struct.TYPE_5__*, %struct.commit_list* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*, i32)* @show_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_children(%struct.rev_info* %0, %struct.commit* %1, i32 %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %10 = load %struct.commit*, %struct.commit** %5, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = call %struct.commit_list* @lookup_decoration(i32* %9, i32* %11)
  store %struct.commit_list* %12, %struct.commit_list** %7, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @find_unique_abbrev(i32* %25, i32 %26)
  %28 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %16
  %30 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 1
  %32 = load %struct.commit_list*, %struct.commit_list** %31, align 8
  store %struct.commit_list* %32, %struct.commit_list** %7, align 8
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local %struct.commit_list* @lookup_decoration(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @find_unique_abbrev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
