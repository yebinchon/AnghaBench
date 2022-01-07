; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_fill_pack_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_fill_pack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.pack_midx_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to locate object %d in packfile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.packed_git*, i32, %struct.pack_midx_entry*)* @fill_pack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_pack_entry(i32 %0, %struct.packed_git* %1, i32 %2, %struct.pack_midx_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pack_midx_entry*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.packed_git* %1, %struct.packed_git** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pack_midx_entry* %3, %struct.pack_midx_entry** %8, align 8
  %9 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %8, align 8
  %10 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %9, i32 0, i32 3
  %11 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @nth_packed_object_oid(i32* %10, %struct.packed_git* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @die(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %8, align 8
  %22 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %24 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %8, align 8
  %27 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nth_packed_object_offset(%struct.packed_git* %28, i32 %29)
  %31 = load %struct.pack_midx_entry*, %struct.pack_midx_entry** %8, align 8
  %32 = getelementptr inbounds %struct.pack_midx_entry, %struct.pack_midx_entry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @nth_packed_object_oid(i32*, %struct.packed_git*, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @nth_packed_object_offset(%struct.packed_git*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
