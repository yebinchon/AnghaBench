; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_sort_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_sort_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_pack(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.packed_git*
  store %struct.packed_git* %10, %struct.packed_git** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.packed_git*
  store %struct.packed_git* %12, %struct.packed_git** %7, align 8
  %13 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %14 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %17 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %45

34:                                               ; preds = %25
  %35 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %36 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %39 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %33, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
