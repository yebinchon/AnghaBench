; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_int_array = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_int_array_append_string(%struct.tl_int_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_int_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.tl_int_array* %0, %struct.tl_int_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 16777216
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %101

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 254
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 4
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 3
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %25 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %30 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %101

34:                                               ; preds = %14
  %35 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %36 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %39 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 254
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  br label %65

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 8
  %54 = add nsw i32 %53, 254
  %55 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %56 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %59 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %54, i32* %62, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @memcpy(i8* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %79, %65
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = and i64 %76, 3
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  store i8 0, i8* %80, align 1
  br label %74

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %85 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %90 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %93 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = bitcast i32* %96 to i8*
  %98 = icmp eq i8* %88, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %82, %33, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
