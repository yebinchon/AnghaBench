; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_compare_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_compare_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array_item = type { i32 }
%struct.ref_sorting = type { %struct.ref_sorting* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @compare_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_refs(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ref_array_item*, align 8
  %9 = alloca %struct.ref_array_item*, align 8
  %10 = alloca %struct.ref_sorting*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ref_array_item**
  %14 = load %struct.ref_array_item*, %struct.ref_array_item** %13, align 8
  store %struct.ref_array_item* %14, %struct.ref_array_item** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.ref_array_item**
  %17 = load %struct.ref_array_item*, %struct.ref_array_item** %16, align 8
  store %struct.ref_array_item* %17, %struct.ref_array_item** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.ref_sorting*
  store %struct.ref_sorting* %19, %struct.ref_sorting** %10, align 8
  br label %20

20:                                               ; preds = %33, %3
  %21 = load %struct.ref_sorting*, %struct.ref_sorting** %10, align 8
  %22 = icmp ne %struct.ref_sorting* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.ref_sorting*, %struct.ref_sorting** %10, align 8
  %25 = load %struct.ref_array_item*, %struct.ref_array_item** %8, align 8
  %26 = load %struct.ref_array_item*, %struct.ref_array_item** %9, align 8
  %27 = call i32 @cmp_ref_sorting(%struct.ref_sorting* %24, %struct.ref_array_item* %25, %struct.ref_array_item* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ref_sorting*, %struct.ref_sorting** %10, align 8
  %35 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %34, i32 0, i32 0
  %36 = load %struct.ref_sorting*, %struct.ref_sorting** %35, align 8
  store %struct.ref_sorting* %36, %struct.ref_sorting** %10, align 8
  br label %20

37:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @cmp_ref_sorting(%struct.ref_sorting*, %struct.ref_array_item*, %struct.ref_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
