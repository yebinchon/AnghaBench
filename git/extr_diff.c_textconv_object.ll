; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_textconv_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_textconv_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.userdiff_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @textconv_object(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.diff_filespec*, align 8
  %17 = alloca %struct.userdiff_driver*, align 8
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.object_id* %3, %struct.object_id** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call %struct.diff_filespec* @alloc_filespec(i8* %18)
  store %struct.diff_filespec* %19, %struct.diff_filespec** %16, align 8
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %21 = load %struct.object_id*, %struct.object_id** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @fill_filespec(%struct.diff_filespec* %20, %struct.object_id* %21, i32 %22, i32 %23)
  %25 = load %struct.repository*, %struct.repository** %9, align 8
  %26 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %27 = call %struct.userdiff_driver* @get_textconv(%struct.repository* %25, %struct.diff_filespec* %26)
  store %struct.userdiff_driver* %27, %struct.userdiff_driver** %17, align 8
  %28 = load %struct.userdiff_driver*, %struct.userdiff_driver** %17, align 8
  %29 = icmp ne %struct.userdiff_driver* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %32 = call i32 @free_filespec(%struct.diff_filespec* %31)
  store i32 0, i32* %8, align 4
  br label %42

33:                                               ; preds = %7
  %34 = load %struct.repository*, %struct.repository** %9, align 8
  %35 = load %struct.userdiff_driver*, %struct.userdiff_driver** %17, align 8
  %36 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %37 = load i8**, i8*** %14, align 8
  %38 = call i64 @fill_textconv(%struct.repository* %34, %struct.userdiff_driver* %35, %struct.diff_filespec* %36, i8** %37)
  %39 = load i64*, i64** %15, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %41 = call i32 @free_filespec(%struct.diff_filespec* %40)
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @fill_filespec(%struct.diff_filespec*, %struct.object_id*, i32, i32) #1

declare dso_local %struct.userdiff_driver* @get_textconv(%struct.repository*, %struct.diff_filespec*) #1

declare dso_local i32 @free_filespec(%struct.diff_filespec*) #1

declare dso_local i64 @fill_textconv(%struct.repository*, %struct.userdiff_driver*, %struct.diff_filespec*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
