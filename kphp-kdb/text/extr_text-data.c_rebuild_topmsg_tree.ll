; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_rebuild_topmsg_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_rebuild_topmsg_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32 }

@UserHdr = common dso_local global %struct.TYPE_11__* null, align 8
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rebuild_topmsg_tree(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_8__* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %142

19:                                               ; preds = %6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32* @rebuild_topmsg_tree(%struct.TYPE_9__* %22, i32* %23, i32* %24, i32 %28, %struct.TYPE_8__* %29, i8* %30)
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ult i32* %39, %40
  br i1 %41, label %42, label %110

42:                                               ; preds = %19
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %42
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = ashr i32 %57, 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %50
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %75, %78
  br label %80

80:                                               ; preds = %72, %64, %50
  %81 = phi i1 [ false, %64 ], [ false, %50 ], [ %79, %72 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i8*, i8** %12, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = bitcast i8* %89 to i32*
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  br label %105

104:                                              ; preds = %80
  br label %105

105:                                              ; preds = %104, %95
  %106 = phi i32 [ %103, %95 ], [ 0, %104 ]
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32* %109, i32** %8, align 8
  br label %114

110:                                              ; preds = %42, %19
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 0, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = call i32 @listree_get_kth_last(%struct.TYPE_10__* %14, i32 0)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i32, i32* %15, align 4
  %120 = icmp sgt i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 (...) @lrand48()
  %128 = load i32, i32* %13, align 4
  %129 = call i8* @tree_num_insert(i8* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %118, %114
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = call i32* @rebuild_topmsg_tree(%struct.TYPE_9__* %135, i32* %136, i32* %137, i32 %138, %struct.TYPE_8__* %139, i8* %140)
  store i32* %141, i32** %8, align 8
  br label %142

142:                                              ; preds = %132, %6
  br label %143

143:                                              ; preds = %237, %142
  %144 = load i32*, i32** %8, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = icmp ult i32* %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp sle i32 %150, %151
  br label %153

153:                                              ; preds = %147, %143
  %154 = phi i1 [ false, %143 ], [ %152, %147 ]
  br i1 %154, label %155, label %238

155:                                              ; preds = %153
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* @NIL, align 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i32 %159, i32* %160, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %163, %166
  %168 = ashr i32 %167, 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %155
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp sle i32 %177, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** @UserHdr, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %185, %188
  br label %190

190:                                              ; preds = %182, %174, %155
  %191 = phi i1 [ false, %174 ], [ false, %155 ], [ %189, %182 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i8*, i8** %12, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = bitcast i8* %199 to i32*
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* %200, i32** %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %190
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %212, align 4
  br label %215

214:                                              ; preds = %190
  br label %215

215:                                              ; preds = %214, %205
  %216 = phi i32 [ %213, %205 ], [ 0, %214 ]
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 %216, i32* %217, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  store i32* %219, i32** %8, align 8
  %220 = call i32 @listree_get_kth_last(%struct.TYPE_10__* %14, i32 0)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, -1
  br i1 %222, label %223, label %237

223:                                              ; preds = %215
  %224 = load i32, i32* %16, align 4
  %225 = icmp sgt i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = call i32 (...) @lrand48()
  %233 = load i32, i32* %13, align 4
  %234 = call i8* @tree_num_insert(i8* %230, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %223, %215
  br label %143

238:                                              ; preds = %153
  %239 = load i32*, i32** %8, align 8
  ret i32* %239
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listree_get_kth_last(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @tree_num_insert(i8*, i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
