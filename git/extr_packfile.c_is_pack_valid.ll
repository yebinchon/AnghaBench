; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_is_pack_valid.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_is_pack_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i64, %struct.pack_window* }
%struct.pack_window = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_pack_valid(%struct.packed_git* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.pack_window*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  %5 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %6 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %12 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %11, i32 0, i32 2
  %13 = load %struct.pack_window*, %struct.pack_window** %12, align 8
  %14 = icmp ne %struct.pack_window* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %17 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %16, i32 0, i32 2
  %18 = load %struct.pack_window*, %struct.pack_window** %17, align 8
  store %struct.pack_window* %18, %struct.pack_window** %4, align 8
  %19 = load %struct.pack_window*, %struct.pack_window** %4, align 8
  %20 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load %struct.pack_window*, %struct.pack_window** %4, align 8
  %25 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %28 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %39

32:                                               ; preds = %23, %15
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %35 = call i32 @open_packed_git(%struct.packed_git* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %31, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @open_packed_git(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
