; ModuleID = '/home/carl/AnghaBench/git/extr_pack-revindex.c_find_revindex_position.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-revindex.c_find_revindex_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, %struct.revindex_entry* }
%struct.revindex_entry = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"bad offset for revindex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_revindex_position(%struct.packed_git* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.revindex_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 1
  %16 = load %struct.revindex_entry*, %struct.revindex_entry** %15, align 8
  store %struct.revindex_entry* %16, %struct.revindex_entry** %8, align 8
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.revindex_entry*, %struct.revindex_entry** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %17
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.revindex_entry*, %struct.revindex_entry** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %43
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %17, label %54

54:                                               ; preds = %50
  %55 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %32
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
