; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_get_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_get_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_hashmap = type { i32, i64, i64, i8**, i32 (i8*, i8*)*, i32 (%struct.tl_hashmap*, i8*, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tl_hashmap_get_f(%struct.tl_hashmap** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tl_hashmap**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_hashmap*, align 8
  %11 = alloca i8*, align 8
  store %struct.tl_hashmap** %0, %struct.tl_hashmap*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %5, align 8
  %17 = load %struct.tl_hashmap*, %struct.tl_hashmap** %16, align 8
  store %struct.tl_hashmap* %17, %struct.tl_hashmap** %10, align 8
  %18 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %19 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %18, i32 0, i32 5
  %20 = load i32 (%struct.tl_hashmap*, i8*, i32*, i32*)*, i32 (%struct.tl_hashmap*, i8*, i32*, i32*)** %19, align 8
  %21 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 %20(%struct.tl_hashmap* %21, i8* %22, i32* %8, i32* %9)
  br label %24

24:                                               ; preds = %58, %3
  %25 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %26 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %24
  %34 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %35 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %34, i32 0, i32 4
  %36 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %35, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 %36(i8* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %4, align 8
  br label %91

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %49 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %54 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %43
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i8* null, i8** %4, align 8
  br label %91

63:                                               ; preds = %59
  %64 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %65 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %68 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %5, align 8
  %73 = call i32 @tl_hashmap_extend(%struct.tl_hashmap** %72)
  %74 = load %struct.tl_hashmap**, %struct.tl_hashmap*** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @tl_hashmap_get_f(%struct.tl_hashmap** %74, i8* %75, i32 %76)
  store i8* %77, i8** %4, align 8
  br label %91

78:                                               ; preds = %63
  %79 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %80 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.tl_hashmap*, %struct.tl_hashmap** %10, align 8
  %85 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  %90 = load i8*, i8** %6, align 8
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %78, %71, %62, %41
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_hashmap_extend(%struct.tl_hashmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
