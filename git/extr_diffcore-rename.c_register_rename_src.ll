; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_register_rename_src.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_register_rename_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_rename_src = type { i16, %struct.diff_filepair* }
%struct.diff_filepair = type { i16, %struct.diff_filespec* }
%struct.diff_filespec = type { i32 }

@rename_src_nr = common dso_local global i32 0, align 4
@rename_src = common dso_local global %struct.diff_rename_src* null, align 8
@rename_src_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_rename_src* (%struct.diff_filepair*)* @register_rename_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_rename_src* @register_rename_src(%struct.diff_filepair* %0) #0 {
  %2 = alloca %struct.diff_rename_src*, align 8
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_rename_src*, align 8
  %10 = alloca i32, align 4
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %12 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %11, i32 0, i32 1
  %13 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  store %struct.diff_filespec* %13, %struct.diff_filespec** %6, align 8
  %14 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %15 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  store i16 %16, i16* %7, align 2
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* @rename_src_nr, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %53, %51, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %24, %25
  %27 = ashr i32 %26, 1
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %29, i64 %31
  store %struct.diff_rename_src* %32, %struct.diff_rename_src** %9, align 8
  %33 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %34 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.diff_rename_src*, %struct.diff_rename_src** %9, align 8
  %37 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %36, i32 0, i32 1
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %37, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 1
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %39, align 8
  %41 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %35, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %22
  %47 = load %struct.diff_rename_src*, %struct.diff_rename_src** %9, align 8
  store %struct.diff_rename_src* %47, %struct.diff_rename_src** %2, align 8
  br label %99

48:                                               ; preds = %22
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %5, align 4
  br label %18

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %58 = load i32, i32* @rename_src_nr, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @rename_src_alloc, align 4
  %61 = call i32 @ALLOC_GROW(%struct.diff_rename_src* %57, i32 %59, i32 %60)
  %62 = load i32, i32* @rename_src_nr, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @rename_src_nr, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @rename_src_nr, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %56
  %68 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %68, i64 %70
  %72 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %71, i64 1
  %73 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %73, i64 %75
  %77 = load i32, i32* @rename_src_nr, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @MOVE_ARRAY(%struct.diff_rename_src* %72, %struct.diff_rename_src* %76, i32 %80)
  br label %82

82:                                               ; preds = %67, %56
  %83 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %84 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %84, i64 %86
  %88 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %87, i32 0, i32 1
  store %struct.diff_filepair* %83, %struct.diff_filepair** %88, align 8
  %89 = load i16, i16* %7, align 2
  %90 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %90, i64 %92
  %94 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %93, i32 0, i32 0
  store i16 %89, i16* %94, align 8
  %95 = load %struct.diff_rename_src*, %struct.diff_rename_src** @rename_src, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.diff_rename_src, %struct.diff_rename_src* %95, i64 %97
  store %struct.diff_rename_src* %98, %struct.diff_rename_src** %2, align 8
  br label %99

99:                                               ; preds = %82, %46
  %100 = load %struct.diff_rename_src*, %struct.diff_rename_src** %2, align 8
  ret %struct.diff_rename_src* %100
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.diff_rename_src*, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.diff_rename_src*, %struct.diff_rename_src*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
