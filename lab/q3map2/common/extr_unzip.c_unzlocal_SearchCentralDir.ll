; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_SearchCentralDir.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_SearchCentralDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@BUFREADCOMMENT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@unz_GAME_QL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @unzlocal_SearchCentralDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unzlocal_SearchCentralDir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 65535, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @SEEK_END, align 4
  %15 = call i64 @fseek(i32* %13, i32 0, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %149

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ftell(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* @BUFREADCOMMENT, align 4
  %28 = add nsw i32 %27, 4
  %29 = call i64 @safe_malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %149

34:                                               ; preds = %26
  store i32 4, i32* %6, align 4
  br label %35

35:                                               ; preds = %144, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %145

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BUFREADCOMMENT, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @BUFREADCOMMENT, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @BUFREADCOMMENT, align 4
  %56 = add nsw i32 %55, 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @BUFREADCOMMENT, align 4
  %63 = add nsw i32 %62, 4
  br label %68

64:                                               ; preds = %51
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ]
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i64 @fseek(i32* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %145

76:                                               ; preds = %68
  %77 = load i32, i32* @unz_GAME_QL, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @fread_ql(i8* %80, i32 %81, i32 1, i32* %82)
  store i64 %83, i64* %12, align 8
  br label %89

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @fread(i8* %85, i32 %86, i32 1, i32* %87)
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %145

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 3
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %139, %93
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 80
  br i1 %107, label %108, label %139

108:                                              ; preds = %100
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 75
  br i1 %116, label %117, label %139

117:                                              ; preds = %108
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %139

126:                                              ; preds = %117
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 6
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %8, align 4
  br label %140

139:                                              ; preds = %126, %117, %108, %100
  br label %96

140:                                              ; preds = %135, %96
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  br label %35

145:                                              ; preds = %143, %92, %75, %35
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %33, %17
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @safe_malloc(i32) #1

declare dso_local i64 @fread_ql(i8*, i32, i32, i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
