; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_child.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32, %struct.commit* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit*, %struct.commit*)* @add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_child(%struct.rev_info* %0, %struct.commit* %1, %struct.commit* %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  %8 = call %struct.commit_list* @xcalloc(i32 1, i32 16)
  store %struct.commit_list* %8, %struct.commit_list** %7, align 8
  %9 = load %struct.commit*, %struct.commit** %6, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 1
  store %struct.commit* %9, %struct.commit** %11, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 0
  %14 = load %struct.commit*, %struct.commit** %5, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0
  %16 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %17 = call i32 @add_decoration(i32* %13, i32* %15, %struct.commit_list* %16)
  %18 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %19 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret void
}

declare dso_local %struct.commit_list* @xcalloc(i32, i32) #1

declare dso_local i32 @add_decoration(i32*, i32*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
