; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git_mru.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_prepare_packed_git_mru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.packed_git* }
%struct.packed_git = type { i32, %struct.packed_git* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*)* @prepare_packed_git_mru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_packed_git_mru(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.packed_git*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %4 = load %struct.repository*, %struct.repository** %2, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.repository*, %struct.repository** %2, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.packed_git*, %struct.packed_git** %12, align 8
  store %struct.packed_git* %13, %struct.packed_git** %3, align 8
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %16 = icmp ne %struct.packed_git* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 0
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %19, i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 1
  %28 = load %struct.packed_git*, %struct.packed_git** %27, align 8
  store %struct.packed_git* %28, %struct.packed_git** %3, align 8
  br label %14

29:                                               ; preds = %14
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
