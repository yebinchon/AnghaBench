; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_function.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_constructor = type { i8*, i32, i8*, i64, i64, i64, %struct.tl_type* }
%struct.tl_type = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Add function %s\0A\00", align 1
@tl_function_tree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Duplicate function id `%s`\0A\00", align 1
@total_functions_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_constructor* @tl_add_function(%struct.tl_type* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tl_constructor*, align 8
  %6 = alloca %struct.tl_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tl_constructor, align 8
  %15 = alloca %struct.tl_constructor*, align 8
  %16 = alloca i32, align 4
  store %struct.tl_type* %0, %struct.tl_type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 35
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi i1 [ true, %21 ], [ %31, %29 ]
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i1 [ false, %17 ], [ %33, %32 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %17

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @zmalloc(i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 0, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp eq i32 %59, 9
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %102, %56
  %64 = load i32, i32* %13, align 4
  %65 = icmp sle i32 %64, 8
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 57
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sub nsw i32 %86, 48
  br label %99

88:                                               ; preds = %66
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 97
  %98 = add nsw i32 %97, 10
  br label %99

99:                                               ; preds = %88, %78
  %100 = phi i32 [ %87, %78 ], [ %98, %88 ]
  %101 = add i32 %68, %100
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %63

105:                                              ; preds = %63
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, -1
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i1 [ false, %105 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %115

115:                                              ; preds = %111, %39
  %116 = bitcast %struct.tl_constructor* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %116, i8 0, i64 56, i1 false)
  %117 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %14, i32 0, i32 0
  %118 = load i8*, i8** %11, align 8
  store i8* %118, i8** %117, align 8
  %119 = load i32, i32* @tl_function_tree, align 4
  %120 = call i64 @tree_lookup_tl_constructor(i32 %119, %struct.tl_constructor* %14)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @TL_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @zfree(i8* %125, i32 %127)
  store %struct.tl_constructor* null, %struct.tl_constructor** %5, align 8
  br label %204

129:                                              ; preds = %115
  %130 = call i8* @zmalloc(i32 56)
  %131 = bitcast i8* %130 to %struct.tl_constructor*
  store %struct.tl_constructor* %131, %struct.tl_constructor** %15, align 8
  %132 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %133 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %134 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %133, i32 0, i32 6
  store %struct.tl_type* %132, %struct.tl_type** %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %137 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %140 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = call i8* @zstrdup(i8* %141)
  %143 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %144 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %146 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %189, %129
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %192

151:                                              ; preds = %147
  %152 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %153 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 46
  br i1 %160, label %181, label %161

161:                                              ; preds = %151
  %162 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %163 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 35
  br i1 %170, label %181, label %171

171:                                              ; preds = %161
  %172 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %173 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 32
  br i1 %180, label %181, label %188

181:                                              ; preds = %171, %161, %151
  %182 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %183 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 36, i8* %187, align 1
  br label %188

188:                                              ; preds = %181, %171
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %147

192:                                              ; preds = %147
  %193 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %194 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %193, i32 0, i32 3
  store i64 0, i64* %194, align 8
  %195 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %196 = getelementptr inbounds %struct.tl_constructor, %struct.tl_constructor* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @tl_function_tree, align 4
  %198 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  %199 = call i32 (...) @lrand48()
  %200 = call i32 @tree_insert_tl_constructor(i32 %197, %struct.tl_constructor* %198, i32 %199)
  store i32 %200, i32* @tl_function_tree, align 4
  %201 = load i32, i32* @total_functions_num, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @total_functions_num, align 4
  %203 = load %struct.tl_constructor*, %struct.tl_constructor** %15, align 8
  store %struct.tl_constructor* %203, %struct.tl_constructor** %5, align 8
  br label %204

204:                                              ; preds = %192, %122
  %205 = load %struct.tl_constructor*, %struct.tl_constructor** %5, align 8
  ret %struct.tl_constructor* %205
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @tree_lookup_tl_constructor(i32, %struct.tl_constructor*) #1

declare dso_local i32 @TL_ERROR(i8*, i8*) #1

declare dso_local i32 @zfree(i8*, i32) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @tree_insert_tl_constructor(i32, %struct.tl_constructor*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
