; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_image.c_match.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_image.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matcher = type { i32, i32, i32, i32, i32*, i64 }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.matcher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.matcher*
  store %struct.matcher* %14, %struct.matcher** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @cairo_image_surface_get_width(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @cairo_image_surface_get_height(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.matcher*, %struct.matcher** %6, align 8
  %20 = getelementptr inbounds %struct.matcher, %struct.matcher* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %89

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.matcher*, %struct.matcher** %6, align 8
  %27 = getelementptr inbounds %struct.matcher, %struct.matcher* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.matcher*, %struct.matcher** %6, align 8
  %33 = getelementptr inbounds %struct.matcher, %struct.matcher* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.matcher*, %struct.matcher** %6, align 8
  %38 = getelementptr inbounds %struct.matcher, %struct.matcher* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %132

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %30, %24
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.matcher*, %struct.matcher** %6, align 8
  %46 = getelementptr inbounds %struct.matcher, %struct.matcher* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.matcher*, %struct.matcher** %6, align 8
  %52 = getelementptr inbounds %struct.matcher, %struct.matcher* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.matcher*, %struct.matcher** %6, align 8
  %57 = getelementptr inbounds %struct.matcher, %struct.matcher* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %89

61:                                               ; preds = %55, %49, %43
  %62 = load %struct.matcher*, %struct.matcher** %6, align 8
  %63 = getelementptr inbounds %struct.matcher, %struct.matcher* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i8* @abs(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load %struct.matcher*, %struct.matcher** %6, align 8
  %70 = getelementptr inbounds %struct.matcher, %struct.matcher* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i8* @abs(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.matcher*, %struct.matcher** %6, align 8
  %78 = getelementptr inbounds %struct.matcher, %struct.matcher* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %61
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.matcher*, %struct.matcher** %6, align 8
  %84 = getelementptr inbounds %struct.matcher, %struct.matcher* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81, %61
  br label %132

89:                                               ; preds = %87, %60, %23
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.matcher*, %struct.matcher** %6, align 8
  %92 = getelementptr inbounds %struct.matcher, %struct.matcher* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.matcher*, %struct.matcher** %6, align 8
  %98 = getelementptr inbounds %struct.matcher, %struct.matcher* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.matcher*, %struct.matcher** %6, align 8
  %103 = getelementptr inbounds %struct.matcher, %struct.matcher* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* @TRUE, align 8
  %108 = load %struct.matcher*, %struct.matcher** %6, align 8
  %109 = getelementptr inbounds %struct.matcher, %struct.matcher* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %101, %95, %89
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.matcher*, %struct.matcher** %6, align 8
  %113 = getelementptr inbounds %struct.matcher, %struct.matcher* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load %struct.matcher*, %struct.matcher** %6, align 8
  %115 = getelementptr inbounds %struct.matcher, %struct.matcher* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i8* @abs(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.matcher*, %struct.matcher** %6, align 8
  %122 = getelementptr inbounds %struct.matcher, %struct.matcher* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.matcher*, %struct.matcher** %6, align 8
  %124 = getelementptr inbounds %struct.matcher, %struct.matcher* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i8* @abs(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.matcher*, %struct.matcher** %6, align 8
  %131 = getelementptr inbounds %struct.matcher, %struct.matcher* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %110, %88, %41
  ret void
}

declare dso_local i32 @cairo_image_surface_get_width(i32*) #1

declare dso_local i32 @cairo_image_surface_get_height(i32*) #1

declare dso_local i8* @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
