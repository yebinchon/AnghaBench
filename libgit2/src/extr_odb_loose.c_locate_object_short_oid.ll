; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_locate_object_short_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_locate_object_short_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32, i64, i8*, i64 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no matching loose object for prefix\00", align 1
@fn_locate_object_short_oid = common dso_local global i32 0, align 4
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"multiple matches in loose objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32*, i64)* @locate_object_short_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_object_short_oid(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %22, i32 %23)
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %25, i32 3)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @git_buf_grow(%struct.TYPE_16__* %27, i64 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %151

32:                                               ; preds = %5
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @git_buf_set(%struct.TYPE_16__* %33, i8* %34, i64 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = call i32 @git_path_to_dir(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = call i8* @git_buf_len(%struct.TYPE_16__* %39)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @git_oid_fmt(i8* %44, i32* %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i64 @git_buf_put(%struct.TYPE_16__* %47, i8* %50, i32 3)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %151

54:                                               ; preds = %32
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 47, i8* %63, align 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @git_path_isdir(i8* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %70, i64 %71)
  store i32 %72, i32* %6, align 4
  br label %151

73:                                               ; preds = %54
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = call i8* @git_buf_len(%struct.TYPE_16__* %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store i8* %75, i8** %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = load i32, i32* @fn_locate_object_short_oid, align 4
  %82 = call i32 @git_path_direach(%struct.TYPE_16__* %80, i32 0, i32 %81, %struct.TYPE_14__* %15)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %6, align 4
  br label %151

91:                                               ; preds = %85, %73
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %96, i64 %97)
  store i32 %98, i32* %6, align 4
  br label %151

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %104, i32* %6, align 4
  br label %151

105:                                              ; preds = %99
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @git_oid_fromstr(i32* %106, i8* %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %6, align 4
  br label %151

115:                                              ; preds = %105
  %116 = load i64, i64* %13, align 8
  %117 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %118 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %116, i32 %117)
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %119, i32 2)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @git_buf_truncate(%struct.TYPE_16__* %121, i64 %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = load i64, i64* %14, align 8
  %126 = call i64 @git_buf_grow(%struct.TYPE_16__* %124, i64 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 -1, i32* %6, align 4
  br label %151

129:                                              ; preds = %115
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @git_oid_pathfmt(i8* %134, i32* %135)
  %137 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %145, i64 %149
  store i8 0, i8* %150, align 1
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %129, %128, %113, %103, %95, %89, %69, %53, %31
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_grow(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @git_buf_set(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @git_path_to_dir(%struct.TYPE_16__*) #1

declare dso_local i8* @git_buf_len(%struct.TYPE_16__*) #1

declare dso_local i32 @git_oid_fmt(i8*, i32*) #1

declare dso_local i64 @git_buf_put(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i64) #1

declare dso_local i32 @git_path_direach(%struct.TYPE_16__*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @git_odb__error_ambiguous(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_buf_truncate(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @git_oid_pathfmt(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
