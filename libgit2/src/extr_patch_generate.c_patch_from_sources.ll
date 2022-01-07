; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_patch_from_sources.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_patch_from_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*)* @patch_from_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_from_sources(i32** %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__, align 4
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = call i32 @assert(i32** %13)
  %15 = load i32**, i32*** %6, align 8
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = call i32 @patch_generated_with_delta_alloc(%struct.TYPE_13__** %11, i32* %17, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %48

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.TYPE_14__* %12, i32 0, i32 4)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = call i32 @diff_output_to_patch(i32* %26, i32* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @git_xdiff_init(%struct.TYPE_14__* %12, i32* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @patch_generated_from_sources(%struct.TYPE_13__* %32, %struct.TYPE_14__* %12, %struct.TYPE_15__* %33, %struct.TYPE_15__* %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %24
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = bitcast %struct.TYPE_13__* %39 to i32*
  %41 = load i32**, i32*** %6, align 8
  store i32* %40, i32** %41, align 8
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = bitcast %struct.TYPE_13__* %43 to i32*
  %45 = call i32 @git_patch_free(i32* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @patch_generated_with_delta_alloc(%struct.TYPE_13__**, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @diff_output_to_patch(i32*, i32*) #1

declare dso_local i32 @git_xdiff_init(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @patch_generated_from_sources(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
