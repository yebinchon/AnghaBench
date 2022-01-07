; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_header_table_add.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_header_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_hpack_header_table_entry_t = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, %struct.st_h2o_hpack_header_table_entry_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_h2o_hpack_header_table_entry_t* (%struct.TYPE_4__*, i64, i64)* @header_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_h2o_hpack_header_table_entry_t* @header_table_add(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br label %27

27:                                               ; preds = %17, %12
  %28 = phi i1 [ false, %12 ], [ %26, %17 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = call i32 @header_table_evict_one(%struct.TYPE_4__* %30)
  br label %12

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %39, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = call i32 @header_table_evict_one(%struct.TYPE_4__* %40)
  br label %33

42:                                               ; preds = %33
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store %struct.st_h2o_hpack_header_table_entry_t* null, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  br label %172

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %146

74:                                               ; preds = %61
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %77, 2
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ult i64 %79, 16
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i64 16, i64* %8, align 8
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i64, i64* %8, align 8
  %84 = mul i64 %83, 4
  %85 = call %struct.st_h2o_hpack_header_table_entry_t* @h2o_mem_alloc(i64 %84)
  store %struct.st_h2o_hpack_header_table_entry_t* %85, %struct.st_h2o_hpack_header_table_entry_t** %9, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %94

94:                                               ; preds = %113, %90
  %95 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %9, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %95, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %100, i64 %101
  %103 = bitcast %struct.st_h2o_hpack_header_table_entry_t* %97 to i8*
  %104 = bitcast %struct.st_h2o_hpack_header_table_entry_t* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = urem i64 %108, %111
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %94
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %94, label %119

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %82
  %121 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %9, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %121, i64 %124
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = mul i64 4, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memset(%struct.st_h2o_hpack_header_table_entry_t* %125, i32 0, i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 5
  %136 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %135, align 8
  %137 = call i32 @free(%struct.st_h2o_hpack_header_table_entry_t* %136)
  %138 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %9, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  store %struct.st_h2o_hpack_header_table_entry_t* %138, %struct.st_h2o_hpack_header_table_entry_t** %140, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %120, %61
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %153, %156
  %158 = sub i64 %157, 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = urem i64 %158, %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %167, i64 %170
  store %struct.st_h2o_hpack_header_table_entry_t* %171, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  br label %172

172:                                              ; preds = %146, %59
  %173 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  ret %struct.st_h2o_hpack_header_table_entry_t* %173
}

declare dso_local i32 @header_table_evict_one(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.st_h2o_hpack_header_table_entry_t* @h2o_mem_alloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.st_h2o_hpack_header_table_entry_t*, i32, i32) #1

declare dso_local i32 @free(%struct.st_h2o_hpack_header_table_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
