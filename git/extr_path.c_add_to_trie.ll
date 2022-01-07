; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_add_to_trie.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_add_to_trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32, i8*, i32*, %struct.trie** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trie*, i8*, i8*)* @add_to_trie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_to_trie(%struct.trie* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trie*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trie*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.trie* %0, %struct.trie** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load %struct.trie*, %struct.trie** %5, align 8
  %16 = getelementptr inbounds %struct.trie, %struct.trie* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.trie*, %struct.trie** %5, align 8
  %22 = getelementptr inbounds %struct.trie, %struct.trie* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %4, align 8
  br label %200

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %129, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.trie*, %struct.trie** %5, align 8
  %28 = getelementptr inbounds %struct.trie, %struct.trie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %132

31:                                               ; preds = %25
  %32 = load %struct.trie*, %struct.trie** %5, align 8
  %33 = getelementptr inbounds %struct.trie, %struct.trie* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %129

48:                                               ; preds = %31
  %49 = call %struct.trie* @xmalloc(i32 32)
  store %struct.trie* %49, %struct.trie** %8, align 8
  %50 = load %struct.trie*, %struct.trie** %8, align 8
  %51 = getelementptr inbounds %struct.trie, %struct.trie* %50, i32 0, i32 3
  %52 = load %struct.trie**, %struct.trie*** %51, align 8
  %53 = load %struct.trie*, %struct.trie** %5, align 8
  %54 = getelementptr inbounds %struct.trie, %struct.trie* %53, i32 0, i32 3
  %55 = load %struct.trie**, %struct.trie*** %54, align 8
  %56 = call i32 @memcpy(%struct.trie** %52, %struct.trie** %55, i32 8)
  %57 = load %struct.trie*, %struct.trie** %5, align 8
  %58 = getelementptr inbounds %struct.trie, %struct.trie* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.trie*, %struct.trie** %8, align 8
  %64 = getelementptr inbounds %struct.trie, %struct.trie* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.trie*, %struct.trie** %8, align 8
  %66 = getelementptr inbounds %struct.trie, %struct.trie* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %48
  %70 = load %struct.trie*, %struct.trie** %5, align 8
  %71 = getelementptr inbounds %struct.trie, %struct.trie* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load %struct.trie*, %struct.trie** %8, align 8
  %78 = getelementptr inbounds %struct.trie, %struct.trie* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @xstrndup(i8* %76, i32 %79)
  %81 = load %struct.trie*, %struct.trie** %8, align 8
  %82 = getelementptr inbounds %struct.trie, %struct.trie* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %69, %48
  %84 = load %struct.trie*, %struct.trie** %5, align 8
  %85 = getelementptr inbounds %struct.trie, %struct.trie* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.trie*, %struct.trie** %8, align 8
  %88 = getelementptr inbounds %struct.trie, %struct.trie* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.trie*, %struct.trie** %5, align 8
  %90 = getelementptr inbounds %struct.trie, %struct.trie* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.trie*, %struct.trie** %5, align 8
  %93 = getelementptr inbounds %struct.trie, %struct.trie* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.trie*, %struct.trie** %5, align 8
  %95 = getelementptr inbounds %struct.trie, %struct.trie* %94, i32 0, i32 3
  %96 = load %struct.trie**, %struct.trie*** %95, align 8
  %97 = call i32 @memset(%struct.trie** %96, i32 0, i32 8)
  %98 = load %struct.trie*, %struct.trie** %8, align 8
  %99 = load %struct.trie*, %struct.trie** %5, align 8
  %100 = getelementptr inbounds %struct.trie, %struct.trie* %99, i32 0, i32 3
  %101 = load %struct.trie**, %struct.trie*** %100, align 8
  %102 = load %struct.trie*, %struct.trie** %5, align 8
  %103 = getelementptr inbounds %struct.trie, %struct.trie* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds %struct.trie*, %struct.trie** %101, i64 %109
  store %struct.trie* %98, %struct.trie** %110, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8*, i8** %7, align 8
  %117 = call i8* @make_trie_node(i8* %115, i8* %116)
  %118 = bitcast i8* %117 to %struct.trie*
  %119 = load %struct.trie*, %struct.trie** %5, align 8
  %120 = getelementptr inbounds %struct.trie, %struct.trie* %119, i32 0, i32 3
  %121 = load %struct.trie**, %struct.trie*** %120, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds %struct.trie*, %struct.trie** %121, i64 %127
  store %struct.trie* %118, %struct.trie** %128, align 8
  store i8* null, i8** %4, align 8
  br label %200

129:                                              ; preds = %47
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %25

132:                                              ; preds = %25
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %190

139:                                              ; preds = %132
  %140 = load %struct.trie*, %struct.trie** %5, align 8
  %141 = getelementptr inbounds %struct.trie, %struct.trie* %140, i32 0, i32 3
  %142 = load %struct.trie**, %struct.trie*** %141, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.trie*, %struct.trie** %5, align 8
  %145 = getelementptr inbounds %struct.trie, %struct.trie* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct.trie*, %struct.trie** %142, i64 %150
  %152 = load %struct.trie*, %struct.trie** %151, align 8
  store %struct.trie* %152, %struct.trie** %8, align 8
  %153 = load %struct.trie*, %struct.trie** %8, align 8
  %154 = icmp ne %struct.trie* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %139
  %156 = load %struct.trie*, %struct.trie** %8, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.trie*, %struct.trie** %5, align 8
  %159 = getelementptr inbounds %struct.trie, %struct.trie* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8*, i8** %7, align 8
  %165 = call i8* @add_to_trie(%struct.trie* %156, i8* %163, i8* %164)
  store i8* %165, i8** %4, align 8
  br label %200

166:                                              ; preds = %139
  %167 = load i8*, i8** %6, align 8
  %168 = load %struct.trie*, %struct.trie** %5, align 8
  %169 = getelementptr inbounds %struct.trie, %struct.trie* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8*, i8** %7, align 8
  %175 = call i8* @make_trie_node(i8* %173, i8* %174)
  %176 = bitcast i8* %175 to %struct.trie*
  store %struct.trie* %176, %struct.trie** %8, align 8
  %177 = load %struct.trie*, %struct.trie** %8, align 8
  %178 = load %struct.trie*, %struct.trie** %5, align 8
  %179 = getelementptr inbounds %struct.trie, %struct.trie* %178, i32 0, i32 3
  %180 = load %struct.trie**, %struct.trie*** %179, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load %struct.trie*, %struct.trie** %5, align 8
  %183 = getelementptr inbounds %struct.trie, %struct.trie* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds %struct.trie*, %struct.trie** %180, i64 %188
  store %struct.trie* %177, %struct.trie** %189, align 8
  store i8* null, i8** %4, align 8
  br label %200

190:                                              ; preds = %132
  %191 = load %struct.trie*, %struct.trie** %5, align 8
  %192 = getelementptr inbounds %struct.trie, %struct.trie* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = bitcast i32* %193 to i8*
  store i8* %194, i8** %9, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.trie*, %struct.trie** %5, align 8
  %198 = getelementptr inbounds %struct.trie, %struct.trie* %197, i32 0, i32 2
  store i32* %196, i32** %198, align 8
  %199 = load i8*, i8** %9, align 8
  store i8* %199, i8** %4, align 8
  br label %200

200:                                              ; preds = %190, %166, %155, %83, %14
  %201 = load i8*, i8** %4, align 8
  ret i8* %201
}

declare dso_local %struct.trie* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.trie**, %struct.trie**, i32) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i32 @memset(%struct.trie**, i32, i32) #1

declare dso_local i8* @make_trie_node(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
