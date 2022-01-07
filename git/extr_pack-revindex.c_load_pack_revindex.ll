; ModuleID = '/home/carl/AnghaBench/git/extr_pack-revindex.c_load_pack_revindex.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-revindex.c_load_pack_revindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_pack_revindex(%struct.packed_git* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  %4 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %5 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %10 = call i64 @open_pack_index(%struct.packed_git* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %17

13:                                               ; preds = %8
  %14 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %15 = call i32 @create_pack_revindex(%struct.packed_git* %14)
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @create_pack_revindex(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
