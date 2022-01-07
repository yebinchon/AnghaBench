; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i8*, i32, i64, i8*, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Add type %s\0A\00", align 1
@tl_type_tree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Wrong params_num or types for type %s\0A\00", align 1
@total_types_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_type* @tl_add_type(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.tl_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tl_type, align 8
  %12 = alloca %struct.tl_type**, align 8
  %13 = alloca %struct.tl_type*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i8* @zmalloc(i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = bitcast %struct.tl_type* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 72, i1 false)
  %29 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %11, i32 0, i32 0
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %29, align 8
  store %struct.tl_type** null, %struct.tl_type*** %12, align 8
  %31 = load i32, i32* @tl_type_tree, align 4
  %32 = call %struct.tl_type** @tree_lookup_value_tl_type(i32 %31, %struct.tl_type* %11)
  store %struct.tl_type** %32, %struct.tl_type*** %12, align 8
  %33 = icmp ne %struct.tl_type** %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @zfree(i8* %35, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.tl_type**, %struct.tl_type*** %12, align 8
  %43 = load %struct.tl_type*, %struct.tl_type** %42, align 8
  %44 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.tl_type**, %struct.tl_type*** %12, align 8
  %50 = load %struct.tl_type*, %struct.tl_type** %49, align 8
  %51 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %48, %41
  %56 = load %struct.tl_type**, %struct.tl_type*** %12, align 8
  %57 = load %struct.tl_type*, %struct.tl_type** %56, align 8
  %58 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @TL_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store %struct.tl_type* null, %struct.tl_type** %5, align 8
  br label %160

61:                                               ; preds = %48, %34
  %62 = load %struct.tl_type**, %struct.tl_type*** %12, align 8
  %63 = load %struct.tl_type*, %struct.tl_type** %62, align 8
  store %struct.tl_type* %63, %struct.tl_type** %5, align 8
  br label %160

64:                                               ; preds = %4
  %65 = call i8* @zmalloc(i32 72)
  %66 = bitcast i8* %65 to %struct.tl_type*
  store %struct.tl_type* %66, %struct.tl_type** %13, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %69 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %71 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @zstrdup(i8* %72)
  %74 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %75 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %118, %64
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %82 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %92 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 35
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %102 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %117

110:                                              ; preds = %100, %90, %80
  %111 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %112 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 36, i8* %116, align 1
  br label %117

117:                                              ; preds = %110, %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %123 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %122, i32 0, i32 8
  store i64 0, i64* %123, align 8
  %124 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %125 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %127 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %129 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %128, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %131 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %8, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %121
  %135 = load i32, i32* %8, align 4
  %136 = icmp sle i32 %135, 64
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %141 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %144 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %152

145:                                              ; preds = %121
  %146 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %147 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, 4
  store i32 %149, i32* %147, align 8
  %150 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %151 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %150, i32 0, i32 1
  store i32 -1, i32* %151, align 8
  br label %152

152:                                              ; preds = %145, %134
  %153 = load i32, i32* @tl_type_tree, align 4
  %154 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  %155 = call i32 (...) @lrand48()
  %156 = call i32 @tree_insert_tl_type(i32 %153, %struct.tl_type* %154, i32 %155)
  store i32 %156, i32* @tl_type_tree, align 4
  %157 = load i32, i32* @total_types_num, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @total_types_num, align 4
  %159 = load %struct.tl_type*, %struct.tl_type** %13, align 8
  store %struct.tl_type* %159, %struct.tl_type** %5, align 8
  br label %160

160:                                              ; preds = %152, %61, %55
  %161 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  ret %struct.tl_type* %161
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.tl_type** @tree_lookup_value_tl_type(i32, %struct.tl_type*) #1

declare dso_local i32 @zfree(i8*, i32) #1

declare dso_local i32 @TL_ERROR(i8*, i8*) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_insert_tl_type(i32, %struct.tl_type*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
