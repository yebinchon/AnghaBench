; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_store_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_store_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_entry = type { %struct.TYPE_4__*, %struct.tree_content* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tree_content = type { i32, %struct.tree_entry**, i32 }
%struct.last_object = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.object_entry = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global i32 0, align 4
@NO_DELTA = common dso_local global i32 0, align 4
@pack_id = common dso_local global i64 0, align 8
@old_tree = common dso_local global i32 0, align 4
@new_tree = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_entry*)* @store_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_tree(%struct.tree_entry* %0) #0 {
  %2 = alloca %struct.tree_entry*, align 8
  %3 = alloca %struct.tree_content*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.last_object, align 4
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca %struct.tree_entry*, align 8
  store %struct.tree_entry* %0, %struct.tree_entry** %2, align 8
  %10 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 0
  %11 = load i32, i32* @STRBUF_INIT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 6
  store i32 0, i32* %17, align 4
  store %struct.object_entry* null, %struct.object_entry** %8, align 8
  %18 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %19 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @is_null_oid(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %197

26:                                               ; preds = %1
  %27 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %28 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %27, i32 0, i32 1
  %29 = load %struct.tree_content*, %struct.tree_content** %28, align 8
  %30 = icmp ne %struct.tree_content* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %33 = call i32 @load_tree(%struct.tree_entry* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %36 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %35, i32 0, i32 1
  %37 = load %struct.tree_content*, %struct.tree_content** %36, align 8
  store %struct.tree_content* %37, %struct.tree_content** %3, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %64, %34
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %41 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %46 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %45, i32 0, i32 1
  %47 = load %struct.tree_entry**, %struct.tree_entry*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %47, i64 %49
  %51 = load %struct.tree_entry*, %struct.tree_entry** %50, align 8
  %52 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %51, i32 0, i32 1
  %53 = load %struct.tree_content*, %struct.tree_content** %52, align 8
  %54 = icmp ne %struct.tree_content* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %57 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %56, i32 0, i32 1
  %58 = load %struct.tree_entry**, %struct.tree_entry*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %58, i64 %60
  %62 = load %struct.tree_entry*, %struct.tree_entry** %61, align 8
  call void @store_tree(%struct.tree_entry* %62)
  br label %63

63:                                               ; preds = %55, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %38

67:                                               ; preds = %38
  %68 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %69 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NO_DELTA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %79 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call %struct.object_entry* @find_object(i32* %82)
  store %struct.object_entry* %83, %struct.object_entry** %8, align 8
  br label %84

84:                                               ; preds = %77, %67
  %85 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %86 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISDIR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %84
  %94 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %95 = icmp ne %struct.object_entry* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %98 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @pack_id, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %104 = call i32 @mktree(%struct.tree_content* %103, i32 0, i32* @old_tree)
  %105 = load i32, i32* @old_tree, align 4
  %106 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %108 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %113 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %102, %96, %93, %84
  %117 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %118 = call i32 @mktree(%struct.tree_content* %117, i32 1, i32* @new_tree)
  %119 = load i32, i32* @OBJ_TREE, align 4
  %120 = load %struct.tree_entry*, %struct.tree_entry** %2, align 8
  %121 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @store_object(i32 %119, i32* @new_tree, %struct.last_object* %7, i32* %124, i32 0)
  %126 = getelementptr inbounds %struct.last_object, %struct.last_object* %7, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %129 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %188, %116
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %133 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %130
  %137 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %138 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %137, i32 0, i32 1
  %139 = load %struct.tree_entry**, %struct.tree_entry*** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %139, i64 %141
  %143 = load %struct.tree_entry*, %struct.tree_entry** %142, align 8
  store %struct.tree_entry* %143, %struct.tree_entry** %9, align 8
  %144 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %145 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %136
  %152 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %153 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %159 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %157, i32* %162, align 4
  %163 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %164 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %169 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = call i32 @oidcpy(i32* %167, i32* %172)
  %174 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %175 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %176 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %175, i32 0, i32 1
  %177 = load %struct.tree_entry**, %struct.tree_entry*** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %5, align 4
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %177, i64 %180
  store %struct.tree_entry* %174, %struct.tree_entry** %181, align 8
  br label %187

182:                                              ; preds = %136
  %183 = load %struct.tree_entry*, %struct.tree_entry** %9, align 8
  %184 = call i32 @release_tree_entry(%struct.tree_entry* %183)
  %185 = load i32, i32* %6, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %182, %151
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %4, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %130

191:                                              ; preds = %130
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.tree_content*, %struct.tree_content** %3, align 8
  %194 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %25
  ret void
}

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @load_tree(%struct.tree_entry*) #1

declare dso_local %struct.object_entry* @find_object(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mktree(%struct.tree_content*, i32, i32*) #1

declare dso_local i32 @store_object(i32, i32*, %struct.last_object*, i32*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @release_tree_entry(%struct.tree_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
