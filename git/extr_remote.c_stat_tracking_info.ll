; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_stat_tracking_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_stat_tracking_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_tracking_info(%struct.branch* %0, i32* %1, i32* %2, i8** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.branch*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.branch* %0, %struct.branch** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load %struct.branch*, %struct.branch** %8, align 8
  %19 = call i8* @branch_get_push(%struct.branch* %18, i32* null)
  br label %23

20:                                               ; preds = %6
  %21 = load %struct.branch*, %struct.branch** %8, align 8
  %22 = call i8* @branch_get_upstream(%struct.branch* %21, i32* null)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i8* [ %19, %17 ], [ %22, %20 ]
  store i8* %24, i8** %14, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %14, align 8
  %29 = load i8**, i8*** %11, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  br label %43

34:                                               ; preds = %30
  %35 = load %struct.branch*, %struct.branch** %8, align 8
  %36 = getelementptr inbounds %struct.branch, %struct.branch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @stat_branch_pair(i32 %37, i8* %38, i32* %39, i32* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %33
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i8* @branch_get_push(%struct.branch*, i32*) #1

declare dso_local i8* @branch_get_upstream(%struct.branch*, i32*) #1

declare dso_local i32 @stat_branch_pair(i32, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
