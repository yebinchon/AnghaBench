; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_get_pack_fanout.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_get_pack_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_pack_fanout(%struct.packed_git* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %8 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %14 = call i64 @open_pack_index(%struct.packed_git* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %35

17:                                               ; preds = %12
  %18 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %23 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64* %28, i64** %6, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ntohl(i64 %33)
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %29, %16
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
