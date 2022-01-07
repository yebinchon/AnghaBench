; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_free_glog.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_free_glog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @free_glog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_glog(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 21
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 21
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @free(%struct.TYPE_4__* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 20
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 20
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @free(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 18
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 18
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @free(%struct.TYPE_4__* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 17
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 17
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_4__* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 16
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 16
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 15
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 15
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 14
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 14
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @free(%struct.TYPE_4__* %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 13
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 13
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @free(%struct.TYPE_4__* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 12
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_4__* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 11
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp ne %struct.TYPE_4__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 11
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = call i32 @free(%struct.TYPE_4__* %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 10
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = call i32 @free(%struct.TYPE_4__* %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 9
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = icmp ne %struct.TYPE_4__* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = call i32 @free(%struct.TYPE_4__* %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = icmp ne %struct.TYPE_4__* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = call i32 @free(%struct.TYPE_4__* %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 7
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = icmp ne %struct.TYPE_4__* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = call i32 @free(%struct.TYPE_4__* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = icmp ne %struct.TYPE_4__* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = call i32 @free(%struct.TYPE_4__* %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = call i32 @free(%struct.TYPE_4__* %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = icmp ne %struct.TYPE_4__* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = call i32 @free(%struct.TYPE_4__* %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = icmp ne %struct.TYPE_4__* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = call i32 @free(%struct.TYPE_4__* %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = icmp ne %struct.TYPE_4__* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = call i32 @free(%struct.TYPE_4__* %200)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = icmp ne %struct.TYPE_4__* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = call i32 @free(%struct.TYPE_4__* %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = icmp ne %struct.TYPE_4__* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = call i32 @free(%struct.TYPE_4__* %220)
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %224 = call i32 @free(%struct.TYPE_4__* %223)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
