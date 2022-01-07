; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__removing_and_re_adding_in_treebuilder.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__removing_and_re_adding_in_treebuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@blob_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@_entries = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"apple_after\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"before_last\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"apple_extra\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".first\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aardvark\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__removing_and_re_adding_in_treebuilder() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = load i32, i32* @blob_oid, align 4
  %13 = call i32 @git_oid_fromstr(i32* %8, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @git_treebuilder_new(i32** %1, i32 %15, i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @git_treebuilder_entrycount(i32* %18)
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cl_assert_equal_i(i32 0, i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %46, %0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_entries, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %22
  %31 = load i32*, i32** %1, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_entries, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_entries, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @git_treebuilder_insert(i32* null, i32* %31, i8* %37, i32* %8, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i32*, i32** %1, align 8
  %51 = call i64 @git_treebuilder_entrycount(i32* %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 @cl_assert_equal_i(i32 6, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_treebuilder_remove(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @git_treebuilder_entrycount(i32* %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 @cl_assert_equal_i(i32 5, i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @git_treebuilder_remove(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @git_treebuilder_entrycount(i32* %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @cl_assert_equal_i(i32 4, i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %70 = call i32 @git_treebuilder_insert(i32* null, i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i64 @git_treebuilder_entrycount(i32* %72)
  %74 = trunc i64 %73 to i32
  %75 = call i32 @cl_assert_equal_i(i32 5, i32 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %78 = call i32 @git_treebuilder_insert(i32* null, i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i64 @git_treebuilder_entrycount(i32* %80)
  %82 = trunc i64 %81 to i32
  %83 = call i32 @cl_assert_equal_i(i32 6, i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @git_treebuilder_remove(i32* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i64 @git_treebuilder_entrycount(i32* %87)
  %89 = trunc i64 %88 to i32
  %90 = call i32 @cl_assert_equal_i(i32 5, i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %93 = call i32 @git_treebuilder_insert(i32* null, i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32 %92)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i64 @git_treebuilder_entrycount(i32* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @cl_assert_equal_i(i32 6, i32 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %101 = call i32 @git_treebuilder_insert(i32* null, i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32 %100)
  %102 = call i32 @cl_git_pass(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i64 @git_treebuilder_entrycount(i32* %103)
  %105 = trunc i64 %104 to i32
  %106 = call i32 @cl_assert_equal_i(i32 7, i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @git_treebuilder_write(i32* %9, i32* %107)
  %109 = call i32 @cl_git_pass(i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @git_treebuilder_free(i32* %110)
  %112 = load i32, i32* @g_repo, align 4
  %113 = call i32 @git_tree_lookup(i32** %10, i32 %112, i32* %9)
  %114 = call i32 @cl_git_pass(i32 %113)
  %115 = load i32*, i32** %10, align 8
  %116 = call i64 @git_tree_entrycount(i32* %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @cl_assert_equal_i(i32 7, i32 %117)
  %119 = load i32*, i32** %10, align 8
  %120 = call i32* @git_tree_entry_byname(i32* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @cl_assert(i32 %122)
  %124 = load i32*, i32** %10, align 8
  %125 = call i32* @git_tree_entry_byname(i32* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %126 = icmp eq i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @cl_assert(i32 %127)
  %129 = load i32*, i32** %10, align 8
  %130 = call i32* @git_tree_entry_byname(i32* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @cl_assert(i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = call i32* @git_tree_entry_byname(i32* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i32* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @cl_assert(i32 %137)
  %139 = load i32*, i32** %10, align 8
  %140 = call i32* @git_tree_entry_byname(i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %141 = icmp ne i32* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @cl_assert(i32 %142)
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %195, %49
  %145 = load i32, i32* %2, align 4
  %146 = icmp slt i32 %145, 7
  br i1 %146, label %147, label %198

147:                                              ; preds = %144
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %2, align 4
  %150 = call %struct.TYPE_4__* @git_tree_entry_byindex(i32* %148, i32 %149)
  store %struct.TYPE_4__* %150, %struct.TYPE_4__** %11, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strcmp(i32 %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %2, align 4
  store i32 %157, i32* %3, align 4
  br label %194

158:                                              ; preds = %147
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @strcmp(i32 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %2, align 4
  store i32 %165, i32* %4, align 4
  br label %193

166:                                              ; preds = %158
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @strcmp(i32 %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %2, align 4
  store i32 %173, i32* %5, align 4
  br label %192

174:                                              ; preds = %166
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @strcmp(i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %2, align 4
  store i32 %181, i32* %6, align 4
  br label %191

182:                                              ; preds = %174
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @strcmp(i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %2, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %188, %182
  br label %191

191:                                              ; preds = %190, %180
  br label %192

192:                                              ; preds = %191, %172
  br label %193

193:                                              ; preds = %192, %164
  br label %194

194:                                              ; preds = %193, %156
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %2, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %2, align 4
  br label %144

198:                                              ; preds = %144
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @cl_assert_equal_i(i32 -1, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @cl_assert_equal_i(i32 6, i32 %201)
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @cl_assert(i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @cl_assert(i32 %211)
  %213 = load i32*, i32** %10, align 8
  %214 = call i32 @git_tree_free(i32* %213)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_treebuilder_entrycount(i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_treebuilder_remove(i32*, i8*) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_tree_entry_byname(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @git_tree_entry_byindex(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
