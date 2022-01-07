; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_add_packed_git.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_add_packed_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.packed_git = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".promisor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".keep\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.packed_git* @add_packed_git(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.packed_git*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strip_suffix_mem(i8* %11, i64* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.packed_git* null, %struct.packed_git** %4, align 8
  br label %125

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i64 @st_add3(i64 %16, i32 %17, i32 1)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.packed_git* @alloc_packed_git(i64 %19)
  store %struct.packed_git* %20, %struct.packed_git** %10, align 8
  %21 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %22 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @memcpy(i64 %23, i8* %24, i64 %25)
  %27 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %28 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %32, %33
  %35 = call i32 @xsnprintf(i64 %31, i64 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %37 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @F_OK, align 4
  %40 = call i32 @access(i64 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %15
  %43 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %44 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %15
  %46 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %47 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  %54 = call i32 @xsnprintf(i64 %50, i64 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %56 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @F_OK, align 4
  %59 = call i32 @access(i64 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %45
  %62 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %63 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %66 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub i64 %70, %71
  %73 = call i32 @xsnprintf(i64 %69, i64 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %75 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @stat(i64 %76, %struct.stat* %8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @S_ISREG(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %64
  %85 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %86 = call i32 @free(%struct.packed_git* %85)
  store %struct.packed_git* null, %struct.packed_git** %4, align 8
  br label %125

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %91 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %94 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %98 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %87
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 0, %110
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %114 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @get_sha1_hex(i8* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %104, %87
  %119 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %120 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @hashclr(i32 %121)
  br label %123

123:                                              ; preds = %118, %104
  %124 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  store %struct.packed_git* %124, %struct.packed_git** %4, align 8
  br label %125

125:                                              ; preds = %123, %84, %14
  %126 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  ret %struct.packed_git* %126
}

declare dso_local i32 @strip_suffix_mem(i8*, i64*, i8*) #1

declare dso_local i64 @st_add3(i64, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.packed_git* @alloc_packed_git(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @xsnprintf(i64, i64, i8*) #1

declare dso_local i32 @access(i64, i32) #1

declare dso_local i64 @stat(i64, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @free(%struct.packed_git*) #1

declare dso_local i64 @get_sha1_hex(i8*, i32) #1

declare dso_local i32 @hashclr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
