; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_install_packed_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_install_packed_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.packed_git* }
%struct.packed_git = type { i32, %struct.packed_git* }

@pack_open_fds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_packed_git(%struct.repository* %0, %struct.packed_git* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.packed_git*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.packed_git* %1, %struct.packed_git** %4, align 8
  %5 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %6 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @pack_open_fds, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @pack_open_fds, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = getelementptr inbounds %struct.repository, %struct.repository* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %18 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 1
  store %struct.packed_git* %17, %struct.packed_git** %19, align 8
  %20 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %21 = load %struct.repository*, %struct.repository** %3, align 8
  %22 = getelementptr inbounds %struct.repository, %struct.repository* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.packed_git* %20, %struct.packed_git** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
