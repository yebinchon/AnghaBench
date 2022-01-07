; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_shorten_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid_shorten_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to shorten OID - OID set full\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to shorten OID - invalid hex value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_oid_shorten_add(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %18 = call i32 @git_error_set(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %146

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  br label %146

26:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %128, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %131

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @git__fromhex(i8 signext %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %42 = call i32 @git_error_set(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %146

43:                                               ; preds = %31
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @git__fromhex(i8 signext %61)
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call %struct.TYPE_6__* @push_leaf(%struct.TYPE_7__* %57, i64 %58, i32 %62, i8* %64)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %10, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = icmp eq %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %51
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %75 = call i32 @git_error_set(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  store i32 -1, i32* %3, align 4
  br label %146

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %78
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = call %struct.TYPE_6__* @push_leaf(%struct.TYPE_7__* %88, i64 %89, i32 %90, i8* %95)
  %97 = icmp eq %struct.TYPE_6__* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %105 = call i32 @git_error_set(i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  store i32 -1, i32* %3, align 4
  br label %146

107:                                              ; preds = %87
  br label %131

108:                                              ; preds = %78
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  store i32 0, i32* %7, align 4
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 0, %119
  store i64 %120, i64* %8, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %120, i64* %126, align 8
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %118, %108
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %27

131:                                              ; preds = %107, %27
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %133, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %138, %131
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %106, %76, %40, %22, %16
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__fromhex(i8 signext) #1

declare dso_local %struct.TYPE_6__* @push_leaf(%struct.TYPE_7__*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
