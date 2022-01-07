; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_try_remove_empty_parents.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_try_remove_empty_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.files_ref_store = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REMOVE_EMPTY_PARENTS_REF = common dso_local global i32 0, align 4
@REMOVE_EMPTY_PARENTS_REFLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, i8*, i32)* @try_remove_empty_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_remove_empty_parents(%struct.files_ref_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.files_ref_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %14)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %47, %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 47
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %22

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %38

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %18

50:                                               ; preds = %18
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %148, %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @REMOVE_EMPTY_PARENTS_REF, align 4
  %60 = load i32, i32* @REMOVE_EMPTY_PARENTS_REFLOG, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %149

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ugt i8* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 47
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %10, align 8
  br label %65

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ugt i8* %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i1 [ false, %80 ], [ %89, %84 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %10, align 8
  br label %80

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %149

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %101 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @strbuf_setlen(%struct.strbuf* %7, i32 %107)
  %109 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %110 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @files_ref_path(%struct.files_ref_store* %110, %struct.strbuf* %8, i8* %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @REMOVE_EMPTY_PARENTS_REF, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @rmdir(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @REMOVE_EMPTY_PARENTS_REF, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %123, %118, %100
  %129 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %130 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @files_reflog_path(%struct.files_ref_store* %130, %struct.strbuf* %8, i8* %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @REMOVE_EMPTY_PARENTS_REFLOG, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @rmdir(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @REMOVE_EMPTY_PARENTS_REFLOG, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %143, %138, %128
  br label %57

149:                                              ; preds = %99, %57
  %150 = call i32 @strbuf_release(%struct.strbuf* %7)
  %151 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i64 @rmdir(i8*) #2

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
