; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-delta.c_spanhash_rehash.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-delta.c_spanhash_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spanhash_top = type { i32, i32, %struct.spanhash* }
%struct.spanhash = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spanhash_top* (%struct.spanhash_top*)* @spanhash_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spanhash_top* @spanhash_rehash(%struct.spanhash_top* %0) #0 {
  %2 = alloca %struct.spanhash_top*, align 8
  %3 = alloca %struct.spanhash_top*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spanhash*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spanhash*, align 8
  store %struct.spanhash_top* %0, %struct.spanhash_top** %2, align 8
  %10 = load %struct.spanhash_top*, %struct.spanhash_top** %2, align 8
  %11 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @st_mult(i32 16, i32 %16)
  %18 = call i32 @st_add(i32 16, i32 %17)
  %19 = call %struct.spanhash_top* @xmalloc(i32 %18)
  store %struct.spanhash_top* %19, %struct.spanhash_top** %3, align 8
  %20 = load %struct.spanhash_top*, %struct.spanhash_top** %2, align 8
  %21 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %25 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %27 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @INITIAL_FREE(i32 %28)
  %30 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %31 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %33 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %32, i32 0, i32 2
  %34 = load %struct.spanhash*, %struct.spanhash** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.spanhash* %34, i32 0, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %97, %1
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = load %struct.spanhash_top*, %struct.spanhash_top** %2, align 8
  %46 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %45, i32 0, i32 2
  %47 = load %struct.spanhash*, %struct.spanhash** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %47, i64 %49
  store %struct.spanhash* %50, %struct.spanhash** %7, align 8
  %51 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %52 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %97

56:                                               ; preds = %44
  %57 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %58 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %95
  %64 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %65 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %64, i32 0, i32 2
  %66 = load %struct.spanhash*, %struct.spanhash** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %66, i64 %69
  store %struct.spanhash* %70, %struct.spanhash** %9, align 8
  %71 = load %struct.spanhash*, %struct.spanhash** %9, align 8
  %72 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %63
  %76 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %77 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.spanhash*, %struct.spanhash** %9, align 8
  %80 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.spanhash*, %struct.spanhash** %7, align 8
  %82 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.spanhash*, %struct.spanhash** %9, align 8
  %85 = getelementptr inbounds %struct.spanhash, %struct.spanhash* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  %87 = getelementptr inbounds %struct.spanhash_top, %struct.spanhash_top* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %96

90:                                               ; preds = %63
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %63

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %55
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %40

100:                                              ; preds = %40
  %101 = load %struct.spanhash_top*, %struct.spanhash_top** %2, align 8
  %102 = call i32 @free(%struct.spanhash_top* %101)
  %103 = load %struct.spanhash_top*, %struct.spanhash_top** %3, align 8
  ret %struct.spanhash_top* %103
}

declare dso_local %struct.spanhash_top* @xmalloc(i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @st_mult(i32, i32) #1

declare dso_local i32 @INITIAL_FREE(i32) #1

declare dso_local i32 @memset(%struct.spanhash*, i32, i32) #1

declare dso_local i32 @free(%struct.spanhash_top*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
