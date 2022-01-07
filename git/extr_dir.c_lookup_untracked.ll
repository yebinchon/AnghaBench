; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_lookup_untracked.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_lookup_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache = type { i32 }
%struct.untracked_cache_dir = type { i32, %struct.untracked_cache_dir**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.untracked_cache_dir* (%struct.untracked_cache*, %struct.untracked_cache_dir*, i8*, i32)* @lookup_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.untracked_cache_dir* @lookup_untracked(%struct.untracked_cache* %0, %struct.untracked_cache_dir* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.untracked_cache_dir*, align 8
  %6 = alloca %struct.untracked_cache*, align 8
  %7 = alloca %struct.untracked_cache_dir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.untracked_cache_dir*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.untracked_cache* %0, %struct.untracked_cache** %6, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %16 = icmp ne %struct.untracked_cache_dir* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %5, align 8
  br label %136

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %21, %18
  store i32 0, i32* %10, align 4
  %34 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %35 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %81, %79, %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %43, %44
  %46 = ashr i32 %45, 1
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %14, align 4
  %48 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %49 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %48, i32 0, i32 1
  %50 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %50, i64 %52
  %54 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %53, align 8
  store %struct.untracked_cache_dir* %54, %struct.untracked_cache_dir** %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %57 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @strncmp(i8* %55, i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %41
  %64 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %65 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlen(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 -1, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %63, %41
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  store %struct.untracked_cache_dir* %75, %struct.untracked_cache_dir** %5, align 8
  br label %136

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %11, align 4
  br label %37

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %86 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @FLEX_ALLOC_MEM(%struct.untracked_cache_dir* %89, i8* %90, i8* %91, i32 %92)
  %94 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %95 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %94, i32 0, i32 1
  %96 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %95, align 8
  %97 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %98 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %102 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ALLOC_GROW(%struct.untracked_cache_dir** %96, i32 %100, i32 %103)
  %105 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %106 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %105, i32 0, i32 1
  %107 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %107, i64 %109
  %111 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %110, i64 1
  %112 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %113 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %112, i32 0, i32 1
  %114 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %114, i64 %116
  %118 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %119 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @MOVE_ARRAY(%struct.untracked_cache_dir** %111, %struct.untracked_cache_dir** %117, i32 %122)
  %124 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %125 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %129 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %7, align 8
  %130 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %129, i32 0, i32 1
  %131 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %131, i64 %133
  store %struct.untracked_cache_dir* %128, %struct.untracked_cache_dir** %134, align 8
  %135 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  store %struct.untracked_cache_dir* %135, %struct.untracked_cache_dir** %5, align 8
  br label %136

136:                                              ; preds = %84, %74, %17
  %137 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %5, align 8
  ret %struct.untracked_cache_dir* %137
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.untracked_cache_dir*, i8*, i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.untracked_cache_dir**, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.untracked_cache_dir**, %struct.untracked_cache_dir**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
