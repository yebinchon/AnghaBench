; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_add_graft_decoration.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_add_graft_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graft = type { i32 }
%struct.commit = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@DECORATION_GRAFTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"grafted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_graft*, i8*)* @add_graft_decoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_graft_decoration(%struct.commit_graft* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_graft*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.commit_graft* %0, %struct.commit_graft** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @the_repository, align 4
  %8 = load %struct.commit_graft*, %struct.commit_graft** %4, align 8
  %9 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %8, i32 0, i32 0
  %10 = call %struct.commit* @lookup_commit(i32 %7, i32* %9)
  store %struct.commit* %10, %struct.commit** %6, align 8
  %11 = load %struct.commit*, %struct.commit** %6, align 8
  %12 = icmp ne %struct.commit* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @DECORATION_GRAFTED, align 4
  %16 = load %struct.commit*, %struct.commit** %6, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = call i32 @add_name_decoration(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.commit* @lookup_commit(i32, i32*) #1

declare dso_local i32 @add_name_decoration(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
