; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_library.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_block_bind_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }

@OP_HAS_BINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@OP_HAS_VARIABLE = common dso_local global i32 0, align 4
@OP_HAS_CONSTANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @block_bind_library(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %18, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %19 = load i32, i32* @OP_HAS_BINDING, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %28

25:                                               ; preds = %4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 2
  %32 = add nsw i32 %31, 1
  %33 = call i8* @jv_mem_alloc(i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %28
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcpy(i8* %45, i8* %46)
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %44, %38, %28
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i32 @block_has_only_binders(%struct.TYPE_10__* %58, i32 %56)
  %60 = call i32 @assert(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %13, align 8
  br label %63

63:                                               ; preds = %124, %55
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %128

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %15, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = call i8* @jv_mem_alloc(i32 %77)
  store i8* %78, i8** %16, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i8* %85, i8* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_12__* @opcode_describe(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %97 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %66
  %102 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %103 = load i32, i32* @OP_HAS_BINDING, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %101, %66
  %106 = load i8*, i8** %16, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = call i32 @inst_block(%struct.TYPE_10__* %109)
  %111 = load i32, i32* %14, align 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = call i64 @block_bind_subblock(i32 %110, %struct.TYPE_10__* %113, i32 %111, i32 0)
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  %119 = load i8*, i8** %15, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @free(i8* %122)
  br label %124

124:                                              ; preds = %105
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %13, align 8
  br label %63

128:                                              ; preds = %63
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @free(i8* %129)
  %131 = bitcast %struct.TYPE_11__* %5 to i8*
  %132 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 8, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  ret %struct.TYPE_10__* %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @jv_mem_alloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_has_only_binders(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_12__* @opcode_describe(i32) #1

declare dso_local i64 @block_bind_subblock(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @inst_block(%struct.TYPE_10__*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
