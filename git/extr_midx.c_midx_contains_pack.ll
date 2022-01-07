; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_midx_contains_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_midx_contains_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midx_contains_pack(%struct.multi_pack_index* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.multi_pack_index*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.multi_pack_index*, %struct.multi_pack_index** %4, align 8
  %12 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %43, %40, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %20, %21
  %23 = sdiv i64 %22, 2
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.multi_pack_index*, %struct.multi_pack_index** %4, align 8
  %26 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @cmp_idx_or_pack_name(i8* %31, i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %46

37:                                               ; preds = %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %14

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %7, align 8
  br label %14

45:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @cmp_idx_or_pack_name(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
