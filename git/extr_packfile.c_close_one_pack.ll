; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_close_one_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_close_one_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.packed_git* }
%struct.packed_git = type { i32, %struct.packed_git* }
%struct.pack_window = type { i32 }

@the_repository = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @close_one_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_one_pack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.pack_window*, align 8
  %5 = alloca i32, align 4
  store %struct.packed_git* null, %struct.packed_git** %3, align 8
  store %struct.pack_window* null, %struct.pack_window** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_repository, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.packed_git*, %struct.packed_git** %9, align 8
  store %struct.packed_git* %10, %struct.packed_git** %2, align 8
  br label %11

11:                                               ; preds = %23, %0
  %12 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %13 = icmp ne %struct.packed_git* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %16 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %22 = call i32 @find_lru_pack(%struct.packed_git* %21, %struct.packed_git** %3, %struct.pack_window** %4, i32* %5)
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %25 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %24, i32 0, i32 1
  %26 = load %struct.packed_git*, %struct.packed_git** %25, align 8
  store %struct.packed_git* %26, %struct.packed_git** %2, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %29 = icmp ne %struct.packed_git* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %32 = call i32 @close_pack_fd(%struct.packed_git* %31)
  store i32 %32, i32* %1, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @find_lru_pack(%struct.packed_git*, %struct.packed_git**, %struct.pack_window**, i32*) #1

declare dso_local i32 @close_pack_fd(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
