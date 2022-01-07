; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_write_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_write_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_12__*, i8*, i64, i32*)* @write_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tree(i32* %0, i32* %1, %struct.TYPE_12__* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = call i64 @git_index_entrycount(%struct.TYPE_12__* %27)
  store i64 %28, i64* %16, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %18, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call %struct.TYPE_10__* @git_tree_cache_get(i32 %33, i8* %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %19, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = call i32 @git_oid_cpy(i32* %44, i32* %46)
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @find_next_dir(i8* %48, %struct.TYPE_12__* %49, i64 %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %199

53:                                               ; preds = %38, %6
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @git_treebuilder_new(i32** %14, i32* %54, i32* null)
  store i32 %55, i32* %17, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %53
  store i32 -1, i32* %7, align 4
  br label %199

61:                                               ; preds = %57
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %181, %61
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %184

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call %struct.TYPE_11__* @git_index_get_byindex(%struct.TYPE_12__* %68, i64 %69)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %20, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = load i64, i64* %18, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %97, label %77

77:                                               ; preds = %67
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %18, align 8
  %83 = call i64 @memcmp(i8* %80, i8* %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %18, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 47
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %77, %67
  br label %184

98:                                               ; preds = %88, %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %18, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %21, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i8*, i8** %21, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %21, align 8
  br label %111

111:                                              ; preds = %108, %98
  %112 = load i8*, i8** %21, align 8
  %113 = call i8* @strchr(i8* %112, i8 signext 47)
  store i8* %113, i8** %22, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %167

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %22, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %120 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i8* @git__strndup(i8* %119, i32 %127)
  store i8* %128, i8** %25, align 8
  %129 = load i8*, i8** %25, align 8
  %130 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = load i8*, i8** %25, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @write_tree(i32* %23, i32* %131, %struct.TYPE_12__* %132, i8* %133, i64 %134, i32* %135)
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %24, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %116
  %140 = load i8*, i8** %25, align 8
  %141 = call i32 @git__free(i8* %140)
  br label %196

142:                                              ; preds = %116
  %143 = load i32, i32* %24, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %15, align 8
  br label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %25, align 8
  %148 = call i8* @strrchr(i8* %147, i8 signext 47)
  store i8* %148, i8** %26, align 8
  %149 = load i8*, i8** %26, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i8*, i8** %26, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %26, align 8
  br label %156

154:                                              ; preds = %146
  %155 = load i8*, i8** %25, align 8
  store i8* %155, i8** %26, align 8
  br label %156

156:                                              ; preds = %154, %151
  %157 = load i32*, i32** %14, align 8
  %158 = load i8*, i8** %26, align 8
  %159 = load i32, i32* @S_IFDIR, align 4
  %160 = call i32 @append_entry(i32* %157, i8* %158, i32* %23, i32 %159, i32 1)
  store i32 %160, i32* %17, align 4
  %161 = load i8*, i8** %25, align 8
  %162 = call i32 @git__free(i8* %161)
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %196

166:                                              ; preds = %156
  br label %180

167:                                              ; preds = %111
  %168 = load i32*, i32** %14, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @append_entry(i32* %168, i8* %169, i32* %171, i32 %174, i32 1)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %196

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %15, align 8
  br label %63

184:                                              ; preds = %97, %63
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %14, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i64 @git_treebuilder_write_with_buffer(i32* %185, i32* %186, i32* %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %196

191:                                              ; preds = %184
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @git_treebuilder_free(i32* %192)
  %194 = load i64, i64* %15, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %7, align 4
  br label %199

196:                                              ; preds = %190, %178, %165, %139
  %197 = load i32*, i32** %14, align 8
  %198 = call i32 @git_treebuilder_free(i32* %197)
  store i32 -1, i32* %7, align 4
  br label %199

199:                                              ; preds = %196, %191, %60, %43
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i64 @git_index_entrycount(%struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_10__* @git_tree_cache_get(i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @find_next_dir(i8*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @git_index_get_byindex(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @git__strndup(i8*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @append_entry(i32*, i8*, i32*, i32, i32) #1

declare dso_local i64 @git_treebuilder_write_with_buffer(i32*, i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
