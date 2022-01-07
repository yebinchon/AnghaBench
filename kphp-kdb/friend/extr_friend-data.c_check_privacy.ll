; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_check_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_check_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_PRIVACY_LEN = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@PL_M_CAT = common dso_local global i32 0, align 4
@CAT_FR_ALL = common dso_local global i32 0, align 4
@CAT_FR_FR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_privacy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %3
  store i32 -1, i32* %4, align 4
  br label %221

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 3, i32* %4, align 4
  br label %221

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.TYPE_7__* @get_user(i32 %39)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %8, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %221

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_9__* @privacy_lookup(i32 %47, i32 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %9, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %221

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 255
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %10, align 8
  %66 = load i32, i32* %64, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 255
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MAX_PRIVACY_LEN, align 4
  %72 = icmp sle i32 %70, %71
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i1 [ false, %63 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %77

77:                                               ; preds = %73, %53
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  store i32 0, i32* %14, align 4
  store i32 3, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %86

86:                                               ; preds = %211, %175, %163, %99, %77
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %212

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %90, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %212

96:                                               ; preds = %89
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %86

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @PL_M_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @PL_M_CAT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %205

108:                                              ; preds = %100
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @CAT_FR_ALL, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %212

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @CAT_FR_FR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %164

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call %struct.TYPE_8__* @tree_lookup(i32 %123, i32 %124)
  store %struct.TYPE_8__* %125, %struct.TYPE_8__** %17, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  br label %133

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i32 [ %131, %128 ], [ 0, %132 ]
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %133, %117
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %143

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @is_friends_friend(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %138
  %144 = phi i32 [ 1, %138 ], [ %142, %139 ]
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %212

148:                                              ; preds = %143
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = and i32 %155, 1
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32, i32* %15, align 4
  %161 = and i32 %160, 2
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %159, %148
  br label %163

163:                                              ; preds = %162
  br label %86

164:                                              ; preds = %113
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, 31
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %165, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 -1
  store i32 0, i32* %177, align 4
  br label %86

178:                                              ; preds = %164
  %179 = load i32, i32* %16, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call %struct.TYPE_8__* @tree_lookup(i32 %184, i32 %185)
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** %19, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %188 = icmp ne %struct.TYPE_8__* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  br label %194

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i32 [ %192, %189 ], [ 0, %193 ]
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %194, %178
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, 31
  %200 = ashr i32 %197, %199
  %201 = and i32 %200, 1
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %212

204:                                              ; preds = %196
  br label %211

205:                                              ; preds = %100
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %212

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210, %204
  br label %86

212:                                              ; preds = %209, %203, %147, %112, %95, %86
  %213 = load i32, i32* %12, align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %14, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %215, %212
  %220 = load i32, i32* %14, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %52, %43, %37, %28
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_7__* @get_user(i32) #1

declare dso_local %struct.TYPE_9__* @privacy_lookup(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @tree_lookup(i32, i32) #1

declare dso_local i32 @is_friends_friend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
