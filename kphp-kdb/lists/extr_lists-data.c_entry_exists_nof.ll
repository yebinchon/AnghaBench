; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_entry_exists_nof.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_entry_exists_nof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@metafile_mode = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @entry_exists_nof(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @__get_list_f(i32 %10, i32 -1)
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @metafile_mode, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %63

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @unpack_metafile_pointers_short(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @listree_lookup_large_tree(i32* @OTree, i32 %22, i32* %7)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, inttoptr (i64 -1 to i8*)
  br i1 %28, label %36, label %29

29:                                               ; preds = %26, %19
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, inttoptr (i64 -1 to i8*)
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @get_list_metafile(i32 %33)
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %26
  store i32 1, i32* %3, align 4
  br label %63

37:                                               ; preds = %32, %29
  store i32 0, i32* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load i32, i32* @metafile_mode, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %63

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @get_list_metafile(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @check_metafile_loaded(i32 %52, i32 -1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %63

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @unpack_metafile_pointers(i32* %57)
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @entry_exists(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55, %50, %44, %37, %36, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @__get_list_f(i32, i32) #1

declare dso_local i32 @unpack_metafile_pointers_short(i32*) #1

declare dso_local i8* @listree_lookup_large_tree(i32*, i32, i32*) #1

declare dso_local i32 @get_list_metafile(i32) #1

declare dso_local i32 @check_metafile_loaded(i32, i32) #1

declare dso_local i32 @unpack_metafile_pointers(i32*) #1

declare dso_local i32 @entry_exists(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
