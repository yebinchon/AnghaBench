; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_alloc_packed_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_alloc_packed_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packed_git* (i32)* @alloc_packed_git to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packed_git* @alloc_packed_git(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @st_add(i32 4, i32 %4)
  %6 = call %struct.packed_git* @xmalloc(i32 %5)
  store %struct.packed_git* %6, %struct.packed_git** %3, align 8
  %7 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %8 = call i32 @memset(%struct.packed_git* %7, i32 0, i32 4)
  %9 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %10 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  ret %struct.packed_git* %11
}

declare dso_local %struct.packed_git* @xmalloc(i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @memset(%struct.packed_git*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
