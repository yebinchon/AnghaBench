; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_write_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.index_header* }
%struct.index_header = type { i8*, i8*, i8* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__, %struct.TYPE_18__, i32*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@INDEX_VERSION_NUMBER_EXT = common dso_local global i64 0, align 8
@INDEX_VERSION_NUMBER_LB = common dso_local global i64 0, align 8
@INDEX_HEADER_SIG = common dso_local global i64 0, align 8
@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, i32*)* @write_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_index(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.index_header, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %13 = icmp ne %struct.TYPE_21__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INDEX_VERSION_NUMBER_EXT, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = call i32 @is_index_extended(%struct.TYPE_21__* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @INDEX_VERSION_NUMBER_EXT, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @INDEX_VERSION_NUMBER_LB, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %11, align 8
  br label %41

37:                                               ; preds = %17
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i64, i64* @INDEX_HEADER_SIG, align 8
  %43 = call i8* @htonl(i64 %42)
  %44 = getelementptr inbounds %struct.index_header, %struct.index_header* %9, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i8* @htonl(i64 %45)
  %47 = getelementptr inbounds %struct.index_header, %struct.index_header* %9, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @htonl(i64 %51)
  %53 = getelementptr inbounds %struct.index_header, %struct.index_header* %9, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @git_filebuf_write(i32* %54, %struct.index_header* %9, i32 24)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %114

58:                                               ; preds = %41
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @write_entries(%struct.TYPE_21__* %59, i32* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %114

64:                                               ; preds = %58
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @write_tree_extension(%struct.TYPE_21__* %70, i32* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %114

75:                                               ; preds = %69, %64
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @write_name_extension(%struct.TYPE_21__* %82, i32* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %114

87:                                               ; preds = %81, %75
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 @write_reuc_extension(%struct.TYPE_21__* %94, i32* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %114

99:                                               ; preds = %93, %87
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @git_filebuf_hash(%struct.TYPE_20__* %8, i32* %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = call i32 @git_oid_cpy(%struct.TYPE_20__* %102, %struct.TYPE_20__* %8)
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %106 = load %struct.index_header*, %struct.index_header** %105, align 8
  %107 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %108 = call i64 @git_filebuf_write(i32* %104, %struct.index_header* %106, i32 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %114

111:                                              ; preds = %99
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = call i32 @clear_uptodate(%struct.TYPE_21__* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %110, %98, %86, %74, %63, %57
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_index_extended(%struct.TYPE_21__*) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @git_filebuf_write(i32*, %struct.index_header*, i32) #1

declare dso_local i64 @write_entries(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @write_tree_extension(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @write_name_extension(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @write_reuc_extension(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @git_filebuf_hash(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @git_oid_cpy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @clear_uptodate(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
