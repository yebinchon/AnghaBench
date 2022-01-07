; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_dependency_chain.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_dependency_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.pack_chain_elem = type { i64, i64, i64, i64 }
%struct.git_pack_file = type { i32, i32 }

@GIT_ARRAY_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SMALL_STACK_SIZE = common dso_local global i64 0, align 8
@GIT_OBJECT_OFS_DELTA = common dso_local global i64 0, align 8
@GIT_OBJECT_REF_DELTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"delta offset is zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i64*, %struct.pack_chain_elem*, i64*, %struct.git_pack_file*, i64)* @pack_dependency_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_dependency_chain(%struct.TYPE_8__* %0, i32** %1, i64* %2, %struct.pack_chain_elem* %3, i64* %4, %struct.git_pack_file* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.pack_chain_elem*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.git_pack_file*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.pack_chain_elem*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i64* %2, i64** %11, align 8
  store %struct.pack_chain_elem* %3, %struct.pack_chain_elem** %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.git_pack_file* %5, %struct.git_pack_file** %14, align 8
  store i64 %6, i64* %15, align 8
  %27 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %17, align 8
  %28 = load i64, i64* %15, align 8
  store i64 %28, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %23, align 8
  br label %29

29:                                               ; preds = %7, %132
  store i32* null, i32** %26, align 8
  %30 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %31 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %30, i32 0, i32 1
  %32 = load i64, i64* %15, align 8
  %33 = call i32* @cache_get(i32* %31, i64 %32)
  store i32* %33, i32** %26, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32*, i32** %26, align 8
  %37 = load i32**, i32*** %10, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  br label %139

40:                                               ; preds = %29
  %41 = load i64, i64* %23, align 8
  %42 = load i64, i64* @SMALL_STACK_SIZE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i64, i64* %23, align 8
  %46 = bitcast %struct.TYPE_8__* %16 to { i64, i32 }*
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %46, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @git_array_init_to_size(i64 %48, i32 %50, i64 %45)
  %52 = bitcast %struct.TYPE_8__* %16 to { i64, i32 }*
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @GIT_ERROR_CHECK_ARRAY(i64 %54, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %12, align 8
  %61 = load i64, i64* %23, align 8
  %62 = mul i64 %61, 32
  %63 = call i32 @memcpy(i32 %59, %struct.pack_chain_elem* %60, i64 %62)
  %64 = load i64, i64* %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  store i32 1, i32* %21, align 4
  br label %66

66:                                               ; preds = %44, %40
  %67 = load i64, i64* %15, align 8
  store i64 %67, i64* %18, align 8
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %12, align 8
  %72 = load i64, i64* %23, align 8
  %73 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %71, i64 %72
  store %struct.pack_chain_elem* %73, %struct.pack_chain_elem** %25, align 8
  br label %85

74:                                               ; preds = %66
  %75 = bitcast %struct.TYPE_8__* %16 to { i64, i32 }*
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.pack_chain_elem* @git_array_alloc(i64 %77, i32 %79)
  store %struct.pack_chain_elem* %80, %struct.pack_chain_elem** %25, align 8
  %81 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %82 = icmp ne %struct.pack_chain_elem* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 -1, i32* %20, align 4
  br label %147

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %88 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %90 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %89, i32 0, i32 0
  %91 = call i32 @git_packfile_unpack_header(i64* %22, i64* %24, i32* %90, i32** %17, i64* %18)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %147

95:                                               ; preds = %85
  %96 = load i64, i64* %18, align 8
  %97 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %98 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %101 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %104 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %107 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %24, align 8
  %109 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %95
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %139

116:                                              ; preds = %111, %95
  %117 = load %struct.git_pack_file*, %struct.git_pack_file** %14, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i64 @get_delta_base(%struct.git_pack_file* %117, i32** %17, i64* %18, i64 %118, i64 %119)
  store i64 %120, i64* %19, align 8
  %121 = call i32 @git_mwindow_close(i32** %17)
  %122 = load i64, i64* %19, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 @packfile_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %125, i32* %20, align 4
  br label %147

126:                                              ; preds = %116
  %127 = load i64, i64* %19, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, i64* %19, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %20, align 4
  br label %147

132:                                              ; preds = %126
  %133 = load i64, i64* %18, align 8
  %134 = load %struct.pack_chain_elem*, %struct.pack_chain_elem** %25, align 8
  %135 = getelementptr inbounds %struct.pack_chain_elem, %struct.pack_chain_elem* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %19, align 8
  store i64 %136, i64* %15, align 8
  %137 = load i64, i64* %23, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %23, align 8
  br label %29

139:                                              ; preds = %115, %35
  %140 = load i64, i64* %23, align 8
  %141 = add i64 %140, 1
  %142 = load i64*, i64** %13, align 8
  store i64 %141, i64* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = bitcast %struct.TYPE_8__* %143 to i8*
  %145 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 16, i1 false)
  %146 = load i32, i32* %20, align 4
  store i32 %146, i32* %8, align 4
  br label %155

147:                                              ; preds = %129, %124, %94, %83
  %148 = bitcast %struct.TYPE_8__* %16 to { i64, i32 }*
  %149 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @git_array_clear(i64 %150, i32 %152)
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %147, %139
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cache_get(i32*, i64) #2

declare dso_local i32 @git_array_init_to_size(i64, i32, i64) #2

declare dso_local i32 @GIT_ERROR_CHECK_ARRAY(i64, i32) #2

declare dso_local i32 @memcpy(i32, %struct.pack_chain_elem*, i64) #2

declare dso_local %struct.pack_chain_elem* @git_array_alloc(i64, i32) #2

declare dso_local i32 @git_packfile_unpack_header(i64*, i64*, i32*, i32**, i64*) #2

declare dso_local i64 @get_delta_base(%struct.git_pack_file*, i32**, i64*, i64, i64) #2

declare dso_local i32 @git_mwindow_close(i32**) #2

declare dso_local i32 @packfile_error(i8*) #2

declare dso_local i32 @git_array_clear(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
