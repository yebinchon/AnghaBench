; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_extend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_hashmap = type { i32, i32, i32**, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tl_hashmap_extend: old hash size is %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_hashmap**)* @tl_hashmap_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_hashmap_extend(%struct.tl_hashmap** %0) #0 {
  %2 = alloca %struct.tl_hashmap**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_hashmap*, align 8
  store %struct.tl_hashmap** %0, %struct.tl_hashmap*** %2, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sge i32 %5, 4
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %10 = load %struct.tl_hashmap*, %struct.tl_hashmap** %9, align 8
  %11 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %16 = load %struct.tl_hashmap*, %struct.tl_hashmap** %15, align 8
  %17 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call %struct.tl_hashmap* @tl_hashmap_alloc(i32 %19)
  store %struct.tl_hashmap* %20, %struct.tl_hashmap** %4, align 8
  %21 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %22 = load %struct.tl_hashmap*, %struct.tl_hashmap** %21, align 8
  %23 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tl_hashmap*, %struct.tl_hashmap** %4, align 8
  %26 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %28 = load %struct.tl_hashmap*, %struct.tl_hashmap** %27, align 8
  %29 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tl_hashmap*, %struct.tl_hashmap** %4, align 8
  %32 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %61, %14
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %36 = load %struct.tl_hashmap*, %struct.tl_hashmap** %35, align 8
  %37 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %42 = load %struct.tl_hashmap*, %struct.tl_hashmap** %41, align 8
  %43 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %52 = load %struct.tl_hashmap*, %struct.tl_hashmap** %51, align 8
  %53 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @tl_hashmap_get_f(%struct.tl_hashmap** %4, i32* %58, i32 1)
  br label %60

60:                                               ; preds = %50, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  %66 = call i32 @tl_hashmap_free(%struct.tl_hashmap** %65)
  %67 = load %struct.tl_hashmap*, %struct.tl_hashmap** %4, align 8
  %68 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %2, align 8
  store %struct.tl_hashmap* %67, %struct.tl_hashmap** %68, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local %struct.tl_hashmap* @tl_hashmap_alloc(i32) #1

declare dso_local i32 @tl_hashmap_get_f(%struct.tl_hashmap**, i32*, i32) #1

declare dso_local i32 @tl_hashmap_free(%struct.tl_hashmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
