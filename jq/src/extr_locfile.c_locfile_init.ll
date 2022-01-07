; ModuleID = '/home/carl/AnghaBench/jq/src/extr_locfile.c_locfile_init.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_locfile.c_locfile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locfile = type { i32, i32, i32, i32*, i8*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.locfile* @locfile_init(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.locfile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i8* @jv_mem_alloc(i32 48)
  %14 = bitcast i8* %13 to %struct.locfile*
  store %struct.locfile* %14, %struct.locfile** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.locfile*, %struct.locfile** %9, align 8
  %17 = getelementptr inbounds %struct.locfile, %struct.locfile* %16, i32 0, i32 6
  store i32* %15, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @jv_string(i8* %18)
  %20 = load %struct.locfile*, %struct.locfile** %9, align 8
  %21 = getelementptr inbounds %struct.locfile, %struct.locfile* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @jv_mem_alloc(i32 %22)
  %24 = load %struct.locfile*, %struct.locfile** %9, align 8
  %25 = getelementptr inbounds %struct.locfile, %struct.locfile* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.locfile*, %struct.locfile** %9, align 8
  %27 = getelementptr inbounds %struct.locfile, %struct.locfile* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.locfile*, %struct.locfile** %9, align 8
  %34 = getelementptr inbounds %struct.locfile, %struct.locfile* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.locfile*, %struct.locfile** %9, align 8
  %36 = getelementptr inbounds %struct.locfile, %struct.locfile* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.locfile*, %struct.locfile** %9, align 8
  %38 = getelementptr inbounds %struct.locfile, %struct.locfile* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %57, %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.locfile*, %struct.locfile** %9, align 8
  %53 = getelementptr inbounds %struct.locfile, %struct.locfile* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.locfile*, %struct.locfile** %9, align 8
  %62 = getelementptr inbounds %struct.locfile, %struct.locfile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32* @jv_mem_calloc(i32 4, i32 %64)
  %66 = load %struct.locfile*, %struct.locfile** %9, align 8
  %67 = getelementptr inbounds %struct.locfile, %struct.locfile* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.locfile*, %struct.locfile** %9, align 8
  %69 = getelementptr inbounds %struct.locfile, %struct.locfile* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %96, %60
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.locfile*, %struct.locfile** %9, align 8
  %88 = getelementptr inbounds %struct.locfile, %struct.locfile* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %84, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %72

99:                                               ; preds = %72
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.locfile*, %struct.locfile** %9, align 8
  %103 = getelementptr inbounds %struct.locfile, %struct.locfile* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.locfile*, %struct.locfile** %9, align 8
  %106 = getelementptr inbounds %struct.locfile, %struct.locfile* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  store i32 %101, i32* %109, align 4
  %110 = load %struct.locfile*, %struct.locfile** %9, align 8
  ret %struct.locfile* %110
}

declare dso_local i8* @jv_mem_alloc(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @jv_mem_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
