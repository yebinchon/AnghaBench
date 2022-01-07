; ModuleID = '/home/carl/AnghaBench/git/extr_pack-revindex.c_find_pack_revindex.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-revindex.c_find_pack_revindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revindex_entry = type { i32 }
%struct.packed_git = type { %struct.revindex_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.revindex_entry* @find_pack_revindex(%struct.packed_git* %0, i32 %1) #0 {
  %3 = alloca %struct.revindex_entry*, align 8
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %8 = call i64 @load_pack_revindex(%struct.packed_git* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.revindex_entry* null, %struct.revindex_entry** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @find_revindex_position(%struct.packed_git* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.revindex_entry* null, %struct.revindex_entry** %3, align 8
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 0
  %21 = load %struct.revindex_entry*, %struct.revindex_entry** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %21, i64 %23
  store %struct.revindex_entry* %24, %struct.revindex_entry** %3, align 8
  br label %25

25:                                               ; preds = %18, %17, %10
  %26 = load %struct.revindex_entry*, %struct.revindex_entry** %3, align 8
  ret %struct.revindex_entry* %26
}

declare dso_local i64 @load_pack_revindex(%struct.packed_git*) #1

declare dso_local i32 @find_revindex_position(%struct.packed_git*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
