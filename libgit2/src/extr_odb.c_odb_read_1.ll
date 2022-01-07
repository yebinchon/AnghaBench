; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_read_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_odb_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)*, i32 }

@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@git_odb__strict_hash_verification = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_15__*, i32*, i32)* @odb_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odb_read_1(i32** %0, %struct.TYPE_15__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @odb_read_hardcoded(i32* %14, %struct.TYPE_13__* %11, i32* %21)
  store i32 %22, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %5, align 4
  br label %137

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %4
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %87, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i1 [ false, %28 ], [ %38, %35 ]
  br i1 %40, label %41, label %90

41:                                               ; preds = %39
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call %struct.TYPE_16__* @git_vector_get(%struct.TYPE_12__* %43, i64 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %16, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %17, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %87

57:                                               ; preds = %51, %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)** %59, align 8
  %61 = icmp ne i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)*, i32 (i32*, i32*, i32*, %struct.TYPE_14__*, i32*)** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 %65(i32* %66, i32* %67, i32* %68, %struct.TYPE_14__* %69, i32* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @GIT_ENOTFOUND, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %62
  br label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %5, align 4
  br label %137

85:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %79, %56
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %28

90:                                               ; preds = %39
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %94, i32* %5, align 4
  br label %137

95:                                               ; preds = %90
  %96 = load i64, i64* @git_odb__strict_hash_verification, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @git_odb_hash(i32* %13, i32 %100, i32 %102, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %128

108:                                              ; preds = %98
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @git_oid_equal(i32* %109, i32* %13)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @git_odb__error_mismatch(i32* %113, i32* %13)
  store i32 %114, i32* %15, align 4
  br label %128

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %95
  %117 = call i32 (...) @git_error_clear()
  %118 = load i32*, i32** %8, align 8
  %119 = call i32* @odb_object__alloc(i32* %118, %struct.TYPE_13__* %11)
  store i32* %119, i32** %12, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 -1, i32* %15, align 4
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = call i32 @odb_cache(%struct.TYPE_15__* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = call i32* @git_cache_store_raw(i32 %124, i32* %125)
  %127 = load i32**, i32*** %6, align 8
  store i32* %126, i32** %127, align 8
  br label %128

128:                                              ; preds = %122, %121, %112, %107
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @git__free(i32 %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %93, %83, %24
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @odb_read_hardcoded(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_16__* @git_vector_get(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @git_odb_hash(i32*, i32, i32, i32) #1

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @git_odb__error_mismatch(i32*, i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32* @odb_object__alloc(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @git_cache_store_raw(i32, i32*) #1

declare dso_local i32 @odb_cache(%struct.TYPE_15__*) #1

declare dso_local i32 @git__free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
