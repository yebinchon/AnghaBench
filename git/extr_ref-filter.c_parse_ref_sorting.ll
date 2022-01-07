; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_parse_ref_sorting.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_parse_ref_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_sorting = type { i32, i32, i32, %struct.ref_sorting* }

@.str = private unnamed_addr constant [9 x i8] c"version:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"v:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_ref_sorting(%struct.ref_sorting** %0, i8* %1) #0 {
  %3 = alloca %struct.ref_sorting**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref_sorting*, align 8
  store %struct.ref_sorting** %0, %struct.ref_sorting*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.ref_sorting* @xcalloc(i32 1, i32 24)
  store %struct.ref_sorting* %6, %struct.ref_sorting** %5, align 8
  %7 = load %struct.ref_sorting**, %struct.ref_sorting*** %3, align 8
  %8 = load %struct.ref_sorting*, %struct.ref_sorting** %7, align 8
  %9 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %10 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %9, i32 0, i32 3
  store %struct.ref_sorting* %8, %struct.ref_sorting** %10, align 8
  %11 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %12 = load %struct.ref_sorting**, %struct.ref_sorting*** %3, align 8
  store %struct.ref_sorting* %11, %struct.ref_sorting** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %19 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @skip_prefix(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @skip_prefix(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22
  %31 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %32 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @parse_sorting_atom(i8* %34)
  %36 = load %struct.ref_sorting*, %struct.ref_sorting** %5, align 8
  %37 = getelementptr inbounds %struct.ref_sorting, %struct.ref_sorting* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local %struct.ref_sorting* @xcalloc(i32, i32) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_sorting_atom(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
