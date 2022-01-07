; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_trie_find.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_trie_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32, i8*, i64, %struct.trie** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trie*, i8*, i32 (i8*, i64, i8*)*, i8*)* @trie_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trie_find(%struct.trie* %0, i8* %1, i32 (i8*, i64, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.trie*, align 8
  store %struct.trie* %0, %struct.trie** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i64, i8*)* %2, i32 (i8*, i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %4
  %17 = load %struct.trie*, %struct.trie** %6, align 8
  %18 = getelementptr inbounds %struct.trie, %struct.trie* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.trie*, %struct.trie** %6, align 8
  %23 = getelementptr inbounds %struct.trie, %struct.trie* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.trie*, %struct.trie** %6, align 8
  %30 = getelementptr inbounds %struct.trie, %struct.trie* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 %27(i8* %28, i64 %31, i8* %32)
  store i32 %33, i32* %5, align 4
  br label %171

34:                                               ; preds = %21, %16
  store i32 -1, i32* %5, align 4
  br label %171

35:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %80, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.trie*, %struct.trie** %6, align 8
  %39 = getelementptr inbounds %struct.trie, %struct.trie* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %80

62:                                               ; preds = %50, %42
  %63 = load %struct.trie*, %struct.trie** %6, align 8
  %64 = getelementptr inbounds %struct.trie, %struct.trie* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %70, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %171

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %36

83:                                               ; preds = %36
  %84 = load i32, i32* %10, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %83
  %92 = load %struct.trie*, %struct.trie** %6, align 8
  %93 = getelementptr inbounds %struct.trie, %struct.trie* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %8, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load %struct.trie*, %struct.trie** %6, align 8
  %100 = getelementptr inbounds %struct.trie, %struct.trie* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 %97(i8* %98, i64 %101, i8* %102)
  store i32 %103, i32* %5, align 4
  br label %171

104:                                              ; preds = %91
  store i32 -1, i32* %5, align 4
  br label %171

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %120, %105
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 47
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br label %118

118:                                              ; preds = %112, %106
  %119 = phi i1 [ false, %106 ], [ %117, %112 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  br label %106

123:                                              ; preds = %118
  %124 = load %struct.trie*, %struct.trie** %6, align 8
  %125 = getelementptr inbounds %struct.trie, %struct.trie* %124, i32 0, i32 3
  %126 = load %struct.trie**, %struct.trie*** %125, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.trie*, %struct.trie** %126, i64 %129
  %131 = load %struct.trie*, %struct.trie** %130, align 8
  store %struct.trie* %131, %struct.trie** %12, align 8
  %132 = load %struct.trie*, %struct.trie** %12, align 8
  %133 = icmp ne %struct.trie* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load %struct.trie*, %struct.trie** %12, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %8, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @trie_find(%struct.trie* %135, i8* %137, i32 (i8*, i64, i8*)* %138, i8* %139)
  store i32 %140, i32* %11, align 4
  br label %142

141:                                              ; preds = %123
  store i32 -1, i32* %11, align 4
  br label %142

142:                                              ; preds = %141, %134
  %143 = load i32, i32* %11, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %7, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 47
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i8*, i8** %7, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %142
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %5, align 4
  br label %171

157:                                              ; preds = %150, %145
  %158 = load %struct.trie*, %struct.trie** %6, align 8
  %159 = getelementptr inbounds %struct.trie, %struct.trie* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %8, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.trie*, %struct.trie** %6, align 8
  %166 = getelementptr inbounds %struct.trie, %struct.trie* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 %163(i8* %164, i64 %167, i8* %168)
  store i32 %169, i32* %5, align 4
  br label %171

170:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %162, %155, %104, %96, %78, %34, %26
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
