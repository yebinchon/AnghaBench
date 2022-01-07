; ModuleID = '/home/carl/AnghaBench/git/extr_pack-check.c_verify_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-check.c_verify_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packed_git = type { i32 }
%struct.progress = type { i32 }
%struct.pack_window = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_pack(%struct.repository* %0, %struct.packed_git* %1, i32 %2, %struct.progress* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.packed_git*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.progress*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pack_window*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.packed_git* %1, %struct.packed_git** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.progress* %3, %struct.progress** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.pack_window* null, %struct.pack_window** %13, align 8
  %14 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %15 = call i32 @verify_pack_index(%struct.packed_git* %14)
  %16 = load i32, i32* %12, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %12, align 4
  %18 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %34

23:                                               ; preds = %5
  %24 = load %struct.repository*, %struct.repository** %7, align 8
  %25 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.progress*, %struct.progress** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @verify_packfile(%struct.repository* %24, %struct.packed_git* %25, %struct.pack_window** %13, i32 %26, %struct.progress* %27, i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = call i32 @unuse_pack(%struct.pack_window** %13)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @verify_pack_index(%struct.packed_git*) #1

declare dso_local i32 @verify_packfile(%struct.repository*, %struct.packed_git*, %struct.pack_window**, i32, %struct.progress*, i32) #1

declare dso_local i32 @unuse_pack(%struct.pack_window**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
