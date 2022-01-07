; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_find_ceiling_dir_offset.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_find_ceiling_dir_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PATH_MAX = common dso_local global i32 0, align 4
@GIT_PATH_LIST_SEPARATOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @find_ceiling_dir_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_ceiling_dir_offset(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @GIT_PATH_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @GIT_PATH_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %12, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @assert(i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @git_path_root(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %2
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %141

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %9, align 8
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %128, %37
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %60, %43
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @GIT_PATH_LIST_SEPARATOR, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %53, %55
  br label %57

57:                                               ; preds = %50, %45
  %58 = phi i1 [ false, %45 ], [ %56, %50 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  br label %45

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %11, align 8
  %73 = icmp uge i64 %72, %17
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @git_path_root(i8* %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %71, %63
  br label %128

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @strncpy(i8* %19, i8* %80, i64 %81)
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %19, i64 %83
  store i8 0, i8* %84, align 1
  %85 = call i32* @p_realpath(i8* %19, i8* %23)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %128

88:                                               ; preds = %79
  %89 = call i64 @strlen(i8* %23)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i64, i64* %11, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %23, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %11, align 8
  %102 = getelementptr inbounds i8, i8* %19, i64 %101
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %99, %92, %88
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @strncmp(i8* %104, i8* %23, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 47
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load i8*, i8** %4, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115, %108
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i64, i64* %11, align 8
  store i64 %126, i64* %12, align 8
  br label %127

127:                                              ; preds = %125, %121, %115, %103
  br label %128

128:                                              ; preds = %127, %87, %78
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %9, align 8
  br label %39

131:                                              ; preds = %39
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = icmp ule i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i64, i64* %13, align 8
  br label %139

137:                                              ; preds = %131
  %138 = load i64, i64* %12, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i64 [ %136, %135 ], [ %138, %137 ]
  store i64 %140, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %141

141:                                              ; preds = %139, %35
  %142 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i64, i64* %3, align 8
  ret i64 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i8*) #2

declare dso_local i32 @git_path_root(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32* @p_realpath(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
