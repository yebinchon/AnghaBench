; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_find_ref_by_name_abbrev.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_find_ref_by_name_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.ref*, i8*)* @find_ref_by_name_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @find_ref_by_name_abbrev(%struct.ref* %0, i8* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ref* null, %struct.ref** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ref*, %struct.ref** %3, align 8
  store %struct.ref* %9, %struct.ref** %5, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.ref*, %struct.ref** %5, align 8
  %12 = icmp ne %struct.ref* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @refname_match(i8* %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.ref*, %struct.ref** %5, align 8
  store %struct.ref* %23, %struct.ref** %6, align 8
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %13
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.ref*, %struct.ref** %5, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %29 = load %struct.ref*, %struct.ref** %28, align 8
  store %struct.ref* %29, %struct.ref** %5, align 8
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.ref*, %struct.ref** %6, align 8
  ret %struct.ref* %31
}

declare dso_local i32 @refname_match(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
