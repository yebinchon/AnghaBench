; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_find_containing_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_find_containing_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_dir* (%struct.ref_dir*, i8*, i32)* @find_containing_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_dir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ref_dir*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.ref_dir* @search_for_subdir(%struct.ref_dir* %22, i8* %23, i64 %24, i32 %25)
  store %struct.ref_dir* %26, %struct.ref_dir** %9, align 8
  %27 = load %struct.ref_dir*, %struct.ref_dir** %9, align 8
  %28 = icmp ne %struct.ref_dir* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  store %struct.ref_dir* null, %struct.ref_dir** %4, align 8
  br label %36

30:                                               ; preds = %15
  %31 = load %struct.ref_dir*, %struct.ref_dir** %9, align 8
  store %struct.ref_dir* %31, %struct.ref_dir** %4, align 8
  br label %32

32:                                               ; preds = %30
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @strchr(i8* %34, i8 signext 47)
  store i8* %35, i8** %7, align 8
  br label %12

36:                                               ; preds = %29, %12
  %37 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  ret %struct.ref_dir* %37
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.ref_dir* @search_for_subdir(%struct.ref_dir*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
