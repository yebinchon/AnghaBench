; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_load_map.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-split.c_load_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_filename = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot open user names file %s: %m\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@map_fsize = common dso_local global i64 0, align 8
@MAX_MAP_USERS = common dso_local global i32 0, align 4
@Map = common dso_local global i64 0, align 8
@UMap = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"successfully loaded user names file %s, size %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_map() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @map_filename, align 8
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i32 @open(i8* %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @map_filename, align 8
  %13 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i64 @lseek(i32 %16, i32 0, i32 %17)
  store i64 %18, i64* @map_fsize, align 8
  %19 = load i64, i64* @map_fsize, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @map_fsize, align 8
  %23 = load i64, i64* @map_fsize, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* @map_fsize, align 8
  %30 = load i32, i32* @MAX_MAP_USERS, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = icmp sge i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @map_fsize, align 8
  %37 = call i64 @malloc(i64 %36)
  store i64 %37, i64* @Map, align 8
  %38 = load i64, i64* @Map, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @Map, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** @UMap, align 8
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i64 @lseek(i32 %43, i32 0, i32 %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  store i64 0, i64* %2, align 8
  br label %49

49:                                               ; preds = %63, %25
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @map_fsize, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load i64, i64* @map_fsize, align 8
  %55 = load i64, i64* %2, align 8
  %56 = sub nsw i64 %54, %55
  %57 = icmp slt i64 %56, 1073741824
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @map_fsize, align 8
  %60 = load i64, i64* %2, align 8
  %61 = sub nsw i64 %59, %60
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i64 [ %61, %58 ], [ 1073741824, %62 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i64, i64* @Map, align 8
  %68 = load i64, i64* %2, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @read(i32 %66, i64 %69, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %2, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %2, align 8
  br label %49

80:                                               ; preds = %49
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i32*, i32** @UMap, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MAX_MAP_USERS, align 4
  %87 = mul nsw i32 %86, 4
  %88 = icmp eq i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %110, %80
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @MAX_MAP_USERS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load i32*, i32** @UMap, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @UMap, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sle i32 %101, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %110

110:                                              ; preds = %95
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load i32*, i32** @UMap, align 8
  %115 = load i32, i32* @MAX_MAP_USERS, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @map_fsize, align 8
  %122 = icmp sle i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i64, i64* @verbosity, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** @map_filename, align 8
  %130 = load i64, i64* @map_fsize, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %129, i64 %130)
  br label %132

132:                                              ; preds = %127, %113
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
