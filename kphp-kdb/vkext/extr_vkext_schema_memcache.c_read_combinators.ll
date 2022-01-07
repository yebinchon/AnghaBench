; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinators.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_combinators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator = type { i32, %struct.tl_combinator*, i8* }
%struct.tl_type = type { i64, i64, %struct.tl_combinator** }

@tl_constructors = common dso_local global i32 0, align 4
@tl_functions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_combinator* @read_combinators(i32 %0) #0 {
  %2 = alloca %struct.tl_combinator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_combinator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_type*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call %struct.tl_combinator* @zzmalloc0(i32 24)
  store %struct.tl_combinator* %7, %struct.tl_combinator** %4, align 8
  %8 = call i8* (...) @tl_parse_int()
  %9 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %10 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = call i64 (...) @tl_parse_error()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %15 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %14, i32 0, i32 1
  %16 = call i64 @tl_parse_string(%struct.tl_combinator** %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %1
  %19 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %20 = call i32 @zzfree(%struct.tl_combinator* %19, i32 24)
  store %struct.tl_combinator* null, %struct.tl_combinator** %2, align 8
  br label %137

21:                                               ; preds = %13
  %22 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %23 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %22, i32 0, i32 1
  %24 = load %struct.tl_combinator*, %struct.tl_combinator** %23, align 8
  %25 = call i32 @strlen(%struct.tl_combinator* %24)
  %26 = call i32 @ADD_MALLOC(i32 %25)
  %27 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %28 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %27, i32 0, i32 1
  %29 = load %struct.tl_combinator*, %struct.tl_combinator** %28, align 8
  %30 = call i32 @strlen(%struct.tl_combinator* %29)
  %31 = call i32 @ADD_PMALLOC(i32 %30)
  %32 = call i8* (...) @tl_parse_int()
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.tl_type* @tl_type_get_by_name(i32 %34)
  store %struct.tl_type* %35, %struct.tl_type** %6, align 8
  %36 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %37 = icmp ne %struct.tl_type* %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %60

44:                                               ; preds = %41, %38
  %45 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %46 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %45, i32 0, i32 1
  %47 = load %struct.tl_combinator*, %struct.tl_combinator** %46, align 8
  %48 = call i32 @strlen(%struct.tl_combinator* %47)
  %49 = call i32 @ADD_PFREE(i32 %48)
  %50 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %51 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %50, i32 0, i32 1
  %52 = load %struct.tl_combinator*, %struct.tl_combinator** %51, align 8
  %53 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %54 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %53, i32 0, i32 1
  %55 = load %struct.tl_combinator*, %struct.tl_combinator** %54, align 8
  %56 = call i32 @strlen(%struct.tl_combinator* %55)
  %57 = call i32 @zzfree(%struct.tl_combinator* %52, i32 %56)
  %58 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %59 = call i32 @zzfree(%struct.tl_combinator* %58, i32 24)
  store %struct.tl_combinator* null, %struct.tl_combinator** %2, align 8
  br label %137

60:                                               ; preds = %41, %21
  %61 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %62 = icmp ne %struct.tl_type* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 3
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ false, %63 ], [ %68, %66 ]
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi i1 [ true, %60 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %111

77:                                               ; preds = %71
  %78 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %79 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %82 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %87 = call i32 @zzfree(%struct.tl_combinator* %86, i32 24)
  store %struct.tl_combinator* null, %struct.tl_combinator** %2, align 8
  br label %137

88:                                               ; preds = %77
  %89 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %90 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %93 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %99 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %100 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %99, i32 0, i32 2
  %101 = load %struct.tl_combinator**, %struct.tl_combinator*** %100, align 8
  %102 = load %struct.tl_type*, %struct.tl_type** %6, align 8
  %103 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = getelementptr inbounds %struct.tl_combinator*, %struct.tl_combinator** %101, i64 %104
  store %struct.tl_combinator* %98, %struct.tl_combinator** %106, align 8
  %107 = load i32, i32* @tl_constructors, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @tl_constructors, align 4
  %109 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %110 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %124

111:                                              ; preds = %71
  %112 = load i32, i32* %3, align 4
  %113 = icmp eq i32 %112, 3
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %117 = call i32 @tl_fun_insert_id(%struct.tl_combinator* %116)
  %118 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %119 = call i32 @tl_fun_insert_name(%struct.tl_combinator* %118)
  %120 = load i32, i32* @tl_functions, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @tl_functions, align 4
  %122 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %123 = getelementptr inbounds %struct.tl_combinator, %struct.tl_combinator* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %111, %88
  %125 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %126 = call i64 @read_combinator_left(%struct.tl_combinator* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store %struct.tl_combinator* null, %struct.tl_combinator** %2, align 8
  br label %137

129:                                              ; preds = %124
  %130 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  %131 = call i64 @read_combinator_right(%struct.tl_combinator* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store %struct.tl_combinator* null, %struct.tl_combinator** %2, align 8
  br label %137

134:                                              ; preds = %129
  %135 = call i32 @ADD_PMALLOC(i32 24)
  %136 = load %struct.tl_combinator*, %struct.tl_combinator** %4, align 8
  store %struct.tl_combinator* %136, %struct.tl_combinator** %2, align 8
  br label %137

137:                                              ; preds = %134, %133, %128, %85, %44, %18
  %138 = load %struct.tl_combinator*, %struct.tl_combinator** %2, align 8
  ret %struct.tl_combinator* %138
}

declare dso_local %struct.tl_combinator* @zzmalloc0(i32) #1

declare dso_local i8* @tl_parse_int(...) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local i64 @tl_parse_string(%struct.tl_combinator**) #1

declare dso_local i32 @zzfree(%struct.tl_combinator*, i32) #1

declare dso_local i32 @ADD_MALLOC(i32) #1

declare dso_local i32 @strlen(%struct.tl_combinator*) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local %struct.tl_type* @tl_type_get_by_name(i32) #1

declare dso_local i32 @ADD_PFREE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_fun_insert_id(%struct.tl_combinator*) #1

declare dso_local i32 @tl_fun_insert_name(%struct.tl_combinator*) #1

declare dso_local i64 @read_combinator_left(%struct.tl_combinator*) #1

declare dso_local i64 @read_combinator_right(%struct.tl_combinator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
