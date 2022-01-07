; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-dump-cache-tree.c_dump_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-dump-cache-tree.c_dump_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i64, i32, %struct.cache_tree_sub**, i32 }
%struct.cache_tree_sub = type { %struct.cache_tree*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"#(ref) \00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%.*s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_tree*, %struct.cache_tree*, i8*)* @dump_cache_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_cache_tree(%struct.cache_tree* %0, %struct.cache_tree* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca %struct.cache_tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cache_tree_sub*, align 8
  %13 = alloca %struct.cache_tree_sub*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %5, align 8
  store %struct.cache_tree* %1, %struct.cache_tree** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %15 = icmp ne %struct.cache_tree* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %18 = icmp ne %struct.cache_tree* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %112

20:                                               ; preds = %16
  %21 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %22 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @dump_one(%struct.cache_tree* %26, i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @dump_one(%struct.cache_tree* %29, i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %63

32:                                               ; preds = %20
  %33 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @dump_one(%struct.cache_tree* %33, i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %37 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %36, i32 0, i32 3
  %38 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %39 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %38, i32 0, i32 3
  %40 = call i32 @oideq(i32* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %32
  %43 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %44 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %47 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %52 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %55 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50, %42, %32
  %59 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @dump_one(%struct.cache_tree* %59, i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %25
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %107, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %67 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %64
  %71 = load i32, i32* @PATH_MAX, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %10, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %11, align 8
  %75 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %76 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %75, i32 0, i32 2
  %77 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %77, i64 %79
  %81 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %80, align 8
  store %struct.cache_tree_sub* %81, %struct.cache_tree_sub** %12, align 8
  %82 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %83 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %84 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree* %82, i32 %85)
  store %struct.cache_tree_sub* %86, %struct.cache_tree_sub** %13, align 8
  %87 = trunc i64 %72 to i32
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %90 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %93 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @xsnprintf(i8* %74, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %88, i32 %91, i32 %94)
  %96 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %97 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %96, i32 0, i32 0
  %98 = load %struct.cache_tree*, %struct.cache_tree** %97, align 8
  %99 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %13, align 8
  %100 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %99, i32 0, i32 0
  %101 = load %struct.cache_tree*, %struct.cache_tree** %100, align 8
  %102 = call i32 @dump_cache_tree(%struct.cache_tree* %98, %struct.cache_tree* %101, i8* %74)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %70
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %64

110:                                              ; preds = %64
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %19
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dump_one(%struct.cache_tree*, i8*, i8*) #1

declare dso_local i32 @oideq(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree*, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
